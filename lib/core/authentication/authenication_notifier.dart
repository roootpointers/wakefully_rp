import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/bloc/authentication_bloc.dart';

@singleton
class AuthenticationNotifier extends ChangeNotifier {
  late bool _isAuthenticated;
  final AuthenticationBloc _authenticationBloc;

  AuthenticationNotifier(this._authenticationBloc) {
    _isAuthenticated = _authenticationBloc.state is Authenticated;

    _authenticationBloc.stream.listen((state) {
      var isAuthenticated = state is Authenticated;
      notify(isAuthenticated);
    });
  }

  bool get isAuthenticated => _isAuthenticated;

  void notify(bool isAuthenticated) {
    if (_isAuthenticated == isAuthenticated) return;
    _isAuthenticated = isAuthenticated;
    notifyListeners();
  }
}
