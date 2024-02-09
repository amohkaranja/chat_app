import 'package:chat_app/components/base_ui.dart';
import 'package:chat_app/screens/chat.dart';
import 'package:chat_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: AppTheme.secondaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const  ChatScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  color: Colors.green,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UI.text("Amos Ngigi", fontWeight: FontWeight.bold),
                    UI.text(
                      "Dear Customer , Your Data Bundles\n is bellow 500MB",
                    )
                  ],
                ),
                Column(
                  children: [
                    UI.text("2:31 PM"),
                    Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: UI.text("2",
                            textColor: Colors.white,
                            textAlign: TextAlign.center))
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const  ChatScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  color: Colors.green,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UI.text("Fraciah Wanjiku", fontWeight: FontWeight.bold),
                    UI.text(
                      "Dear Customer , Your Data Bundles\n is bellow 500MB",
                    )
                  ],
                ),
                Column(
                  children: [
                    UI.text("2:31 PM"),
                    Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: UI.text("2",
                            textColor: Colors.white, textAlign: TextAlign.center))
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const  ChatScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  color: Colors.green,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UI.text("John Doe", fontWeight: FontWeight.bold),
                    UI.text(
                      "Dear Customer , Your Data Bundles\n is bellow 500MB",
                    )
                  ],
                ),
                Column(
                  children: [
                    UI.text("2:31 PM"),
                    Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: UI.text("2",
                            textColor: Colors.white, textAlign: TextAlign.center))
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const  ChatScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  color: Colors.blue,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UI.text("Timothy Kimani", fontWeight: FontWeight.bold),
                    UI.text(
                      "Dear Customer , Your Data Bundles\n is bellow 500MB",
                    )
                  ],
                ),
                Column(
                  children: [
                    UI.text("2:31 PM"),
                    Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: UI.text("2",
                            textColor: Colors.white, textAlign: TextAlign.center))
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const  ChatScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  color: Colors.yellow,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UI.text("James Mworia", fontWeight: FontWeight.bold),
                    UI.text(
                      "Dear Customer , Your Data Bundles\n is bellow 500MB",
                    )
                  ],
                ),
                Column(
                  children: [
                    UI.text("2:31 PM"),
                    Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: UI.text("2",
                            textColor: Colors.white, textAlign: TextAlign.center))
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const  ChatScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  color: Colors.red,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UI.text("Lucy Odhiambo", fontWeight: FontWeight.bold),
                    UI.text(
                      "Dear Customer , Your Data Bundles\n is bellow 500MB",
                    )
                  ],
                ),
                Column(
                  children: [
                    UI.text("2:31 PM"),
                    Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: UI.text("2",
                            textColor: Colors.white, textAlign: TextAlign.center))
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
