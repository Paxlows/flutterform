import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String dorpDownValue = "Single";
    String dorpDownValue1 = "02";
    bool checkValue = false;

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
                                  return DropdownButton<String>(
                                    dropdownColor: Colors.white,
                                    underline: const SizedBox(),
                                    value: dorpDownValue1,
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.white),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dorpDownValue1 = newValue!;
                                      });
                                    },
                                    items: <String>['02', '03', '04']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                              color: Colors.black),
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
                                    dropdownColor: Colors.white,
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
                                              color: Colors.black),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            maxLines: null,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "Option:1",
                              labelStyle: const TextStyle(color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            maxLines: null,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: "Option:2",
                              labelStyle: const TextStyle(color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.white),
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
                    ),
                    const SizedBox(height: 20),
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
