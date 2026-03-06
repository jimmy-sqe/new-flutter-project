import 'dart:async';

import 'package:flutter/foundation.dart';

abstract class Disposable {
  void dispose();
}

class DisposeBag {
  final List<StreamSubscription<dynamic>> _subscriptions = [];
  final List<StreamController<dynamic>> _controllers = [];
  final List<ChangeNotifier> _changeNotifiers = [];
  final List<Disposable> _disposables = [];

  void addSubscription(StreamSubscription<dynamic> subscription) {
    _subscriptions.add(subscription);
  }

  void addController(StreamController<dynamic> controller) {
    _controllers.add(controller);
  }

  void addChangeNotifier(ChangeNotifier changeNotifier) {
    _changeNotifiers.add(changeNotifier);
  }

  void addDisposable(Disposable disposable) {
    _disposables.add(disposable);
  }

  Future<void> dispose() async {
    for (final subscription in _subscriptions) {
      await subscription.cancel();
    }
    for (final controller in _controllers) {
      await controller.close();
    }
    for (final changeNotifier in _changeNotifiers) {
      changeNotifier.dispose();
    }
    for (final disposable in _disposables) {
      disposable.dispose();
    }

    _subscriptions.clear();
    _controllers.clear();
    _changeNotifiers.clear();
    _disposables.clear();
  }
}

extension StreamSubscriptionDisposeBagExtension on StreamSubscription<dynamic> {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addSubscription(this);
  }
}

extension StreamControllerDisposeBagExtension on StreamController<dynamic> {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addController(this);
  }
}
