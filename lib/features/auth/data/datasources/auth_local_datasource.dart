import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dtoro/features/auth/data/models/user_model.dart';
import 'package:dtoro/features/user/domain/entities/user_entity.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheUser(UserEntity user);
  Future<UserEntity?> getCachedUser();
  Future<void> clearCache();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  const AuthLocalDataSourceImpl(this._prefs);

  final SharedPreferences _prefs;
  static const String _userKey = 'cached_user';

  @override
  Future<void> cacheUser(UserEntity user) async {
    final userModel = UserModel.fromEntity(user);
    final userJson = jsonEncode(userModel.toJson());
    await _prefs.setString(_userKey, userJson);
  }

  @override
  Future<UserEntity?> getCachedUser() async {
    final userJson = _prefs.getString(_userKey);
    if (userJson == null) return null;
    
    try {
      final userMap = jsonDecode(userJson) as Map<String, dynamic>;
      final userModel = UserModel.fromJson(userMap);
      return userModel.toEntity();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> clearCache() async {
    await _prefs.remove(_userKey);
  }
}