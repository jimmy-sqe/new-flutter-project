import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared/shared.dart';

mixin EventTransformerMixin {
  EventTransformer<E> log<E>() {
    return (events, mapper) => events.flatMap(mapper);
  }

  EventTransformer<E> throttleTime<E>({
    Duration duration = DurationConstants.defaultThrottleTimeDuration,
  }) {
    return (events, mapper) =>
        events.throttleTime(duration).flatMap(mapper);
  }

  EventTransformer<E> debounceTime<E>({
    Duration duration = DurationConstants.defaultDebounceTimeDuration,
  }) {
    return (events, mapper) =>
        events.debounceTime(duration).flatMap(mapper);
  }

  EventTransformer<E> distinct<E>() {
    return (events, mapper) => events.distinct().flatMap(mapper);
  }

  EventTransformer<E> exhaustMap<E>() {
    return (events, mapper) => events.exhaustMap(mapper);
  }

  EventTransformer<E> switchMapTransformer<E>() {
    return (events, mapper) => events.switchMap(mapper);
  }
}
