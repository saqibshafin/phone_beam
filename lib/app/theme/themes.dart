import 'package:flutter/material.dart';

import '../data/constants/app_color.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    primaryTextTheme: ThemeData.light().textTheme.apply(
          bodyColor: AppColors.red,
          displayColor: AppColors.red, // TODO can't make it work!
        ),
    cardColor: Colors.white,
    // why doesn't it have an effect? :
    // bottomAppBarTheme: BottomAppBarTheme(color: AppColors.red),
    scaffoldBackgroundColor: Colors.grey[200],
    // scaffoldBackgroundColor: Colors.white,
    shadowColor: Colors.grey,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),

    // App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      // backgroundColor: AppColors.secondary,
      titleTextStyle: TextStyle(
        // fontFamily: 'Bangla',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        // color: AppColors.black,
        color: AppColors.white,
      ),
    ),

    // elevatedButtonTheme:
    //     ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),

    //
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      focusColor: AppColors.red,
      // prefixIconColor: AppColors.primary,
      // iconColor: AppColors.primary,
      //
      // https://youtu.be/H2xNq5ph8OE?t=270 | Flutter Themes: Input Decoration (TextFormField and TextField)
      // border: InputBorder.none,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.red),
      ),
    ),
    // highlightColor: Colors.red, // splashcolor
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.primary),
    ),
    // useMaterial3: true,

    textSelectionTheme: TextSelectionThemeData(
      selectionColor: AppColors.primaryMedium,
      selectionHandleColor: AppColors.primary,
      cursorColor: AppColors.primary,
    ),

    textTheme: const TextTheme().copyWith(
      headlineLarge: TextStyle(color: AppColors.grey, fontSize: 24),
      headlineMedium: TextStyle(color: AppColors.grey, fontSize: 22),
      headlineSmall: TextStyle(color: AppColors.grey, fontSize: 20),
      //
      displayLarge: TextStyle(color: AppColors.black, fontSize: 24),
      displayMedium: TextStyle(color: AppColors.black, fontSize: 22),
      displaySmall: TextStyle(color: AppColors.black, fontSize: 20),

      titleLarge: TextStyle(color: AppColors.black, fontSize: 20),
      titleMedium: TextStyle(
        color: AppColors.black,
        // fontFamily: 'Bangla',
        fontSize: 18,
        fontWeight: FontWeight.w400, // w400 same as "normal"
      ),
      titleSmall: TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),

      // bodySmall
      bodyLarge: TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: AppColors.black,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    ),

    // Popup Menu Theme
    popupMenuTheme: PopupMenuThemeData(
      textStyle: TextStyle(color: AppColors.black),
    ),

    //
    bottomSheetTheme: const BottomSheetThemeData(
        // backgroundColor: AppColors.greyLight,
        ),

    //
    listTileTheme: ListTileThemeData(
      textColor: AppColors.black,
    ),
    // tabBarTheme: TabBarTheme(
    //   labelStyle: Get.textTheme.titleMedium,
    // ),

    // FIXME::shafin splashradius!!!
    // iconButtonTheme: IconButtonThemeData(
    //   style: ButtonStyle(),
    // ),

    timePickerTheme: TimePickerThemeData(
      backgroundColor: AppColors.primaryLight,

      // FIXME::shafin why can't i set 'cancel' button color!
      cancelButtonStyle: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(color: Colors.red),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.red,
        ),
      ),
      confirmButtonStyle: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(color: Colors.red),
        ),
      ),

      // inputDecorationTheme: InputDecorationTheme(
      //   focusColor: AppColors.red,
      //   filled: true,
      //   fillColor: AppColors.primary,
      //   focusedBorder: OutlineInputBorder(
      //     borderSide: BorderSide(
      //       color: AppColors.primary,
      //       width: 1.0,
      //     ),
      //     gapPadding: 0,
      //   ),
      // ),
      // inputDecorationTheme: const InputDecorationTheme(
      //   // border: InputBorder.none,
      //   contentPadding: EdgeInsets.all(0),
      // ),

      // hourMinuteShape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(8)),
      //   side: BorderSide(color: Colors.orange, width: 4),
      // ),
      dayPeriodBorderSide: BorderSide(color: AppColors.black, width: .5),
      dayPeriodColor: MaterialStateColor.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? AppColors.lightPink
              : AppColors.grey.withOpacity(.3)),
      // shape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(8)),
      //   side: BorderSide(color: Colors.orange, width: 4),
      // ),
      dayPeriodTextColor: AppColors.black,
      // dayPeriodShape: const RoundedRectangleBorder(
      //   borderRadius: BorderRadius.all(Radius.circular(8)),
      //   side: BorderSide(color: Colors.orange, width: 4),
      // ),
      hourMinuteColor: MaterialStateColor.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? AppColors.primaryMedium
              : AppColors.grey.withOpacity(.3)),
      hourMinuteTextColor: AppColors.black,
      dialHandColor: AppColors.primary,
      // dialBackgroundColor: Colors.blue 800,
      // dialTextColor: MaterialStateColor.resolveWith((states) =>
      //     states.contains(MaterialState.selected)
      //         ? Colors.orange
      //         : Colors.white),

      helpTextStyle: TextStyle(
          fontSize: 16, fontWeight: FontWeight.normal, color: AppColors.black),
      dayPeriodTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      hourMinuteTextStyle: const TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.normal,
      ),

      entryModeIconColor: AppColors.primary,
    ),
  );

  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.grey[900],
    cardColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[800],
    shadowColor: Colors.grey,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[300]),
  );
}
