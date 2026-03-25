import 'package:bkashdemoapp/data/models/home_menu_item_model.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier{
 final List<HomeMenuItemModel> _allitems = HomeMenuItemModel.sampleData;
 bool _isExpended = false;
 bool get isExpended => _isExpended;

 List<HomeMenuItemModel> get visibleitems{
   if(_isExpended){
     return _allitems;
   }else{
     return _allitems.take(8).toList(); // first er 8ta show korbe normally
   }

 }

 void toogleExpended(){
   _isExpended = !_isExpended;
   notifyListeners();
 }
}