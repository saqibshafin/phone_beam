// import 'package:fast_contacts/fast_contacts.dart';
// import 'package:flutter/material.dart';
// import 'package:signals/signals_flutter.dart';

// import '../data/constants/app_color.dart';

// class ContactsListViewFast extends StatefulWidget {
//   const ContactsListViewFast({super.key});

//   @override
//   State<ContactsListViewFast> createState() => _ContactsListViewFastState();
// }

// class _ContactsListViewFastState extends State<ContactsListViewFast> {
//   /// --------Contacts--------
//   final isLoadingContactsList = signal(false);
//   List<Contact> contacts = <Contact>[];
//   bool phoneContactsPermissionDenied = false;

//   @override
//   Widget build(BuildContext context) {
//     return 
//     // Obx(
//     //   () => controller.isLoadingContactsList.value
//     //       ? Center(
//     //           child: CircularProgressIndicator(
//     //             color: AppColors.primary,
//     //           ),
//     //         )
//     //       : controller.contactsFast.isNotEmpty
//     //           ?
//     Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: const BorderRadius.only(
//                       bottomLeft: Radius.circular(20),
//                       bottomRight: Radius.circular(20),
//                     ),
//                   ),
//                   child: ListView.builder(
//                     padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
//                     shrinkWrap: true,
//                     itemCount: 2,
//                     // itemCount: controller.contactsFast.length,
//                     itemBuilder: ((context, index) {
//                       Contact contact = controller.contactsFast[index];
//                       String name = contact.displayName.isEmpty
//                           ? "N/A"
//                           : contact.displayName;
//                       String phoneNumber = contact.phones.isEmpty
//                           ? "N/A"
//                           : contact.phones.first.number;

//                       return Material(
//                         // for showing CheckboxListTile's splash.
//                         //
//                         color: AppColors.white,
//                         child: Obx(
//                           () {
//                             controller.hasChangedContactSelection.value;

//                             return CheckboxListTile(
//                               value: controller.contactsSelectionStatus[index],
//                               contentPadding:
//                                   const EdgeInsets.fromLTRB(0, 0, 0, 0),
//                               visualDensity: const VisualDensity(
//                                   horizontal: -4, vertical: -4),
//                               controlAffinity: ListTileControlAffinity.leading,
//                               fillColor: MaterialStatePropertyAll<Color>(
//                                   AppColors.primary),
//                               onChanged: (isSelected) async {
//                                 if (name == "N/A") {
//                                   UiHelper.showErrorSnackBar(
//                                       context, "This Contact has no Name.");

//                                   return;
//                                 }
//                                 if (phoneNumber == "N/A") {
//                                   UiHelper.showErrorSnackBar(
//                                       context, "This Contact has no Number.");

//                                   return;
//                                 }

//                                 controller.contactsSelectionStatus[index] =
//                                     isSelected!;

//                                 controller.hasChangedContactSelection.refresh();
//                               },
//                               title: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(name),
//                                   Text(phoneNumber),
//                                 ],
//                               ),
//                               // Text(
//                               //     'Phone number: ${contact.phones.isNotEmpty ? contact.phones.first.number : '(none)'}'),
//                             );
//                           },
//                         ),
//                       );
//                     }),
//                   ),
//                 )
//               // : Container(
//               //     width: double.infinity,
//               //     decoration: BoxDecoration(
//               //         color: AppColors.white,
//               //         borderRadius: const BorderRadius.only(
//               //           bottomLeft: Radius.circular(20),
//               //           bottomRight: Radius.circular(20),
//               //         )),
//               //     child: Column(
//               //       children: [
//               //         const SizedBox(height: 8),
//               //         Text(
//               //           "Phone Contacts",
//               //           style: Get.textTheme.titleMedium,
//               //         ),

//               //         //
//               //         // "Get.height * 0.83" is height of the Recipient dialog
//               //         SizedBox(height: Get.height * 0.83 * .35),
//               //         Text(
//               //           "No Contacts Found in Phone",
//               //           style: Get.textTheme.titleMedium!.copyWith(
//               //             color: AppColors.grey,
//               //           ),
//               //         ),
//               //       ],
//               //     ),
//               //   ),
//     )
//   }
// }
