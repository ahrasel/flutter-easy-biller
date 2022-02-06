import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../failures/firestore_failure.dart';
import '../../models/product_category/product_category.dart';

abstract class IProductCategoryRepository {
  Future<Either<FirestoreFailure, List<QueryDocumentSnapshot<ProductCategory>>>>
      allProductCategories();

  Future<Either<FirestoreFailure, ProductCategory>> createProductCategory(
      {required ProductCategory productCategory});

  Future<Either<FirestoreFailure, ProductCategory>> updateProductCategory(
      {required ProductCategory productCategory});

  Future<Either<FirestoreFailure, ProductCategory>> deleteProductCategory(
      {required ProductCategory productCategory});

  Future<Either<FirestoreFailure, ProductCategory>> toggleStatus(
      {required ProductCategory productCategory});
}
