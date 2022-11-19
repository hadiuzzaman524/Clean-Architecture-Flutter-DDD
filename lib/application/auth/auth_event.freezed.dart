// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckedRequest,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckedRequest,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckedRequest,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckedRequest value) authCheckedRequest,
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckedRequest value)? authCheckedRequest,
    TResult? Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckedRequest value)? authCheckedRequest,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthCheckedRequestCopyWith<$Res> {
  factory _$$AuthCheckedRequestCopyWith(_$AuthCheckedRequest value,
          $Res Function(_$AuthCheckedRequest) then) =
      __$$AuthCheckedRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckedRequestCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckedRequest>
    implements _$$AuthCheckedRequestCopyWith<$Res> {
  __$$AuthCheckedRequestCopyWithImpl(
      _$AuthCheckedRequest _value, $Res Function(_$AuthCheckedRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckedRequest implements AuthCheckedRequest {
  const _$AuthCheckedRequest();

  @override
  String toString() {
    return 'AuthEvent.authCheckedRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckedRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckedRequest,
    required TResult Function() signOut,
  }) {
    return authCheckedRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckedRequest,
    TResult? Function()? signOut,
  }) {
    return authCheckedRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckedRequest,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (authCheckedRequest != null) {
      return authCheckedRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckedRequest value) authCheckedRequest,
    required TResult Function(SignOut value) signOut,
  }) {
    return authCheckedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckedRequest value)? authCheckedRequest,
    TResult? Function(SignOut value)? signOut,
  }) {
    return authCheckedRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckedRequest value)? authCheckedRequest,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (authCheckedRequest != null) {
      return authCheckedRequest(this);
    }
    return orElse();
  }
}

abstract class AuthCheckedRequest implements AuthEvent {
  const factory AuthCheckedRequest() = _$AuthCheckedRequest;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOut>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckedRequest,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckedRequest,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckedRequest,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCheckedRequest value) authCheckedRequest,
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCheckedRequest value)? authCheckedRequest,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCheckedRequest value)? authCheckedRequest,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOut;
}
