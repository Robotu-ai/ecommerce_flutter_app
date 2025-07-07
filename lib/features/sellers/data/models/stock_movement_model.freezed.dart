// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_movement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockMovementModel {
  String get id;
  MovementType get type;
  num get qty;
  String get note;
  @TimestampConverter()
  Timestamp get ts;

  /// Create a copy of StockMovementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockMovementModelCopyWith<StockMovementModel> get copyWith =>
      _$StockMovementModelCopyWithImpl<StockMovementModel>(
          this as StockMovementModel, _$identity);

  /// Serializes this StockMovementModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockMovementModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.ts, ts) || other.ts == ts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, qty, note, ts);

  @override
  String toString() {
    return 'StockMovementModel(id: $id, type: $type, qty: $qty, note: $note, ts: $ts)';
  }
}

/// @nodoc
abstract mixin class $StockMovementModelCopyWith<$Res> {
  factory $StockMovementModelCopyWith(
          StockMovementModel value, $Res Function(StockMovementModel) _then) =
      _$StockMovementModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      MovementType type,
      num qty,
      String note,
      @TimestampConverter() Timestamp ts});
}

/// @nodoc
class _$StockMovementModelCopyWithImpl<$Res>
    implements $StockMovementModelCopyWith<$Res> {
  _$StockMovementModelCopyWithImpl(this._self, this._then);

  final StockMovementModel _self;
  final $Res Function(StockMovementModel) _then;

  /// Create a copy of StockMovementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? qty = null,
    Object? note = null,
    Object? ts = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MovementType,
      qty: null == qty
          ? _self.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      ts: null == ts
          ? _self.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// Adds pattern-matching-related methods to [StockMovementModel].
extension StockMovementModelPatterns on StockMovementModel {
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
    TResult Function(_StockMovementModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel() when $default != null:
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
    TResult Function(_StockMovementModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel():
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
    TResult? Function(_StockMovementModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel() when $default != null:
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
    TResult Function(String id, MovementType type, num qty, String note,
            @TimestampConverter() Timestamp ts)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel() when $default != null:
        return $default(_that.id, _that.type, _that.qty, _that.note, _that.ts);
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
    TResult Function(String id, MovementType type, num qty, String note,
            @TimestampConverter() Timestamp ts)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel():
        return $default(_that.id, _that.type, _that.qty, _that.note, _that.ts);
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
    TResult? Function(String id, MovementType type, num qty, String note,
            @TimestampConverter() Timestamp ts)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovementModel() when $default != null:
        return $default(_that.id, _that.type, _that.qty, _that.note, _that.ts);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockMovementModel extends StockMovementModel {
  const _StockMovementModel(
      {required this.id,
      required this.type,
      required this.qty,
      required this.note,
      @TimestampConverter() required this.ts})
      : super._();
  factory _StockMovementModel.fromJson(Map<String, dynamic> json) =>
      _$StockMovementModelFromJson(json);

  @override
  final String id;
  @override
  final MovementType type;
  @override
  final num qty;
  @override
  final String note;
  @override
  @TimestampConverter()
  final Timestamp ts;

  /// Create a copy of StockMovementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockMovementModelCopyWith<_StockMovementModel> get copyWith =>
      __$StockMovementModelCopyWithImpl<_StockMovementModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockMovementModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockMovementModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.ts, ts) || other.ts == ts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, qty, note, ts);

  @override
  String toString() {
    return 'StockMovementModel(id: $id, type: $type, qty: $qty, note: $note, ts: $ts)';
  }
}

/// @nodoc
abstract mixin class _$StockMovementModelCopyWith<$Res>
    implements $StockMovementModelCopyWith<$Res> {
  factory _$StockMovementModelCopyWith(
          _StockMovementModel value, $Res Function(_StockMovementModel) _then) =
      __$StockMovementModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      MovementType type,
      num qty,
      String note,
      @TimestampConverter() Timestamp ts});
}

/// @nodoc
class __$StockMovementModelCopyWithImpl<$Res>
    implements _$StockMovementModelCopyWith<$Res> {
  __$StockMovementModelCopyWithImpl(this._self, this._then);

  final _StockMovementModel _self;
  final $Res Function(_StockMovementModel) _then;

  /// Create a copy of StockMovementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? qty = null,
    Object? note = null,
    Object? ts = null,
  }) {
    return _then(_StockMovementModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MovementType,
      qty: null == qty
          ? _self.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      ts: null == ts
          ? _self.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

// dart format on
