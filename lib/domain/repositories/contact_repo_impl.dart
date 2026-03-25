import '../../data/models/contact_list_model.dart';

import '../../domain/repositories/contact_repository.dart';
import '../entities/contact_list.dart';


class ContactRepoImpl implements ContactRepository {
  @override
  List<Contact> getContacts() {
    return [
      ContactModel(name: "Rahim", phone: "01711111111"),
      ContactModel(name: "Karim", phone: "01822222222"),
      ContactModel(name: "Hasan", phone: "01933333333"),
      ContactModel(name: "Naeem", phone: "01644444444"),
      ContactModel(name: "Sadia", phone: "01555555555"),
    ];
  }
}