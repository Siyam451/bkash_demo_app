import '../../../../../domain/entities/contact_list.dart';


abstract class ContactRepository {
  List<Contact> getContacts();
}