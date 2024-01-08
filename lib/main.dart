import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phone_beam/app/ui/contacts_dialog_fast.dart';
import 'package:phone_beam/app/ui/contacts_grid_view.dart';
import 'package:phone_beam/app/ui/fast_contacts_example_page.dart';
import 'package:phone_beam/app/ui/global_widgets/app_dialog.dart';
import 'package:phone_beam/app/ui/global_widgets/app_icon_button.dart';

void main() {
  // runApp(const MyApp());
  runApp(const ProviderScope(child: MyApp()));
}

/// Providers are declared globally and specify how to create a state
final counterProvider = NotifierProvider<Counter, int>(Counter.new);

class Counter extends Notifier<int> {
  @override
  int build() {
    // Inside "build", we return the initial state of the counter.
    return 0;
  }

  void increment() {
    state++;
  }
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
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// class HomePage extends StatefulWidget {
class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  // @override
  // State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final TextEditingController _numberCtrl = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _numberCtrl.text = "085921191121";
//   }

  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Plugin example app'),
        actions: [
          AppIconButton(
            icon: Icons.contacts_rounded,
            onTap: () async {
              // return Get.dialog(const ContactsDialogFast());
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
        // The read method is a utility to read a provider without listening to it
        onPressed: () => ref.read(counterProvider.notifier).increment(),
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
          Consumer(
            builder: (context, ref, _) {
              final count = ref.watch(counterProvider);
              return Text(
                '$count',
                key: const Key('counterState'),
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),

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
