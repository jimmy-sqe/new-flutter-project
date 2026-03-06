// GENERATED CODE - DO NOT MODIFY BY HAND
// This is a placeholder that will be replaced by intl_utils:generate
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. '
      'Try to initialize the S delegate before accessing S.current.',
    );

    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. '
      'Did you add S.delegate in localizationsDelegates?',
    );

    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get appName => Intl.message('New Flutter App', name: 'appName');
  String get login => Intl.message('Login', name: 'login');
  String get logout => Intl.message('Log Out', name: 'logout');
  String get email => Intl.message('Email Address', name: 'email');
  String get password => Intl.message('Password', name: 'password');
  String get loginButton => Intl.message('Sign In', name: 'loginButton');
  String get home => Intl.message('Home', name: 'home');
  String get welcome => Intl.message('Welcome', name: 'welcome');
  String get welcomeMessage =>
      Intl.message('Welcome to New Flutter App!', name: 'welcomeMessage');
  String get noInternetException =>
      Intl.message('No internet connection', name: 'noInternetException');
  String get unknownException =>
      Intl.message('Something went wrong', name: 'unknownException');
  String get timeoutException =>
      Intl.message('Connection timeout', name: 'timeoutException');
  String get tokenExpired =>
      Intl.message(
        'Session expired, please login again',
        name: 'tokenExpired',
      );
  String get invalidEmail =>
      Intl.message('Invalid email address', name: 'invalidEmail');
  String get invalidPassword =>
      Intl.message(
        'Password must be at least 6 characters',
        name: 'invalidPassword',
      );
  String get emptyEmail =>
      Intl.message('Email is required', name: 'emptyEmail');
  String get parseException =>
      Intl.message('Unable to parse data', name: 'parseException');
  String get cancellationException =>
      Intl.message('Request cancelled', name: 'cancellationException');
  String get retry => Intl.message('Retry', name: 'retry');
  String get ok => Intl.message('OK', name: 'ok');
  String get cancel => Intl.message('Cancel', name: 'cancel');
}

Future<void> initializeMessages(String localeName) async {}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales => const [Locale('en')];

  @override
  bool isSupported(Locale locale) =>
      supportedLocales.map((e) => e.languageCode).contains(locale.languageCode);

  @override
  Future<S> load(Locale locale) => S.load(locale);

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}
