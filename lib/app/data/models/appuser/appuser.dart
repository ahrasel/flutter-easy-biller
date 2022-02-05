import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helpers/model_helpers.dart';

part 'appuser.freezed.dart';
part 'appuser.g.dart';

@freezed
abstract class AppUser implements _$AppUser {
  const AppUser._();

  const factory AppUser({
    required String id,
    String? name,
    @Default(false) bool active,
    String? createdAt,
    String? updatedAt,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);

  factory AppUser.empty() => const AppUser(id: '');

  factory AppUser.fromDocument(DocumentSnapshot doc) =>
      AppUser.fromJson(ModelHelpers().fromDocument(doc.data()!)).copyWith(id: doc.id);

  Map<String, dynamic> toDocument() => ModelHelpers().toDocument(toJson());
}
