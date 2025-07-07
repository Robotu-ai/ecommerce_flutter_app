// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suborder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuborderModel {
  String get id; // sellerId
  String get sellerId;
  SuborderStatus get status;
  num get subtotal;
  num get shippingCost;
  @TimestampConverter()
  Timestamp get createdAt;

  /// Create a copy of SuborderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuborderModelCopyWith<SuborderModel> get copyWith =>
      _$SuborderModelCopyWithImpl<SuborderModel>(
          this as SuborderModel, _$identity);

  /// Serializes this SuborderModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuborderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, sellerId, status, subtotal, shippingCost, createdAt);

  @override
  String toString() {
    return 'SuborderModel(id: $id, sellerId: $sellerId, status: $status, subtotal: $subtotal, shippingCost: $shippingCost, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $SuborderModelCopyWith<$Res> {
  factory $SuborderModelCopyWith(
          SuborderModel value, $Res Function(SuborderModel) _then) =
      _$SuborderModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String sellerId,
      SuborderStatus status,
      num subtotal,
      num shippingCost,
      @TimestampConverter() Timestamp createdAt});
}

/// @nodoc
class _$SuborderModelCopyWithImpl<$Res>
    implements $SuborderModelCopyWith<$Res> {
  _$SuborderModelCopyWithImpl(this._self, this._then);

  final SuborderModel _self;
  final $Res Function(SuborderModel) _then;

  /// Create a copy of SuborderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerId = null,
    Object? status = null,
    Object? subtotal = null,
    Object? shippingCost = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _self.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SuborderStatus,
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num,
      shippingCost: null == shippingCost
          ? _self.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as num,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// Adds pattern-matching-related methods to [SuborderModel].
extension SuborderModelPatterns on SuborderModel {
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
    TResult Function(_SuborderModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuborderModel() when $default != null:
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
    TResult Function(_SuborderModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuborderModel():
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
    TResult? Function(_SuborderModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuborderModel() when $default != null:
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
    TResult Function(
            String id,
            String sellerId,
            SuborderStatus status,
            num subtotal,
            num shippingCost,
            @TimestampConverter() Timestamp createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuborderModel() when $default != null:
        return $default(_that.id, _that.sellerId, _that.status, _that.subtotal,
            _that.shippingCost, _that.createdAt);
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
    TResult Function(
            String id,
            String sellerId,
            SuborderStatus status,
            num subtotal,
            num shippingCost,
            @TimestampConverter() Timestamp createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuborderModel():
        return $default(_that.id, _that.sellerId, _that.status, _that.subtotal,
            _that.shippingCost, _that.createdAt);
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
    TResult? Function(
            String id,
            String sellerId,
            SuborderStatus status,
            num subtotal,
            num shippingCost,
            @TimestampConverter() Timestamp createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuborderModel() when $default != null:
        return $default(_that.id, _that.sellerId, _that.status, _that.subtotal,
            _that.shippingCost, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SuborderModel extends SuborderModel {
  const _SuborderModel(
      {required this.id,
      required this.sellerId,
      required this.status,
      required this.subtotal,
      required this.shippingCost,
      @TimestampConverter() required this.createdAt})
      : super._();
  factory _SuborderModel.fromJson(Map<String, dynamic> json) =>
      _$SuborderModelFromJson(json);

  @override
  final String id;
// sellerId
  @override
  final String sellerId;
  @override
  final SuborderStatus status;
  @override
  final num subtotal;
  @override
  final num shippingCost;
  @override
  @TimestampConverter()
  final Timestamp createdAt;

  /// Create a copy of SuborderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuborderModelCopyWith<_SuborderModel> get copyWith =>
      __$SuborderModelCopyWithImpl<_SuborderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuborderModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuborderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, sellerId, status, subtotal, shippingCost, createdAt);

  @override
  String toString() {
    return 'SuborderModel(id: $id, sellerId: $sellerId, status: $status, subtotal: $subtotal, shippingCost: $shippingCost, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$SuborderModelCopyWith<$Res>
    implements $SuborderModelCopyWith<$Res> {
  factory _$SuborderModelCopyWith(
          _SuborderModel value, $Res Function(_SuborderModel) _then) =
      __$SuborderModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String sellerId,
      SuborderStatus status,
      num subtotal,
      num shippingCost,
      @TimestampConverter() Timestamp createdAt});
}

/// @nodoc
class __$SuborderModelCopyWithImpl<$Res>
    implements _$SuborderModelCopyWith<$Res> {
  __$SuborderModelCopyWithImpl(this._self, this._then);

  final _SuborderModel _self;
  final $Res Function(_SuborderModel) _then;

  /// Create a copy of SuborderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sellerId = null,
    Object? status = null,
    Object? subtotal = null,
    Object? shippingCost = null,
    Object? createdAt = null,
  }) {
    return _then(_SuborderModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _self.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SuborderStatus,
      subtotal: null == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num,
      shippingCost: null == shippingCost
          ? _self.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as num,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

// dart format on
