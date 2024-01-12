//
// With Riverpod
//

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:phone_beam/app/ui/contacts_dialog_fast.dart';
// import 'package:phone_beam/app/ui/contacts_grid_view.dart';
// import 'package:phone_beam/app/ui/fast_contacts_example_page.dart';
// import 'package:phone_beam/app/ui/global_widgets/app_dialog.dart';
// import 'package:phone_beam/app/ui/global_widgets/app_icon_button.dart';

// void main() {
//   // runApp(const MyApp());
//   runApp(const ProviderScope(child: MyApp()));
// }

// /// Providers are declared globally and specify how to create a state
// final counterProvider = NotifierProvider<Counter, int>(Counter.new);

// class Counter extends Notifier<int> {
//   @override
//   int build() {
//     // Inside "build", we return the initial state of the counter.
//     return 0;
//   }

//   void increment() {
//     state++;
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Phone Beam',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// // class HomePage extends StatefulWidget {
// class HomePage extends ConsumerWidget {
//   const HomePage({Key? key}) : super(key: key);

//   // @override
//   // State<HomePage> createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   final TextEditingController _numberCtrl = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     _numberCtrl.text = "085921191121";
// //   }

//   @override
//   // Widget build(BuildContext context) {
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text('Plugin example app'),
//         actions: [
//           AppIconButton(
//             icon: Icons.contacts_rounded,
//             onTap: () async {
//               // return Get.dialog(const ContactsDialogFast());
//               showDialog<void>(
//                 context: context,
//                 // barrierDismissible: false, // user must tap button!
//                 builder: (BuildContext context) {
//                   // return AlertDialog(
//                   //   title: const Text('AlertDialog Title'),
//                   //   content: const SingleChildScrollView(
//                   //     child: ListBody(
//                   //       children: <Widget>[
//                   //         Text('This is a demo alert dialog.'),
//                   //         Text('Would you like to approve of this message?'),
//                   //       ],
//                   //     ),
//                   //   ),
//                   //   actions: <Widget>[
//                   //     TextButton(
//                   //       child: const Text('Cancel'),
//                   //       onPressed: () {
//                   //         Navigator.of(context).pop();
//                   //       },
//                   //     ),
//                   //     TextButton(
//                   //       child: const Text('Approve'),
//                   //       onPressed: () {
//                   //         Navigator.of(context).pop();
//                   //       },
//                   //     ),
//                   //   ],
//                   // );
//                   //
//                   return const AppDialog(body: ContactsDialogFast());
//                 },
//               );
//             },
//           ),
//           const SizedBox(width: 4),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         key: const Key('increment_floatingActionButton'),
//         // The read method is a utility to read a provider without listening to it
//         onPressed: () => ref.read(counterProvider.notifier).increment(),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//       body: Column(
//         children: <Widget>[
//           // Padding(
//           //   padding: const EdgeInsets.all(8.0),
//           //   child: TextField(
//           //     controller: _numberCtrl,
//           //     decoration: const InputDecoration(labelText: "Phone Number"),
//           //     keyboardType: TextInputType.number,
//           //   ),
//           // ),
//           // ElevatedButton(
//           //   child: const Text("Test Call"),
//           //   onPressed: () async {
//           //     FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
//           //   },
//           // ),

//           //
//           const Text('You have pushed the button this many times:'),
//           Consumer(
//             builder: (context, ref, _) {
//               final count = ref.watch(counterProvider);
//               return Text(
//                 '$count',
//                 key: const Key('counterState'),
//                 style: Theme.of(context).textTheme.headlineMedium,
//               );
//             },
//           ),

//           //
//           ElevatedButton(
//             child: const Text("FastContacts Page"),
//             onPressed: () async {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const FastContactsExamplePage(),
//                 ),
//               );
//             },
//           ),

//           //
//           const SizedBox(height: 12),
//           const ContactsGridView(),
//         ],
//       ),
//     );
//   }
// }

//
// Riverpod demo
//

// // Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// // for details. All rights reserved. Use of this source code is governed by a
// // BSD-style license that can be found in the LICENSE file.

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// // This is a reimplementation of the default Flutter application
// // using riverpod.
// void main() {
//   runApp(
//     // Adding ProviderScope enables Riverpod for the entire project
//     const ProviderScope(child: MyApp()),
//   );
// }

// /// Providers are declared globally and specify how to create a state
// final counterProvider = NotifierProvider<Counter, int>(Counter.new);

// class Counter extends Notifier<int> {
//   @override
//   int build() {
//     // Inside "build", we return the initial state of the counter.
//     return 0;
//   }

//   void increment() {
//     state++;
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorSchemeSeed: Colors.blue,
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Riverpod example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Consumer(
//               builder: (context, ref, _) {
//                 final count = ref.watch(counterProvider);
//                 return Text(
//                   '$count',
//                   key: const Key('counterState'),
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         key: const Key('increment_floatingActionButton'),
//         // The read method is a utility to read a provider without listening to it
//         onPressed: () => ref.read(counterProvider.notifier).increment(),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

//
// Signals demo
//

// import 'package:flutter/material.dart';
// import 'package:signals/signals_flutter.dart';

// final brightness = signal(Brightness.light);
// final themeMode = computed(() {
//   if (brightness() == Brightness.dark) {
//     return ThemeMode.dark;
//   } else {
//     return ThemeMode.light;
//   }
// });

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple,
//           brightness: Brightness.light,
//         ),
//         brightness: Brightness.light,
//         useMaterial3: true,
//       ),
//       darkTheme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple,
//           brightness: Brightness.dark,
//         ),
//         brightness: Brightness.dark,
//         useMaterial3: true,
//       ),
//       themeMode: themeMode.watch(context),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final counter = signal(0);

//   void _incrementCounter() {
//     counter.value++;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         actions: [
//           Watch((_) {
//             // final isDark = brightness() == Brightness.dark;
//             final isDark = brightness.value == Brightness.dark;
//             return IconButton(
//               onPressed: () {
//                 brightness.value = isDark ? Brightness.light : Brightness.dark;
//               },
//               icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
//             );
//           }),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Watch((context) {
//               return Text(
//                 '$counter',
//                 style: Theme.of(context).textTheme.headlineMedium!,
//               );
//             }),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

//
// With Signals
//

import 'package:flutter/material.dart';

import 'package:signals/signals_flutter.dart';

import 'package:phone_beam/app/ui/contacts_dialog_fast.dart';
import 'package:phone_beam/app/ui/contacts_grid_view.dart';
import 'package:phone_beam/app/ui/fast_contacts_example_page.dart';
import 'package:phone_beam/app/ui/global_widgets/app_dialog.dart';
import 'package:phone_beam/app/ui/global_widgets/app_icon_button.dart';

final brightness = signal(Brightness.light);
final themeMode = computed(() {
  if (brightness() == Brightness.dark) {
    return ThemeMode.dark;
  } else {
    return ThemeMode.light;
  }
});

void main() {
  // runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Beam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: themeMode.watch(context),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

// class HomePage extends ConsumerWidget {
//   const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//   final TextEditingController _numberCtrl = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _numberCtrl.text = "085921191121";
//   }

  final counter = signal(0);

  void _incrementCounter() {
    counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Plugin example app'),
        actions: [
          AppIconButton(
            icon: Icons.contacts_rounded,
            onTap: () async {
              showDialog<void>(
                context: context,
                // barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  // return AlertDialog(
                  //   title: const Text('AlertDialog Title'),
                  //   content: const SingleChildScrollView(
                  //     child: ListBody(
                  //       children: <Widget>[
                  //         Text('This is a demo alert dialog.'),
                  //         Text('Would you like to approve of this message?'),
                  //       ],
                  //     ),
                  //   ),
                  //   actions: <Widget>[
                  //     TextButton(
                  //       child: const Text('Cancel'),
                  //       onPressed: () {
                  //         Navigator.of(context).pop();
                  //       },
                  //     ),
                  //     TextButton(
                  //       child: const Text('Approve'),
                  //       onPressed: () {
                  //         Navigator.of(context).pop();
                  //       },
                  //     ),
                  //   ],
                  // );
                  //
                  return const AppDialog(body: ContactsDialogFast());
                },
              );
            },
          ),
          const SizedBox(width: 4),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('increment_floatingActionButton'),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextField(
          //     controller: _numberCtrl,
          //     decoration: const InputDecoration(labelText: "Phone Number"),
          //     keyboardType: TextInputType.number,
          //   ),
          // ),
          // ElevatedButton(
          //   child: const Text("Test Call"),
          //   onPressed: () async {
          //     FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
          //   },
          // ),

          //
          const Text('You have pushed the button this many times:'),
          Watch((context) {
            return Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            );
          }),

          //
          ElevatedButton(
            child: const Text("FastContacts Page"),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FastContactsExamplePage(),
                ),
              );
            },
          ),

          //
          const SizedBox(height: 12),
          const ContactsGridView(),
        ],
      ),
    );
  }
}
