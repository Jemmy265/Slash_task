import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:slash_task/presentation/Styles.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  final List<String> locations = [
    'Nasr City',
    'Zamalek',
    'Giza',
    '6 october',
    'Sheraton',
  ];
  String? selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Slash.", style: MyTheme.LargeTitle),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageIcon(AssetImage("assets/images/location.png")),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text(
                      'Select location\nNasr City',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: locations
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedLocation,
                    onChanged: (String? value) {
                      setState(() {
                        selectedLocation = value!;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 40,
                      width: 140,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Stack(alignment: Alignment.topRight, children: [
          ImageIcon(AssetImage("assets/images/notification.png")),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 5,
          ),
        ])
      ],
    );
  }
}
