import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helpers/model_helpers.dart';

part 'product_category.freezed.dart';
part 'product_category.g.dart';

@freezed
abstract class ProductCategory implements _$ProductCategory {
  const ProductCategory._();

  const factory ProductCategory({
    required String id,
    required String name,
    String? description,
    int? order,
    @Default(true) bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);

  factory ProductCategory.empty() => const ProductCategory(id: '', name: '');

  factory ProductCategory.fromDocument(DocumentSnapshot doc) =>
      ProductCategory.fromJson(ModelHelpers().fromDocument(doc.data()!))
          .copyWith(id: doc.id);

  Map<String, dynamic> toDocument() => ModelHelpers().toDocument(toJson());
}
