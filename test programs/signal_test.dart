import 'package:signals/signals.dart';

void main() {
  final name = signal("Jane");
  final surname = signal("Doe");
  final fullName = computed(() => "${name.value} ${surname.value}");

// Logs: "Jane Doe"
  // effect(() => print(fullName.value));

  // Logs: "Jane Doe"
  final dispose = effect(() => print(fullName.value));

// Destroy effect and subscriptions
  dispose();

// Updating one of its dependencies will automatically trigger
// the effect above, and will print "John Doe" to the console.
  name.value = "John";
}
