// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartModel {
  String get id; // ${userId}_<status>
  String get userId;
  String get zoneId;
  CartStatus get status;
  @TimestampConverter()
  Timestamp get createdAt;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<CartModel> get copyWith =>
      _$CartModelCopyWithImpl<CartModel>(this as CartModel, _$identity);

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CartModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, zoneId, status, createdAt);

  @override
  String toString() {
    return 'CartModel(id: $id, userId: $userId, zoneId: $zoneId, status: $status, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) _then) =
      _$CartModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String zoneId,
      CartStatus status,
      @TimestampConverter() Timestamp createdAt});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res> implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._self, this._then);

  final CartModel _self;
  final $Res Function(CartModel) _then;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? zoneId = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      zoneId: null == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// Adds pattern-matching-related methods to [CartModel].
extension CartModelPatterns on CartModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CartModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CartModel():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CartModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CartModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String userId, String zoneId, CartStatus status,
            @TimestampConverter() Timestamp createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CartModel() when $default != null:
        return $default(_that.id, _that.userId, _that.zoneId, _that.status,
            _that.createdAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String userId, String zoneId, CartStatus status,
            @TimestampConverter() Timestamp createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CartModel():
        return $default(_that.id, _that.userId, _that.zoneId, _that.status,
            _that.createdAt);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String userId, String zoneId,
            CartStatus status, @TimestampConverter() Timestamp createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CartModel() when $default != null:
        return $default(_that.id, _that.userId, _that.zoneId, _that.status,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CartModel extends CartModel {
  const _CartModel(
      {required this.id,
      required this.userId,
      required this.zoneId,
      required this.status,
      @TimestampConverter() required this.createdAt})
      : super._();
  factory _CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);

  @override
  final String id;
// ${userId}_<status>
  @override
  final String userId;
  @override
  final String zoneId;
  @override
  final CartStatus status;
  @override
  @TimestampConverter()
  final Timestamp createdAt;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CartModelCopyWith<_CartModel> get copyWith =>
      __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CartModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, zoneId, status, createdAt);

  @override
  String toString() {
    return 'CartModel(id: $id, userId: $userId, zoneId: $zoneId, status: $status, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$CartModelCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(
          _CartModel value, $Res Function(_CartModel) _then) =
      __$CartModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String zoneId,
      CartStatus status,
      @TimestampConverter() Timestamp createdAt});
}

/// @nodoc
class __$CartModelCopyWithImpl<$Res> implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(this._self, this._then);

  final _CartModel _self;
  final $Res Function(_CartModel) _then;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? zoneId = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_CartModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      zoneId: null == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

// dart format on
