import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int selectedIndex = 0;
  final List<String> imageList = [
    "https://plus.unsplash.com/premium_photo-1667311649552-2cfab63bdcfc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmF0dXJlJTIwaW1hZ2VzfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1669050703856-dd4845c7b3e9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1669050703788-b266591df14a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1547207222-2cb1acf03f19?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://stock.adobe.com/in/images/lord-rama-aiming-with-bow-and-arrow/520385947"
  ];
  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;
      if (selectedIndex == 4) {
        selectedIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Display Image"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                imageList[selectedIndex],
                height: 300,
                width: 300,
              ),
              ElevatedButton(
                  onPressed: showNextImage, child: const Text("next")),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: const Text("Reset"))
            ],
          ),
        ));
  }
}
