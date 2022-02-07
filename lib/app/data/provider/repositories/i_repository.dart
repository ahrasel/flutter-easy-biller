import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IRepository {
  Future<bool> existWithKey(
      {required String collection,
      required String filed,
      required String value});

  Future<List<QueryDocumentSnapshot<T>>> allDocs<T>(
      {required String collection,
      required dynamic model,
      required String orderBy});

  Future<void> deleteDoc({required String collection, required String id});

  Future<DocumentReference<Map<String, dynamic>>> createDoc(
      {required String collection, required Map<String, dynamic> data});

  Future<void> updateDoc(
      {required String collection,
      required String id,
      required Map<String, dynamic> data});
}
