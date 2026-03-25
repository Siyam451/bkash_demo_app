import '../entities/contact_list.dart';
import '../repositories/contact_repository.dart';

class GetContacts {
  final ContactRepository repository;

  GetContacts(this.repository);

  List<Contact> call() {
    return repository.getContacts();
  }
}