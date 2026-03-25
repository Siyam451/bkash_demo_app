import '../../../../../domain/entities/contact_list.dart';
import '../../../../../domain/repositories/contact_repository.dart';
import '../../data/datasources/contact_local_datasource.dart';


class ContactRepositoryImpl implements ContactRepository {
  final ContactLocalDataSource dataSource;

  ContactRepositoryImpl(this.dataSource);

  @override
  List<Contact> getContacts() {
    return dataSource.getContacts();
  }
}