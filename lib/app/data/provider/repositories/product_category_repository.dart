import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_biller/app/data/models/product_category/product_category.dart';
import 'package:easy_biller/app/data/failures/firestore_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/data/provider/repositories/i_product_category_repository.dart';
import 'package:easy_biller/app/data/provider/repositories/repository.dart';
import 'package:flutter/foundation.dart';

class ProductCategoryRepository extends Repository implements IProductCategoryRepository {
  final String _productCategoryCollection = 'product_categories';

  @override
  Future<Either<FirestoreFailure, ProductCategory>> createProductCategory(
      {required ProductCategory productCategory}) async {
    try {
      // check category name already exist or not
      bool nameExist = await existWithKey(
          collection: _productCategoryCollection, filed: 'name', value: productCategory.name);

      if (nameExist) {
        return left(
            const FirestoreFailure.recordAlreadyExist(message: "Category name already exist"));
      }

      // save product category
      var snapshot =
          await createDoc(collection: _productCategoryCollection, data: productCategory.toJson());

      productCategory = productCategory.copyWith(id: snapshot.id);

      return right(productCategory);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }

  @override
  Future<Either<FirestoreFailure, ProductCategory>> deleteProductCategory(
      {required ProductCategory productCategory}) async {
    try {
      await deleteDoc(collection: _productCategoryCollection, id: productCategory.id);
      return right(productCategory);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }

  @override
  Future<Either<FirestoreFailure, ProductCategory>> toggleStatus(
      {required ProductCategory productCategory}) async {
    try {
      productCategory = productCategory.copyWith(active: !productCategory.active);
      await updateDoc(
          collection: _productCategoryCollection,
          id: productCategory.id,
          data: productCategory.toJson());

      return right(productCategory);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }

  @override
  Future<Either<FirestoreFailure, ProductCategory>> updateProductCategory(
      {required ProductCategory productCategory}) async {
    try {
      await updateDoc(
          collection: _productCategoryCollection,
          id: productCategory.id,
          data: productCategory.toJson());

      return right(productCategory);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }

  @override
  Future<Either<FirestoreFailure, List<QueryDocumentSnapshot<ProductCategory>>>>
      allProductCategories() async {
    try {
      // var ref = await firestore
      //     .collection(_productCategoryCollection)
      //     .withConverter<ProductCategory>(
      //         fromFirestore: (snap, _) => ProductCategory.fromJson(snap.data()!),
      //         toFirestore: (data, _) => data.toJson())
      //     .orderBy('name')
      //     .get();
      var docs = await allDocs<ProductCategory>(
          collection: _productCategoryCollection, model: ProductCategory.empty(), orderBy: 'name');
      return right(docs);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return left(const FirestoreFailure.serverError());
    }
  }
}
