// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BestPrice {
  String get sellerId;
  String get sellerName;
  String get sellerProductId;
  num get price;
  String get currency;
  String get zoneId;

  /// Create a copy of BestPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BestPriceCopyWith<BestPrice> get copyWith =>
      _$BestPriceCopyWithImpl<BestPrice>(this as BestPrice, _$identity);

  /// Serializes this BestPrice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BestPrice &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.sellerProductId, sellerProductId) ||
                other.sellerProductId == sellerProductId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sellerId, sellerName,
      sellerProductId, price, currency, zoneId);

  @override
  String toString() {
    return 'BestPrice(sellerId: $sellerId, sellerName: $sellerName, sellerProductId: $sellerProductId, price: $price, currency: $currency, zoneId: $zoneId)';
  }
}

/// @nodoc
abstract mixin class $BestPriceCopyWith<$Res> {
  factory $BestPriceCopyWith(BestPrice value, $Res Function(BestPrice) _then) =
      _$BestPriceCopyWithImpl;
  @useResult
  $Res call(
      {String sellerId,
      String sellerName,
      String sellerProductId,
      num price,
      String currency,
      String zoneId});
}

/// @nodoc
class _$BestPriceCopyWithImpl<$Res> implements $BestPriceCopyWith<$Res> {
  _$BestPriceCopyWithImpl(this._self, this._then);

  final BestPrice _self;
  final $Res Function(BestPrice) _then;

  /// Create a copy of BestPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sellerId = null,
    Object? sellerName = null,
    Object? sellerProductId = null,
    Object? price = null,
    Object? currency = null,
    Object? zoneId = null,
  }) {
    return _then(_self.copyWith(
      sellerId: null == sellerId
          ? _self.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _self.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerProductId: null == sellerProductId
          ? _self.sellerProductId
          : sellerProductId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// Adds pattern-matching-related methods to [BestPrice].
extension BestPricePatterns on BestPrice {
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
    TResult Function(_BestPrice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BestPrice() when $default != null:
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
    TResult Function(_BestPrice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BestPrice():
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
    TResult? Function(_BestPrice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BestPrice() when $default != null:
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
    TResult Function(String sellerId, String sellerName, String sellerProductId,
            num price, String currency, String zoneId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BestPrice() when $default != null:
        return $default(_that.sellerId, _that.sellerName, _that.sellerProductId,
            _that.price, _that.currency, _that.zoneId);
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
    TResult Function(String sellerId, String sellerName, String sellerProductId,
            num price, String currency, String zoneId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BestPrice():
        return $default(_that.sellerId, _that.sellerName, _that.sellerProductId,
            _that.price, _that.currency, _that.zoneId);
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
    TResult? Function(String sellerId, String sellerName,
            String sellerProductId, num price, String currency, String zoneId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BestPrice() when $default != null:
        return $default(_that.sellerId, _that.sellerName, _that.sellerProductId,
            _that.price, _that.currency, _that.zoneId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _BestPrice extends BestPrice {
  const _BestPrice(
      {required this.sellerId,
      required this.sellerName,
      required this.sellerProductId,
      required this.price,
      required this.currency,
      required this.zoneId})
      : super._();
  factory _BestPrice.fromJson(Map<String, dynamic> json) =>
      _$BestPriceFromJson(json);

  @override
  final String sellerId;
  @override
  final String sellerName;
  @override
  final String sellerProductId;
  @override
  final num price;
  @override
  final String currency;
  @override
  final String zoneId;

  /// Create a copy of BestPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BestPriceCopyWith<_BestPrice> get copyWith =>
      __$BestPriceCopyWithImpl<_BestPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BestPriceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BestPrice &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.sellerProductId, sellerProductId) ||
                other.sellerProductId == sellerProductId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sellerId, sellerName,
      sellerProductId, price, currency, zoneId);

  @override
  String toString() {
    return 'BestPrice(sellerId: $sellerId, sellerName: $sellerName, sellerProductId: $sellerProductId, price: $price, currency: $currency, zoneId: $zoneId)';
  }
}

/// @nodoc
abstract mixin class _$BestPriceCopyWith<$Res>
    implements $BestPriceCopyWith<$Res> {
  factory _$BestPriceCopyWith(
          _BestPrice value, $Res Function(_BestPrice) _then) =
      __$BestPriceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String sellerId,
      String sellerName,
      String sellerProductId,
      num price,
      String currency,
      String zoneId});
}

/// @nodoc
class __$BestPriceCopyWithImpl<$Res> implements _$BestPriceCopyWith<$Res> {
  __$BestPriceCopyWithImpl(this._self, this._then);

  final _BestPrice _self;
  final $Res Function(_BestPrice) _then;

  /// Create a copy of BestPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sellerId = null,
    Object? sellerName = null,
    Object? sellerProductId = null,
    Object? price = null,
    Object? currency = null,
    Object? zoneId = null,
  }) {
    return _then(_BestPrice(
      sellerId: null == sellerId
          ? _self.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: null == sellerName
          ? _self.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerProductId: null == sellerProductId
          ? _self.sellerProductId
          : sellerProductId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
mixin _$ProductReferenceModel {
  String get id; // productRefId
  String get name;
  String get categoryId;
  String get subCategoryId;
  String get description;
  String get imageUrl;
  UnitType get unitType;
  CatalogState get catalogState;
  num get catalogPriority;
  BestPrice get bestPrice;
  String? get label;
  @TimestampConverter()
  Timestamp get createdAt;

  /// Create a copy of ProductReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductReferenceModelCopyWith<ProductReferenceModel> get copyWith =>
      _$ProductReferenceModelCopyWithImpl<ProductReferenceModel>(
          this as ProductReferenceModel, _$identity);

  /// Serializes this ProductReferenceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductReferenceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.catalogState, catalogState) ||
                other.catalogState == catalogState) &&
            (identical(other.catalogPriority, catalogPriority) ||
                other.catalogPriority == catalogPriority) &&
            (identical(other.bestPrice, bestPrice) ||
                other.bestPrice == bestPrice) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      categoryId,
      subCategoryId,
      description,
      imageUrl,
      unitType,
      catalogState,
      catalogPriority,
      bestPrice,
      label,
      createdAt);

  @override
  String toString() {
    return 'ProductReferenceModel(id: $id, name: $name, categoryId: $categoryId, subCategoryId: $subCategoryId, description: $description, imageUrl: $imageUrl, unitType: $unitType, catalogState: $catalogState, catalogPriority: $catalogPriority, bestPrice: $bestPrice, label: $label, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ProductReferenceModelCopyWith<$Res> {
  factory $ProductReferenceModelCopyWith(ProductReferenceModel value,
          $Res Function(ProductReferenceModel) _then) =
      _$ProductReferenceModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String categoryId,
      String subCategoryId,
      String description,
      String imageUrl,
      UnitType unitType,
      CatalogState catalogState,
      num catalogPriority,
      BestPrice bestPrice,
      String? label,
      @TimestampConverter() Timestamp createdAt});

  $BestPriceCopyWith<$Res> get bestPrice;
}

/// @nodoc
class _$ProductReferenceModelCopyWithImpl<$Res>
    implements $ProductReferenceModelCopyWith<$Res> {
  _$ProductReferenceModelCopyWithImpl(this._self, this._then);

  final ProductReferenceModel _self;
  final $Res Function(ProductReferenceModel) _then;

  /// Create a copy of ProductReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? unitType = null,
    Object? catalogState = null,
    Object? catalogPriority = null,
    Object? bestPrice = null,
    Object? label = freezed,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: null == subCategoryId
          ? _self.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: null == unitType
          ? _self.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType,
      catalogState: null == catalogState
          ? _self.catalogState
          : catalogState // ignore: cast_nullable_to_non_nullable
              as CatalogState,
      catalogPriority: null == catalogPriority
          ? _self.catalogPriority
          : catalogPriority // ignore: cast_nullable_to_non_nullable
              as num,
      bestPrice: null == bestPrice
          ? _self.bestPrice
          : bestPrice // ignore: cast_nullable_to_non_nullable
              as BestPrice,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }

  /// Create a copy of ProductReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BestPriceCopyWith<$Res> get bestPrice {
    return $BestPriceCopyWith<$Res>(_self.bestPrice, (value) {
      return _then(_self.copyWith(bestPrice: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProductReferenceModel].
extension ProductReferenceModelPatterns on ProductReferenceModel {
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
    TResult Function(_ProductReferenceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductReferenceModel() when $default != null:
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
    TResult Function(_ProductReferenceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductReferenceModel():
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
    TResult? Function(_ProductReferenceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductReferenceModel() when $default != null:
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
            String name,
            String categoryId,
            String subCategoryId,
            String description,
            String imageUrl,
            UnitType unitType,
            CatalogState catalogState,
            num catalogPriority,
            BestPrice bestPrice,
            String? label,
            @TimestampConverter() Timestamp createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductReferenceModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.categoryId,
            _that.subCategoryId,
            _that.description,
            _that.imageUrl,
            _that.unitType,
            _that.catalogState,
            _that.catalogPriority,
            _that.bestPrice,
            _that.label,
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
    TResult Function(
            String id,
            String name,
            String categoryId,
            String subCategoryId,
            String description,
            String imageUrl,
            UnitType unitType,
            CatalogState catalogState,
            num catalogPriority,
            BestPrice bestPrice,
            String? label,
            @TimestampConverter() Timestamp createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductReferenceModel():
        return $default(
            _that.id,
            _that.name,
            _that.categoryId,
            _that.subCategoryId,
            _that.description,
            _that.imageUrl,
            _that.unitType,
            _that.catalogState,
            _that.catalogPriority,
            _that.bestPrice,
            _that.label,
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
    TResult? Function(
            String id,
            String name,
            String categoryId,
            String subCategoryId,
            String description,
            String imageUrl,
            UnitType unitType,
            CatalogState catalogState,
            num catalogPriority,
            BestPrice bestPrice,
            String? label,
            @TimestampConverter() Timestamp createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductReferenceModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.categoryId,
            _that.subCategoryId,
            _that.description,
            _that.imageUrl,
            _that.unitType,
            _that.catalogState,
            _that.catalogPriority,
            _that.bestPrice,
            _that.label,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ProductReferenceModel extends ProductReferenceModel {
  const _ProductReferenceModel(
      {required this.id,
      required this.name,
      required this.categoryId,
      required this.subCategoryId,
      required this.description,
      required this.imageUrl,
      required this.unitType,
      required this.catalogState,
      required this.catalogPriority,
      required this.bestPrice,
      required this.label,
      @TimestampConverter() required this.createdAt})
      : super._();
  factory _ProductReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$ProductReferenceModelFromJson(json);

  @override
  final String id;
// productRefId
  @override
  final String name;
  @override
  final String categoryId;
  @override
  final String subCategoryId;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final UnitType unitType;
  @override
  final CatalogState catalogState;
  @override
  final num catalogPriority;
  @override
  final BestPrice bestPrice;
  @override
  final String? label;
  @override
  @TimestampConverter()
  final Timestamp createdAt;

  /// Create a copy of ProductReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductReferenceModelCopyWith<_ProductReferenceModel> get copyWith =>
      __$ProductReferenceModelCopyWithImpl<_ProductReferenceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductReferenceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductReferenceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.catalogState, catalogState) ||
                other.catalogState == catalogState) &&
            (identical(other.catalogPriority, catalogPriority) ||
                other.catalogPriority == catalogPriority) &&
            (identical(other.bestPrice, bestPrice) ||
                other.bestPrice == bestPrice) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      categoryId,
      subCategoryId,
      description,
      imageUrl,
      unitType,
      catalogState,
      catalogPriority,
      bestPrice,
      label,
      createdAt);

  @override
  String toString() {
    return 'ProductReferenceModel(id: $id, name: $name, categoryId: $categoryId, subCategoryId: $subCategoryId, description: $description, imageUrl: $imageUrl, unitType: $unitType, catalogState: $catalogState, catalogPriority: $catalogPriority, bestPrice: $bestPrice, label: $label, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$ProductReferenceModelCopyWith<$Res>
    implements $ProductReferenceModelCopyWith<$Res> {
  factory _$ProductReferenceModelCopyWith(_ProductReferenceModel value,
          $Res Function(_ProductReferenceModel) _then) =
      __$ProductReferenceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String categoryId,
      String subCategoryId,
      String description,
      String imageUrl,
      UnitType unitType,
      CatalogState catalogState,
      num catalogPriority,
      BestPrice bestPrice,
      String? label,
      @TimestampConverter() Timestamp createdAt});

  @override
  $BestPriceCopyWith<$Res> get bestPrice;
}

/// @nodoc
class __$ProductReferenceModelCopyWithImpl<$Res>
    implements _$ProductReferenceModelCopyWith<$Res> {
  __$ProductReferenceModelCopyWithImpl(this._self, this._then);

  final _ProductReferenceModel _self;
  final $Res Function(_ProductReferenceModel) _then;

  /// Create a copy of ProductReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? subCategoryId = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? unitType = null,
    Object? catalogState = null,
    Object? catalogPriority = null,
    Object? bestPrice = null,
    Object? label = freezed,
    Object? createdAt = null,
  }) {
    return _then(_ProductReferenceModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subCategoryId: null == subCategoryId
          ? _self.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: null == unitType
          ? _self.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType,
      catalogState: null == catalogState
          ? _self.catalogState
          : catalogState // ignore: cast_nullable_to_non_nullable
              as CatalogState,
      catalogPriority: null == catalogPriority
          ? _self.catalogPriority
          : catalogPriority // ignore: cast_nullable_to_non_nullable
              as num,
      bestPrice: null == bestPrice
          ? _self.bestPrice
          : bestPrice // ignore: cast_nullable_to_non_nullable
              as BestPrice,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }

  /// Create a copy of ProductReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BestPriceCopyWith<$Res> get bestPrice {
    return $BestPriceCopyWith<$Res>(_self.bestPrice, (value) {
      return _then(_self.copyWith(bestPrice: value));
    });
  }
}

// dart format on
