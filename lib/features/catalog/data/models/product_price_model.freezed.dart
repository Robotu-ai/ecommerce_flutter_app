// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductPriceModel {
  String get id; // ${sellerId}_${zoneId}
  String get sellerId;
  String get sellerName;
  num get price;
  String get currency;
  String get zoneId;
  @TimestampConverter()
  Timestamp get updatedAt;

  /// Create a copy of ProductPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductPriceModelCopyWith<ProductPriceModel> get copyWith =>
      _$ProductPriceModelCopyWithImpl<ProductPriceModel>(
          this as ProductPriceModel, _$identity);

  /// Serializes this ProductPriceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductPriceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sellerId, sellerName, price,
      currency, zoneId, updatedAt);

  @override
  String toString() {
    return 'ProductPriceModel(id: $id, sellerId: $sellerId, sellerName: $sellerName, price: $price, currency: $currency, zoneId: $zoneId, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ProductPriceModelCopyWith<$Res> {
  factory $ProductPriceModelCopyWith(
          ProductPriceModel value, $Res Function(ProductPriceModel) _then) =
      _$ProductPriceModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String sellerId,
      String sellerName,
      num price,
      String currency,
      String zoneId,
      @TimestampConverter() Timestamp updatedAt});
}

/// @nodoc
class _$ProductPriceModelCopyWithImpl<$Res>
    implements $ProductPriceModelCopyWith<$Res> {
  _$ProductPriceModelCopyWithImpl(this._self, this._then);

  final ProductPriceModel _self;
  final $Res Function(ProductPriceModel) _then;

  /// Create a copy of ProductPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sellerId = null,
    Object? sellerName = null,
    Object? price = null,
    Object? currency = null,
    Object? zoneId = null,
    Object? updatedAt = null,
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
      sellerName: null == sellerName
          ? _self.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      zoneId: null == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductPriceModel].
extension ProductPriceModelPatterns on ProductPriceModel {
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
    TResult Function(_ProductPriceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductPriceModel() when $default != null:
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
    TResult Function(_ProductPriceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPriceModel():
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
    TResult? Function(_ProductPriceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPriceModel() when $default != null:
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
            String sellerName,
            num price,
            String currency,
            String zoneId,
            @TimestampConverter() Timestamp updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductPriceModel() when $default != null:
        return $default(_that.id, _that.sellerId, _that.sellerName, _that.price,
            _that.currency, _that.zoneId, _that.updatedAt);
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
            String sellerName,
            num price,
            String currency,
            String zoneId,
            @TimestampConverter() Timestamp updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPriceModel():
        return $default(_that.id, _that.sellerId, _that.sellerName, _that.price,
            _that.currency, _that.zoneId, _that.updatedAt);
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
            String sellerName,
            num price,
            String currency,
            String zoneId,
            @TimestampConverter() Timestamp updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPriceModel() when $default != null:
        return $default(_that.id, _that.sellerId, _that.sellerName, _that.price,
            _that.currency, _that.zoneId, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductPriceModel extends ProductPriceModel {
  const _ProductPriceModel(
      {required this.id,
      required this.sellerId,
      required this.sellerName,
      required this.price,
      required this.currency,
      required this.zoneId,
      @TimestampConverter() required this.updatedAt})
      : super._();
  factory _ProductPriceModel.fromJson(Map<String, dynamic> json) =>
      _$ProductPriceModelFromJson(json);

  @override
  final String id;
// ${sellerId}_${zoneId}
  @override
  final String sellerId;
  @override
  final String sellerName;
  @override
  final num price;
  @override
  final String currency;
  @override
  final String zoneId;
  @override
  @TimestampConverter()
  final Timestamp updatedAt;

  /// Create a copy of ProductPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductPriceModelCopyWith<_ProductPriceModel> get copyWith =>
      __$ProductPriceModelCopyWithImpl<_ProductPriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductPriceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductPriceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sellerId, sellerName, price,
      currency, zoneId, updatedAt);

  @override
  String toString() {
    return 'ProductPriceModel(id: $id, sellerId: $sellerId, sellerName: $sellerName, price: $price, currency: $currency, zoneId: $zoneId, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ProductPriceModelCopyWith<$Res>
    implements $ProductPriceModelCopyWith<$Res> {
  factory _$ProductPriceModelCopyWith(
          _ProductPriceModel value, $Res Function(_ProductPriceModel) _then) =
      __$ProductPriceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String sellerId,
      String sellerName,
      num price,
      String currency,
      String zoneId,
      @TimestampConverter() Timestamp updatedAt});
}

/// @nodoc
class __$ProductPriceModelCopyWithImpl<$Res>
    implements _$ProductPriceModelCopyWith<$Res> {
  __$ProductPriceModelCopyWithImpl(this._self, this._then);

  final _ProductPriceModel _self;
  final $Res Function(_ProductPriceModel) _then;

  /// Create a copy of ProductPriceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sellerId = null,
    Object? sellerName = null,
    Object? price = null,
    Object? currency = null,
    Object? zoneId = null,
    Object? updatedAt = null,
  }) {
    return _then(_ProductPriceModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _self.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _self.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      zoneId: null == zoneId
          ? _self.zoneId
          : zoneId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

// dart format on
