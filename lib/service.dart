/// service.dart
import 'package:auth0_flutter/auth0_flutter.dart';

const appScheme = 'flutterdemo';

class Auth0Service {
  final Auth0 auth0 = Auth0(
      'dev-yektcg3n3kelwp62.us.auth0.com', 'cc3T7r9txW2wfjbujplsV2Ez2D4JOZlB');

  Future<Credentials> login() async {
    return await auth0.webAuthentication(scheme: appScheme).login();
  }

  Future<void> logout() async {
    await auth0.webAuthentication(scheme: appScheme).logout();
  }
}
