import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@registerModule
abstract class ServiceModule {
  @preResolve
  Future<SharedPreferences> get dio => SharedPreferences.getInstance();
}
