import 'package:flutter/cupertino.dart';

import '../model/user.dart';

class UserProvider with ChangeNotifier {
  late Users users;
  late String errorMessage;
  bool loading = false;

  Future<bool> fetchUser(username) async {
    setLoaging(true);
  }

  void setLoaging(value) {
    loading = value;
    notifyListeners();
  }

  void setUser(value) {
    users = value;
    notifyListeners();
  }

  void setMessage(value) {
    errorMessage = value;
    notifyListeners();
  }

  bool isLoading() {
    return loading;
  }

  bool isUser() {
    return users != null ? true : false;
  }
}
