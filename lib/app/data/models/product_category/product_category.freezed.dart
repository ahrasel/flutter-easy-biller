// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
class _$ProductCategoryTearOff {
  const _$ProductCategoryTearOff();

  _ProductCategory call(
      {required String id,
      String? name,
      String? description,
      int? order,
      bool active = true,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _ProductCategory(
      id: id,
      name: name,
      description: description,
      order: order,
      active: active,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  ProductCategory fromJson(Map<String, Object?> json) {
    return ProductCategory.fromJson(json);
  }
}

/// @nodoc
const $ProductCategory = _$ProductCategoryTearOff();

/// @nodoc
mixin _$ProductCategory {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? name,
      String? description,
      int? order,
      bool active,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  final ProductCategory _value;
  // ignore: unused_field
  final $Res Function(ProductCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? order = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ProductCategoryCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$ProductCategoryCopyWith(
          _ProductCategory value, $Res Function(_ProductCategory) then) =
      __$ProductCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? name,
      String? description,
      int? order,
      bool active,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$ProductCategoryCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res>
    implements _$ProductCategoryCopyWith<$Res> {
  __$ProductCategoryCopyWithImpl(
      _ProductCategory _value, $Res Function(_ProductCategory) _then)
      : super(_value, (v) => _then(v as _ProductCategory));

  @override
  _ProductCategory get _value => super._value as _ProductCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? order = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ProductCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategory extends _ProductCategory {
  const _$_ProductCategory(
      {required this.id,
      this.name,
      this.description,
      this.order,
      this.active = true,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoryFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? order;
  @JsonKey()
  @override
  final bool active;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductCategory(id: $id, name: $name, description: $description, order: $order, active: $active, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith =>
      __$ProductCategoryCopyWithImpl<_ProductCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoryToJson(this);
  }
}

abstract class _ProductCategory extends ProductCategory {
  const factory _ProductCategory(
      {required String id,
      String? name,
      String? description,
      int? order,
      bool active,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_ProductCategory;
  const _ProductCategory._() : super._();

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$_ProductCategory.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get order;
  @override
  bool get active;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
