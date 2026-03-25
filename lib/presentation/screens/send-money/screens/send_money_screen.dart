import 'package:bkashdemoapp/core/app_colors.dart';
import 'package:bkashdemoapp/presentation/screens/send-money/screens/send_money_amount_screen.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/contact_list.dart';
import '../../../../domain/usecases/get_contact.dart';
import '../data/datasources/contact_local_datasource.dart';
import '../domain/reporistry/contact_repository_impl.dart';
import '../widgets/search_field.dart';
import '../widgets/send_money_screen_widgets.dart' hide ContactSearchField;


class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  late final List<Contact> _allContacts;
  List<Contact> _filteredContacts = [];
  double availableBalance = 2365.50;

  @override
  void initState() {
    super.initState();

    final dataSource = ContactLocalDataSource();
    final repository = ContactRepositoryImpl(dataSource);
    final getContacts = GetContacts(repository);

    _allContacts = getContacts();
    _filteredContacts = _allContacts;
  }

  void _filterContacts(String input) {
    setState(() {
      if (input.isEmpty) {
        _filteredContacts = _allContacts;
      } else {
        final query = input.toLowerCase();

        _filteredContacts = _allContacts.where((contact) {
          final nameMatch =
          contact.name.toLowerCase().contains(query);
          final phoneMatch =
          contact.phone.contains(query);
          return nameMatch || phoneMatch;
        }).toList();
      }
    });
  }

  List<Contact> get _recentContacts =>
      _allContacts.take(3).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Send Money"),
        backgroundColor: AppColors.primary,
      ),
      body: Column(
        children: [
          ContactSearchField(
            onChanged: _filterContacts,
          ),

          TopActionRow(),

          Expanded(
            child: ListView(
              children: [
                SectionTitle(title: "Recent"),

                ..._recentContacts.map(
                      (contact) => ContactTile(
                    contact: contact,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              SendMoneyAmountScreen(
                                receiverNumber:
                                contact.phone,
                                availableBalance:
                                availableBalance,
                              ),
                        ),
                      );
                    },
                  ),
                ),

                SectionTitle(title: "All Contacts"),

                ..._filteredContacts.map(
                      (contact) => ContactTile(
                    contact: contact,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              SendMoneyAmountScreen(
                                receiverNumber:
                                contact.phone,
                                availableBalance:
                                availableBalance,
                              ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}