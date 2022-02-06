import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Repository {
  final FirebaseAuth firebaseAuth = Get.find<FirebaseAuth>();
  final FirebaseFirestore firestore = Get.find<FirebaseFirestore>();
}
