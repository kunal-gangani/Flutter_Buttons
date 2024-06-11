import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<bool> isSelected = [false, false, false];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Buttons"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.ac_unit_outlined),
                ),
                const Text("Elevated Button"),
              ],
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Icon(Icons.access_alarm),
                ),
                const Text("Outlined Button")
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Text Button"),
                ),
                const Text("Text Button")
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.import_contacts),
                ),
                const Text("Icon Button"),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.accessibility_new),
                ),
                const Text("Floating Action Button")
              ],
            ),
            PopupMenuButton(
              child: const Center(child: Text('Pop-up Menu button')),
              itemBuilder: (context) {
                return List.generate(
                  5,
                  (index) {
                    return PopupMenuItem(
                      child: Text('Button no $index'),
                    );
                  },
                );
              },
            ),
            Row(
              children: [
                BackButton(
                  onPressed: () {},
                ),
                const Text("Back Button")
              ],
            ),
            Row(
              children: [
                CloseButton(
                  onPressed: () {},
                ),
                const Text("Close Button"),
              ],
            ),
            Row(
              children: [
                CupertinoButton(
                  child: const Icon(Icons.ios_share_outlined),
                  onPressed: () {},
                ),
                const Text("Cupertino Button")
              ],
            ),
            RawMaterialButton(
              onPressed: () {},
              shape: const StadiumBorder(),
              elevation: 2.0,
              fillColor: Colors.grey,
              splashColor: Colors.white,
              padding: const EdgeInsets.all(10.0),
              child: const Text('Click me'),
            ),
            ToggleButtons(
              onPressed: (int index) {},
              isSelected: const [true, false, false],
              children: const [
                Icon(Icons.format_bold),
                Icon(Icons.format_italic),
                Icon(Icons.format_underlined),
              ],
            ),
            ChoiceChip(
              label: const Text("Choice Chip"),
              selected: isSelected[0],
              onSelected: (bool value) {},
            ),
            FilterChip(
                label: const Text("Filter Chip"), onSelected: (bool value) {}),
            const ActionChip(
              label: Text("Action Chip"),
            ),
          ],
        ),
      ),
    );
  }
}
