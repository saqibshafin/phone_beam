// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:developer';

// import 'package:flutter/services.dart';
// import 'package:get/get.dart';

// import 'package:flutter_contacts/flutter_contacts.dart';
// //
// import 'package:fast_contacts/fast_contacts.dart' as fast_c;

// import 'package:flutter_sendspark/app/controllers/base_controller.dart';
// import 'package:permission_handler/permission_handler.dart';

// import '../data/models/person.dart';
// import '../data/repositories/i_sms_repository.dart';

// class PeopleController extends BaseController {
//   PeopleController(this._smsRepository);

//   final ISmsRepository _smsRepository;

//   RxBool isUpdatingPerson = false.obs;

//   List<Person> people = <Person>[
//     // Person(name: "Valery", mobileNumber: "01675725644"),
//     // Person(name: "Viktor", mobileNumber: "8801675725644"),
//     // Person(name: "Yugene", mobileNumber: "+8801675725644"),
//     // Person(name: "Elizah", mobileNumber: "01675725644"),
//     // Person(name: "Enoch", mobileNumber: "8801675725644"),
//     // Person(name: "Salah Ad Din", mobileNumber: "+8801675725644"),
//     // Person(name: "Konstantin", mobileNumber: "01675725644"),
//     // Person(name: "Wallace", mobileNumber: "01675725644"),
//     // Person(name: "Bonaparte", mobileNumber: "01675725644"),
//     //
//     // Person(name: "Valery", mobileNumber: "01675725644"),
//     // Person(name: "Viktor", mobileNumber: "01675725644"),
//     // Person(name: "Yugene", mobileNumber: "01675725644"),
//     // Person(name: "Elizah", mobileNumber: "01675725644"),
//     // Person(name: "Enoch", mobileNumber: "01675725644"),
//     // Person(name: "Salah Ad Din", mobileNumber: "01675725644"),
//     // Person(name: "Konstantin", mobileNumber: "01675725644"),
//     // Person(name: "Wallace", mobileNumber: "01675725644"),
//   ];

//   /// --------People--------
//   var isLoadingPeopleList = false.obs;
//   var totalPeopleCount = 0.obs;
//   var selectedPeopleCount = 0.obs;
//   var hasChangedPeopleSelection = false.obs;
//   var hasSelectedAllPeople = false.obs;

//   /// --------Contacts--------
//   var isLoadingContactsList = false.obs;
//   List<Contact> contacts = <Contact>[];
//   bool phoneContactsPermissionDenied = false;
//   //
//   List<bool> contactsSelectionStatus = <bool>[];
//   var hasChangedContactSelection = false.obs;
//   //
//   // List<fast_c.Contact> contactsFast = const [];
//   List<fast_c.Contact> contactsFast = <fast_c.Contact>[];
//   final List<fast_c.ContactField> _fields = fast_c.ContactField.values.toList();
//   String? _text;

//   @override
//   Future<void> onInit() async {
//     super.onInit();

//     await getAllPeople();
//   }

//   Future<void> createPerson(Person person) async {
//     try {
//       isLoadingPeopleList.value = true;

//       await _smsRepository.createPerson(person);
//       people.add(person);
//       // TODO update "people" with the newly created Person from the DB
//     } catch (e) {
//       log("Dev:: PeopleController error @createPerson => $e");
//     } finally {
//       isLoadingPeopleList.value = false;
//     }
//   }

//   // Used while importing multiple Contacts:
//   // Future<void> createPeople(List<Person> persons) async {
//   Future<void> createPeople() async {
//     try {
//       isLoadingPeopleList.value = true;

//       List<Person> tempPeople = <Person>[];

//       for (int i = 0; i < contactsSelectionStatus.length; i++) {
//         if (contactsSelectionStatus[i] == true) {
//           fast_c.Contact contact = contactsFast[i];
//           String name =
//               contact.displayName.isEmpty ? "N/A" : contact.displayName;
//           String phoneNumber =
//               contact.phones.isEmpty ? "N/A" : contact.phones.first.number;

//           tempPeople.add(
//             Person(
//               name: name,
//               mobileNumber: phoneNumber,
//             ),
//           );
//         }
//       }

//       await _smsRepository.createPeople(tempPeople);
//       people.addAll(tempPeople);
//       // TODO update "people" with newly created Persons from the DB
//     } catch (e) {
//       log("Dev:: PeopleController error @createPeople => $e");
//     } finally {
//       isLoadingPeopleList.value = false;
//     }
//   }

//   Future<void> getAllPeople() async {
//     try {
//       isLoadingPeopleList.value = true;

//       List<Person> people = <Person>[];
//       people = await _smsRepository.getAllPeople();
//       this.people.clear();
//       this.people.addAll(people);
//       //
//     } catch (e) {
//       log("Dev:: PeopleController error @getAllPeople => $e");
//     } finally {
//       isLoadingPeopleList.value = false;
//     }
//   }

//   Future<void> updatePerson(int idx) async {
//     try {
//       isLoadingPeopleList.value = true;
//       await _smsRepository.updatePerson(people[idx]);
//     } catch (e) {
//       log("Dev:: PeopleController error @updatePerson => $e");
//     } finally {
//       isLoadingPeopleList.value = false;
//     }
//   }

//   Future<void> deletePerson(int index) async {
//     try {
//       isLoadingPeopleList.value = true;

//       int id = people[index].id!;
//       await _smsRepository.deletePerson(id);

//       people.removeAt(index);
//     } catch (e) {
//       log("Dev:: PeopleController error @deletePerson => $e");
//     } finally {
//       isLoadingPeopleList.value = false;
//     }
//   }

//   Future fetchContacts() async {
//     try {
//       isLoadingContactsList.value = true;

//       if (!await FlutterContacts.requestPermission(readonly: true)) {
//         phoneContactsPermissionDenied = true;
//       } else {
//         final contacts = await FlutterContacts.getContacts();
//         this.contacts.clear();
//         this.contacts.addAll(contacts);
//         contactsSelectionStatus.clear();
//         contactsSelectionStatus
//             .addAll(List.generate(contacts.length, (index) => false));
//       }
//     } catch (e) {
//       log("Dev:: PeopleController error @fetchContacts => $e");
//     } finally {
//       isLoadingContactsList.value = false;
//     }
//   }

//   Future<void> loadContacts() async {
//     try {
//       isLoadingContactsList.value = true;

//       await Permission.contacts.request();
//       final sw = Stopwatch()..start();
//       contactsFast = await fast_c.FastContacts.getAllContacts(fields: _fields);
//       // Sorting in ascending Alphabetical order:
//       contactsFast.sort((a, b) => a.displayName.compareTo(b.displayName));
//       // Sorting in descending Alphabetical order:
//       // contactsFast.sort((a, b) => b.displayName.compareTo(a.displayName));
//       //
//       sw.stop();

//       contactsSelectionStatus.clear();
//       contactsSelectionStatus
//           .addAll(List.generate(contactsFast.length, (index) => false));

//       _text =
//           'Contacts: ${contactsFast.length}\nTook: ${sw.elapsedMilliseconds}ms';
//     } on PlatformException catch (e) {
//       _text = 'Failed to get contacts:\n${e.details}';
//     } finally {
//       isLoadingContactsList.value = false;
//     }
//   }
// }

// // class Person {
// //   Person({
// //     this.id,
// //     this.name,
// //     this.mobileNumber,

// //     //
// //     this.isSelected = false,
// //   });

// //   int? id;
// //   String? name;
// //   String? mobileNumber;
// //   //
// //   bool? isSelected;

// //   Person copyWith({int? id, String? name, String? mobileNumber}) {
// //     return Person(
// //       id: id ?? this.id,
// //       name: name ?? this.name,
// //       mobileNumber: mobileNumber ?? this.mobileNumber,
// //     );
// //   }
// // }
