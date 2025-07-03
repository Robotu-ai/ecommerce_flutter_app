// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellerProductModel {
  String get id; // sellerProductId
  String? get productRefId;
  String get name;
  UnitType get unitType;
  num get unitQuantity;
  num get inventoryCurrent;
  List<String> get availableZones;
  num get price;
  String get currency;
  bool get active;
  @TimestampConverter()
  Timestamp get updatedAt;

  /// Create a copy of SellerProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SellerProductModelCopyWith<SellerProductModel> get copyWith =>
      _$SellerProductModelCopyWithImpl<SellerProductModel>(
          this as SellerProductModel, _$identity);

  /// Serializes this SellerProductModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SellerProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productRefId, productRefId) ||
                other.productRefId == productRefId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.unitQuantity, unitQuantity) ||
                other.unitQuantity == unitQuantity) &&
            (identical(other.inventoryCurrent, inventoryCurrent) ||
                other.inventoryCurrent == inventoryCurrent) &&
            const DeepCollectionEquality()
                .equals(other.availableZones, availableZones) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productRefId,
      name,
      unitType,
      unitQuantity,
      inventoryCurrent,
      const DeepCollectionEquality().hash(availableZones),
      price,
      currency,
      active,
      updatedAt);

  @override
  String toString() {
    return 'SellerProductModel(id: $id, productRefId: $productRefId, name: $name, unitType: $unitType, unitQuantity: $unitQuantity, inventoryCurrent: $inventoryCurrent, availableZones: $availableZones, price: $price, currency: $currency, active: $active, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $SellerProductModelCopyWith<$Res> {
  factory $SellerProductModelCopyWith(
          SellerProductModel value, $Res Function(SellerProductModel) _then) =
      _$SellerProductModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? productRefId,
      String name,
      UnitType unitType,
      num unitQuantity,
      num inventoryCurrent,
      List<String> availableZones,
      num price,
      String currency,
      bool active,
      @TimestampConverter() Timestamp updatedAt});
}

/// @nodoc
class _$SellerProductModelCopyWithImpl<$Res>
    implements $SellerProductModelCopyWith<$Res> {
  _$SellerProductModelCopyWithImpl(this._self, this._then);

  final SellerProductModel _self;
  final $Res Function(SellerProductModel) _then;

  /// Create a copy of SellerProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productRefId = freezed,
    Object? name = null,
    Object? unitType = null,
    Object? unitQuantity = null,
    Object? inventoryCurrent = null,
    Object? availableZones = null,
    Object? price = null,
    Object? currency = null,
    Object? active = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productRefId: freezed == productRefId
          ? _self.productRefId
          : productRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: null == unitType
          ? _self.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType,
      unitQuantity: null == unitQuantity
          ? _self.unitQuantity
          : unitQuantity // ignore: cast_nullable_to_non_nullable
              as num,
      inventoryCurrent: null == inventoryCurrent
          ? _self.inventoryCurrent
          : inventoryCurrent // ignore: cast_nullable_to_non_nullable
              as num,
      availableZones: null == availableZones
          ? _self.availableZones
          : availableZones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// Adds pattern-matching-related methods to [SellerProductModel].
extension SellerProductModelPatterns on SellerProductModel {
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
    TResult Function(_SellerProductModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellerProductModel() when $default != null:
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
    TResult Function(_SellerProductModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerProductModel():
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
    TResult? Function(_SellerProductModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerProductModel() when $default != null:
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
            String? productRefId,
            String name,
            UnitType unitType,
            num unitQuantity,
            num inventoryCurrent,
            List<String> availableZones,
            num price,
            String currency,
            bool active,
            @TimestampConverter() Timestamp updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellerProductModel() when $default != null:
        return $default(
            _that.id,
            _that.productRefId,
            _that.name,
            _that.unitType,
            _that.unitQuantity,
            _that.inventoryCurrent,
            _that.availableZones,
            _that.price,
            _that.currency,
            _that.active,
            _that.updatedAt);
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
            String? productRefId,
            String name,
            UnitType unitType,
            num unitQuantity,
            num inventoryCurrent,
            List<String> availableZones,
            num price,
            String currency,
            bool active,
            @TimestampConverter() Timestamp updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerProductModel():
        return $default(
            _that.id,
            _that.productRefId,
            _that.name,
            _that.unitType,
            _that.unitQuantity,
            _that.inventoryCurrent,
            _that.availableZones,
            _that.price,
            _that.currency,
            _that.active,
            _that.updatedAt);
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
            String? productRefId,
            String name,
            UnitType unitType,
            num unitQuantity,
            num inventoryCurrent,
            List<String> availableZones,
            num price,
            String currency,
            bool active,
            @TimestampConverter() Timestamp updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerProductModel() when $default != null:
        return $default(
            _that.id,
            _that.productRefId,
            _that.name,
            _that.unitType,
            _that.unitQuantity,
            _that.inventoryCurrent,
            _that.availableZones,
            _that.price,
            _that.currency,
            _that.active,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SellerProductModel extends SellerProductModel {
  const _SellerProductModel(
      {required this.id,
      this.productRefId,
      required this.name,
      required this.unitType,
      required this.unitQuantity,
      required this.inventoryCurrent,
      required final List<String> availableZones,
      required this.price,
      required this.currency,
      required this.active,
      @TimestampConverter() required this.updatedAt})
      : _availableZones = availableZones,
        super._();
  factory _SellerProductModel.fromJson(Map<String, dynamic> json) =>
      _$SellerProductModelFromJson(json);

  @override
  final String id;
// sellerProductId
  @override
  final String? productRefId;
  @override
  final String name;
  @override
  final UnitType unitType;
  @override
  final num unitQuantity;
  @override
  final num inventoryCurrent;
  final List<String> _availableZones;
  @override
  List<String> get availableZones {
    if (_availableZones is EqualUnmodifiableListView) return _availableZones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableZones);
  }

  @override
  final num price;
  @override
  final String currency;
  @override
  final bool active;
  @override
  @TimestampConverter()
  final Timestamp updatedAt;

  /// Create a copy of SellerProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SellerProductModelCopyWith<_SellerProductModel> get copyWith =>
      __$SellerProductModelCopyWithImpl<_SellerProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SellerProductModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SellerProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productRefId, productRefId) ||
                other.productRefId == productRefId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.unitQuantity, unitQuantity) ||
                other.unitQuantity == unitQuantity) &&
            (identical(other.inventoryCurrent, inventoryCurrent) ||
                other.inventoryCurrent == inventoryCurrent) &&
            const DeepCollectionEquality()
                .equals(other._availableZones, _availableZones) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productRefId,
      name,
      unitType,
      unitQuantity,
      inventoryCurrent,
      const DeepCollectionEquality().hash(_availableZones),
      price,
      currency,
      active,
      updatedAt);

  @override
  String toString() {
    return 'SellerProductModel(id: $id, productRefId: $productRefId, name: $name, unitType: $unitType, unitQuantity: $unitQuantity, inventoryCurrent: $inventoryCurrent, availableZones: $availableZones, price: $price, currency: $currency, active: $active, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$SellerProductModelCopyWith<$Res>
    implements $SellerProductModelCopyWith<$Res> {
  factory _$SellerProductModelCopyWith(
          _SellerProductModel value, $Res Function(_SellerProductModel) _then) =
      __$SellerProductModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String? productRefId,
      String name,
      UnitType unitType,
      num unitQuantity,
      num inventoryCurrent,
      List<String> availableZones,
      num price,
      String currency,
      bool active,
      @TimestampConverter() Timestamp updatedAt});
}

/// @nodoc
class __$SellerProductModelCopyWithImpl<$Res>
    implements _$SellerProductModelCopyWith<$Res> {
  __$SellerProductModelCopyWithImpl(this._self, this._then);

  final _SellerProductModel _self;
  final $Res Function(_SellerProductModel) _then;

  /// Create a copy of SellerProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? productRefId = freezed,
    Object? name = null,
    Object? unitType = null,
    Object? unitQuantity = null,
    Object? inventoryCurrent = null,
    Object? availableZones = null,
    Object? price = null,
    Object? currency = null,
    Object? active = null,
    Object? updatedAt = null,
  }) {
    return _then(_SellerProductModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productRefId: freezed == productRefId
          ? _self.productRefId
          : productRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: null == unitType
          ? _self.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType,
      unitQuantity: null == unitQuantity
          ? _self.unitQuantity
          : unitQuantity // ignore: cast_nullable_to_non_nullable
              as num,
      inventoryCurrent: null == inventoryCurrent
          ? _self.inventoryCurrent
          : inventoryCurrent // ignore: cast_nullable_to_non_nullable
              as num,
      availableZones: null == availableZones
          ? _self._availableZones
          : availableZones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

// dart format on
