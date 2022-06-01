import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String dorpDownValue = "Single";
    int dorpDownValue1 = 02;
    bool checkValue = false;
    Widget options(int optionNumber) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              maxLines: null,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Option:$optionNumber",
                labelStyle: const TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            child: StatefulBuilder(
              builder: (BuildContext context, setState) {
                return Checkbox(
                  checkColor: Colors.black,
                  activeColor: Colors.white,
                  side: const BorderSide(color: Colors.white),
                  value: checkValue,
                  onChanged: (bool? value) {
                    setState(() {
                      checkValue = value!;
                    });
                  },
                );
              },
            ),
          ),
        ],
      );
    }

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        home: SafeArea(
          child: Scaffold(
            backgroundColor: const Color.fromRGBO(13, 17, 23, 1.0),
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    TextField(
                      maxLines: null,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Questions",
                        labelStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Options",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(width: 10),
                                StatefulBuilder(builder: (BuildContext context,
                                    StateSetter setState) {
                                  return DropdownButton<int>(
                                    dropdownColor: Colors.black,
                                    underline: const SizedBox(),
                                    value: dorpDownValue1,
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.white),
                                    onChanged: (int? newValue) {
                                      setState(() {
                                        dorpDownValue1 = newValue!;
                                      });
                                    },
                                    items: <int>[
                                      02,
                                      03,
                                      04
                                    ].map<DropdownMenuItem<int>>((int value) {
                                      return DropdownMenuItem<int>(
                                        value: value,
                                        child: Text(
                                          '$value',
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      );
                                    }).toList(),
                                  );
                                })
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            width: 180,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Choices",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                const SizedBox(width: 5),
                                StatefulBuilder(builder: (BuildContext context,
                                    StateSetter setState) {
                                  return DropdownButton<String>(
                                    value: dorpDownValue,
                                    underline: const SizedBox(),
                                    dropdownColor: Colors.black,
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.white),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dorpDownValue = newValue!;
                                      });
                                    },
                                    items: <String>['Single', 'Multiple']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      );
                                    }).toList(),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    options(1),
                    const SizedBox(height: 20),
                    options(2),
                    const SizedBox(height: 20),
                    StatefulBuilder(
                      builder: (BuildContext context, setState) {
                        return dorpDownValue1 == 3
                            ? options(dorpDownValue1)
                            : options(0);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
