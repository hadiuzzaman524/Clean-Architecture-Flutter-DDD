import 'package:dartz/dartz.dart';
import 'errors.dart';
import 'failures.dart';

abstract class ValueObjects<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObjects();

  bool get isValid => value.isRight();

  T getOrCrash() {
    return value.fold((l) => throw UnexpectedValueError(l), (r) => r);
  }

  @override
  String toString() {
    return 'ValueObjects{ $value}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObjects<T> && value == other.value;

  @override
  int get hashCode => 0;
}

class UniqueId extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const UniqueId._(this.value);

  factory UniqueId() {
    return UniqueId._(right("hello"));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }
}
