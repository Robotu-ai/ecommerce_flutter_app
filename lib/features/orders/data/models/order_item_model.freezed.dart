// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderItemModel {
  String get id; // sellerProductId
  String get sellerProductId;
  String get nameSnap;
  num get unitPriceSnap;
  num get quantity;
  UnitType get unitType;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderItemModelCopyWith<OrderItemModel> get copyWith =>
      _$OrderItemModelCopyWithImpl<OrderItemModel>(
          this as OrderItemModel, _$identity);

  /// Serializes this OrderItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerProductId, sellerProductId) ||
                other.sellerProductId == sellerProductId) &&
            (identical(other.nameSnap, nameSnap) ||
                other.nameSnap == nameSnap) &&
            (identical(other.unitPriceSnap, unitPriceSnap) ||
                other.unitPriceSnap == unitPriceSnap) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sellerProductId, nameSnap,
      unitPriceSnap, quantity, unitType);

  @override
  String toString() {
    return 'OrderItemModel(id: $id, sellerProductId: $sellerProductId, nameSnap: $nameSnap, unitPriceSnap: $unitPriceSnap, quantity: $quantity, unitType: $unitType)';
  }
}

/// @nodoc
abstract mixin class $OrderItemModelCopyWith<$Res> {
  factory $OrderItemModelCopyWith(
          OrderItemModel value, $Res Function(OrderItemModel) _then) =
      _$OrderItemModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String sellerProductId,
      String nameSnap,
      num unitPriceSnap,
      num quantity,
      UnitType unitType});
}

/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._self, this._then);

  final OrderItemModel _self;
  final $Res Function(OrderItemModel) _then;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerProductId = null,
    Object? nameSnap = null,
    Object? unitPriceSnap = null,
    Object? quantity = null,
    Object? unitType = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerProductId: null == sellerProductId
          ? _self.sellerProductId
          : sellerProductId // ignore: cast_nullable_to_non_nullable
              as String,
      nameSnap: null == nameSnap
          ? _self.nameSnap
          : nameSnap // ignore: cast_nullable_to_non_nullable
              as String,
      unitPriceSnap: null == unitPriceSnap
          ? _self.unitPriceSnap
          : unitPriceSnap // ignore: cast_nullable_to_non_nullable
              as num,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
      unitType: null == unitType
          ? _self.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderItemModel].
extension OrderItemModelPatterns on OrderItemModel {
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
    TResult Function(_OrderItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
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
    TResult Function(_OrderItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel():
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
    TResult? Function(_OrderItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
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
    TResult Function(String id, String sellerProductId, String nameSnap,
            num unitPriceSnap, num quantity, UnitType unitType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
        return $default(_that.id, _that.sellerProductId, _that.nameSnap,
            _that.unitPriceSnap, _that.quantity, _that.unitType);
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
    TResult Function(String id, String sellerProductId, String nameSnap,
            num unitPriceSnap, num quantity, UnitType unitType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel():
        return $default(_that.id, _that.sellerProductId, _that.nameSnap,
            _that.unitPriceSnap, _that.quantity, _that.unitType);
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
    TResult? Function(String id, String sellerProductId, String nameSnap,
            num unitPriceSnap, num quantity, UnitType unitType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
        return $default(_that.id, _that.sellerProductId, _that.nameSnap,
            _that.unitPriceSnap, _that.quantity, _that.unitType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderItemModel extends OrderItemModel {
  const _OrderItemModel(
      {required this.id,
      required this.sellerProductId,
      required this.nameSnap,
      required this.unitPriceSnap,
      required this.quantity,
      required this.unitType})
      : super._();
  factory _OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  @override
  final String id;
// sellerProductId
  @override
  final String sellerProductId;
  @override
  final String nameSnap;
  @override
  final num unitPriceSnap;
  @override
  final num quantity;
  @override
  final UnitType unitType;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderItemModelCopyWith<_OrderItemModel> get copyWith =>
      __$OrderItemModelCopyWithImpl<_OrderItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerProductId, sellerProductId) ||
                other.sellerProductId == sellerProductId) &&
            (identical(other.nameSnap, nameSnap) ||
                other.nameSnap == nameSnap) &&
            (identical(other.unitPriceSnap, unitPriceSnap) ||
                other.unitPriceSnap == unitPriceSnap) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sellerProductId, nameSnap,
      unitPriceSnap, quantity, unitType);

  @override
  String toString() {
    return 'OrderItemModel(id: $id, sellerProductId: $sellerProductId, nameSnap: $nameSnap, unitPriceSnap: $unitPriceSnap, quantity: $quantity, unitType: $unitType)';
  }
}

/// @nodoc
abstract mixin class _$OrderItemModelCopyWith<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  factory _$OrderItemModelCopyWith(
          _OrderItemModel value, $Res Function(_OrderItemModel) _then) =
      __$OrderItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String sellerProductId,
      String nameSnap,
      num unitPriceSnap,
      num quantity,
      UnitType unitType});
}

/// @nodoc
class __$OrderItemModelCopyWithImpl<$Res>
    implements _$OrderItemModelCopyWith<$Res> {
  __$OrderItemModelCopyWithImpl(this._self, this._then);

  final _OrderItemModel _self;
  final $Res Function(_OrderItemModel) _then;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sellerProductId = null,
    Object? nameSnap = null,
    Object? unitPriceSnap = null,
    Object? quantity = null,
    Object? unitType = null,
  }) {
    return _then(_OrderItemModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerProductId: null == sellerProductId
          ? _self.sellerProductId
          : sellerProductId // ignore: cast_nullable_to_non_nullable
              as String,
      nameSnap: null == nameSnap
          ? _self.nameSnap
          : nameSnap // ignore: cast_nullable_to_non_nullable
              as String,
      unitPriceSnap: null == unitPriceSnap
          ? _self.unitPriceSnap
          : unitPriceSnap // ignore: cast_nullable_to_non_nullable
              as num,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num,
      unitType: null == unitType
          ? _self.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType,
    ));
  }
}

// dart format on
