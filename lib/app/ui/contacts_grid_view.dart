// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ContactsGridView extends StatelessWidget {
  const ContactsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        // itemCount: 20,
        itemCount: Contact.contacts.length,
        itemBuilder: (context, index) {
          Contact contact = Contact.contacts[index];

          return Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  FlutterPhoneDirectCaller.callNumber(contact.phoneNumber!);
                },
                child: Text("${index + 1}"),
              ),
              Text(
                // "Contact ${index + 1}",
                "${contact.name}",
                style: const TextStyle(fontSize: 12),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Contact {
  Contact({
    this.name,
    this.phoneNumber,
  });

  String? name;
  String? phoneNumber;

  static List<Contact> contacts = <Contact>[
    Contact(name: "Abbu Air", phoneNumber: "01675033612"),
    Contact(name: "Abbu gp", phoneNumber: "+8801716904415"),
    Contact(name: "Ammu", phoneNumber: "8801757371577"),
    Contact(name: "Apu Blink 2", phoneNumber: "+8801923918147"),
    Contact(name: "Arshin", phoneNumber: "+8801603099736"),
  ];
}
