import 'package:flutter/material.dart';
import 'package:phone_beam/app/data/constants/app_color.dart';
import 'package:phone_beam/app/ui/global_widgets/app_button.dart';

class ContactsDialogFast extends StatelessWidget {
  const ContactsDialogFast({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Container(
        width: size.width,
        height: size.height * 0.83,
        decoration: BoxDecoration(
          color: AppColors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  "Choose Contact/s",
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            // Obx(() {
            //   controller.isLoadingContactsList.value;

            //   return controller.contactsFast.isNotEmpty
            //       ? controller.hideWidget
            //           ? const SizedBox.shrink()
            // :
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: SizedBox(
                height: 50,
                child: TextField(
                  cursorColor: AppColors.primary,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    hintText: "Search Contacts",
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: MaterialStateColor.resolveWith((states) {
                      if (states.contains(MaterialState.focused)) {
                        return AppColors.primary;
                      } else {
                        return AppColors.grey;
                      }
                    }),
                  ),
                ),
              ),
            ),
            // : const SizedBox.shrink();
            // }),

            // Expanded(
            //   flex: 1,
            //   child: ContactsListViewFast(),
            // ),

            //
            Padding(
              padding: const EdgeInsets.all(12),
              child: AppButton(
                text: "Add Contact/s",
                height: 44,
                radius: 8,
                color: AppColors.primary,
                onTap: () async {
                  // Get.back();

                  // await controller.createPeople();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
