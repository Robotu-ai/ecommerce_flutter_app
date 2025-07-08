import 'package:equatable/equatable.dart';

enum UserRole { chef, seller, admin }

class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.displayName,
    required this.email,
    required this.role,
    this.companyId,
    required this.createdAt,
  });

  final String id;
  final String displayName;
  final String email;
  final UserRole role;
  final String? companyId;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        displayName,
        email,
        role,
        companyId,
        createdAt,
      ];

  UserEntity copyWith({
    String? id,
    String? displayName,
    String? email,
    UserRole? role,
    String? companyId,
    DateTime? createdAt,
  }) {
    return UserEntity(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      role: role ?? this.role,
      companyId: companyId ?? this.companyId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}