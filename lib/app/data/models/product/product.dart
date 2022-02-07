import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helpers/model_helpers.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();

  const factory Product({
    required String id,
    required String categoryId,
    required String code,
    required String name,
    required String unit,
    required double price,
    String? description,
    String? imageUrl,
    @Default(false) bool active,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  factory Product.empty() => const Product(
      id: '', name: '', categoryId: '', price: 0, unit: '', code: '');

  factory Product.fromDocument(DocumentSnapshot doc) =>
      Product.fromJson(ModelHelpers().fromDocument(doc.data()!))
          .copyWith(id: doc.id);

  Map<String, dynamic> toDocument() => ModelHelpers().toDocument(toJson());
}
