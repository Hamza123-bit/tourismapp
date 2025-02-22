import 'package:signuppage/core/base_view_model/base_view_model.dart';

class SignUpViewModel extends BaseViewModel{

    int counter = 0;

  incrementCounter() {

      counter++;
notifyListeners();
  }

}