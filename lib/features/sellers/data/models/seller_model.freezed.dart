// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellerContact {
  String get phone;
  String get email;

  /// Create a copy of SellerContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SellerContactCopyWith<SellerContact> get copyWith =>
      _$SellerContactCopyWithImpl<SellerContact>(
          this as SellerContact, _$identity);

  /// Serializes this SellerContact to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SellerContact &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, email);

  @override
  String toString() {
    return 'SellerContact(phone: $phone, email: $email)';
  }
}

/// @nodoc
abstract mixin class $SellerContactCopyWith<$Res> {
  factory $SellerContactCopyWith(
          SellerContact value, $Res Function(SellerContact) _then) =
      _$SellerContactCopyWithImpl;
  @useResult
  $Res call({String phone, String email});
}

/// @nodoc
class _$SellerContactCopyWithImpl<$Res>
    implements $SellerContactCopyWith<$Res> {
  _$SellerContactCopyWithImpl(this._self, this._then);

  final SellerContact _self;
  final $Res Function(SellerContact) _then;

  /// Create a copy of SellerContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SellerContact].
extension SellerContactPatterns on SellerContact {
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
    TResult Function(_SellerContact value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellerContact() when $default != null:
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
    TResult Function(_SellerContact value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerContact():
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
    TResult? Function(_SellerContact value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerContact() when $default != null:
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
    TResult Function(String phone, String email)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellerContact() when $default != null:
        return $default(_that.phone, _that.email);
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
    TResult Function(String phone, String email) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerContact():
        return $default(_that.phone, _that.email);
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
    TResult? Function(String phone, String email)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerContact() when $default != null:
        return $default(_that.phone, _that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SellerContact extends SellerContact {
  const _SellerContact({required this.phone, required this.email}) : super._();
  factory _SellerContact.fromJson(Map<String, dynamic> json) =>
      _$SellerContactFromJson(json);

  @override
  final String phone;
  @override
  final String email;

  /// Create a copy of SellerContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SellerContactCopyWith<_SellerContact> get copyWith =>
      __$SellerContactCopyWithImpl<_SellerContact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SellerContactToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SellerContact &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, email);

  @override
  String toString() {
    return 'SellerContact(phone: $phone, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$SellerContactCopyWith<$Res>
    implements $SellerContactCopyWith<$Res> {
  factory _$SellerContactCopyWith(
          _SellerContact value, $Res Function(_SellerContact) _then) =
      __$SellerContactCopyWithImpl;
  @override
  @useResult
  $Res call({String phone, String email});
}

/// @nodoc
class __$SellerContactCopyWithImpl<$Res>
    implements _$SellerContactCopyWith<$Res> {
  __$SellerContactCopyWithImpl(this._self, this._then);

  final _SellerContact _self;
  final $Res Function(_SellerContact) _then;

  /// Create a copy of SellerContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_SellerContact(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SellerModel {
  String get id; // docId (“meatco”)
  String get name;
  String get logoUrl;
  SellerContact get contact;
  List<String> get zones;
  bool get active;

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SellerModelCopyWith<SellerModel> get copyWith =>
      _$SellerModelCopyWithImpl<SellerModel>(this as SellerModel, _$identity);

  /// Serializes this SellerModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SellerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other.zones, zones) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoUrl, contact,
      const DeepCollectionEquality().hash(zones), active);

  @override
  String toString() {
    return 'SellerModel(id: $id, name: $name, logoUrl: $logoUrl, contact: $contact, zones: $zones, active: $active)';
  }
}

/// @nodoc
abstract mixin class $SellerModelCopyWith<$Res> {
  factory $SellerModelCopyWith(
          SellerModel value, $Res Function(SellerModel) _then) =
      _$SellerModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String logoUrl,
      SellerContact contact,
      List<String> zones,
      bool active});

  $SellerContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$SellerModelCopyWithImpl<$Res> implements $SellerModelCopyWith<$Res> {
  _$SellerModelCopyWithImpl(this._self, this._then);

  final SellerModel _self;
  final $Res Function(SellerModel) _then;

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = null,
    Object? contact = null,
    Object? zones = null,
    Object? active = null,
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
      logoUrl: null == logoUrl
          ? _self.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _self.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as SellerContact,
      zones: null == zones
          ? _self.zones
          : zones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SellerContactCopyWith<$Res> get contact {
    return $SellerContactCopyWith<$Res>(_self.contact, (value) {
      return _then(_self.copyWith(contact: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SellerModel].
extension SellerModelPatterns on SellerModel {
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
    TResult Function(_SellerModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellerModel() when $default != null:
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
    TResult Function(_SellerModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerModel():
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
    TResult? Function(_SellerModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerModel() when $default != null:
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
    TResult Function(String id, String name, String logoUrl,
            SellerContact contact, List<String> zones, bool active)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SellerModel() when $default != null:
        return $default(_that.id, _that.name, _that.logoUrl, _that.contact,
            _that.zones, _that.active);
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
    TResult Function(String id, String name, String logoUrl,
            SellerContact contact, List<String> zones, bool active)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerModel():
        return $default(_that.id, _that.name, _that.logoUrl, _that.contact,
            _that.zones, _that.active);
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
    TResult? Function(String id, String name, String logoUrl,
            SellerContact contact, List<String> zones, bool active)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SellerModel() when $default != null:
        return $default(_that.id, _that.name, _that.logoUrl, _that.contact,
            _that.zones, _that.active);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SellerModel extends SellerModel {
  const _SellerModel(
      {required this.id,
      required this.name,
      required this.logoUrl,
      required this.contact,
      required final List<String> zones,
      required this.active})
      : _zones = zones,
        super._();
  factory _SellerModel.fromJson(Map<String, dynamic> json) =>
      _$SellerModelFromJson(json);

  @override
  final String id;
// docId (“meatco”)
  @override
  final String name;
  @override
  final String logoUrl;
  @override
  final SellerContact contact;
  final List<String> _zones;
  @override
  List<String> get zones {
    if (_zones is EqualUnmodifiableListView) return _zones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zones);
  }

  @override
  final bool active;

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SellerModelCopyWith<_SellerModel> get copyWith =>
      __$SellerModelCopyWithImpl<_SellerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SellerModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SellerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other._zones, _zones) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoUrl, contact,
      const DeepCollectionEquality().hash(_zones), active);

  @override
  String toString() {
    return 'SellerModel(id: $id, name: $name, logoUrl: $logoUrl, contact: $contact, zones: $zones, active: $active)';
  }
}

/// @nodoc
abstract mixin class _$SellerModelCopyWith<$Res>
    implements $SellerModelCopyWith<$Res> {
  factory _$SellerModelCopyWith(
          _SellerModel value, $Res Function(_SellerModel) _then) =
      __$SellerModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String logoUrl,
      SellerContact contact,
      List<String> zones,
      bool active});

  @override
  $SellerContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$SellerModelCopyWithImpl<$Res> implements _$SellerModelCopyWith<$Res> {
  __$SellerModelCopyWithImpl(this._self, this._then);

  final _SellerModel _self;
  final $Res Function(_SellerModel) _then;

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = null,
    Object? contact = null,
    Object? zones = null,
    Object? active = null,
  }) {
    return _then(_SellerModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _self.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _self.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as SellerContact,
      zones: null == zones
          ? _self._zones
          : zones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SellerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SellerContactCopyWith<$Res> get contact {
    return $SellerContactCopyWith<$Res>(_self.contact, (value) {
      return _then(_self.copyWith(contact: value));
    });
  }
}

// dart format on
