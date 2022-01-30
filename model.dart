import 'package:flutter/cupertino.dart';

class Model extends ChangeNotifier{
  bool isMenuPressed = false;
  bool isAddressPressed = false;
  bool isCenterPlaceholderPressed = false;

  void menuPressed(){
    isMenuPressed ? isMenuPressed = false : isMenuPressed = true;
    if (isMenuPressed == true && isAddressPressed == true)
    {
      isAddressPressed = false;
    }
    notifyListeners();
    // print(isMenuPressed);
  }

  void addressPressed(){
    isAddressPressed ? isAddressPressed = false : isAddressPressed = true;
    if (isMenuPressed == true && isAddressPressed == true)
    {
      isMenuPressed = false;
    }
    notifyListeners();
  }

  void centerPlaceholderPressed(){
    isCenterPlaceholderPressed ? isCenterPlaceholderPressed = false : isCenterPlaceholderPressed = true;
    // if (isMenuPressed == true && isAddressPressed == true)
    // {
    //   isMenuPressed = false;
    // }
    notifyListeners();
  }
}