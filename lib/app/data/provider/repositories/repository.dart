import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_biller/app/data/models/appuser/appuser.dart';
import 'package:easy_biller/app/data/failures/firestore_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_biller/app/data/provider/repositories/i_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Repository implements IRepository {
  final FirebaseAuth firebaseAuth = Get.find<FirebaseAuth>();
  final FirebaseFirestore firestore = Get.find<FirebaseFirestore>();

  @override
  Future<bool> existWithKey(
      {required String collection,
      required String filed,
      required String value}) async {
    var snapShot = await firestore
        .collection(collection)
        .where(filed, isEqualTo: value)
        .get();

    return snapShot.docs.isNotEmpty;
  }

  @override
  Future<void> deleteDoc(
      {required String collection, required String id}) async {
    firestore.collection(collection).doc(id).delete();
  }

  @override
  Future<DocumentReference<Map<String, dynamic>>> createDoc(
          {required String collection, required Map<String, dynamic> data}) =>
      firestore.collection(collection).add(data);

  @override
  Future<void> updateDoc(
          {required String collection,
          required String id,
          required Map<String, dynamic> data}) =>
      firestore.collection(collection).doc(id).set(data);

  @override
  Future<List<QueryDocumentSnapshot<T>>> allDocs<T>(
      {required String collection,
      required model,
      required String orderBy}) async {
    var ref = await firestore
        .collection(collection)
        .withConverter<T>(
            fromFirestore: (snap, _) => model.fromJson(snap.data()!),
            toFirestore: (data, _) {
              model = data;
              return model.toJson();
            })
        .orderBy(orderBy)
        .get();

    return ref.docs;
  }

  @override
  Future<Either<FirestoreFailure, AppUser>> currentUser() async {
    try {
      var snapshot = await firestore
          .collection('users')
          .doc(firebaseAuth.currentUser!.uid)
          .get();
      return right(AppUser.fromDocument(snapshot));
    } catch (e) {
      return left(FirestoreFailure.serverError());
    }
  }
}
