import 'package:alexapps/Custom_Text.dart';
import 'package:alexapps/detailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          //AppBar
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text("الطلبات"),
          ),
          body: Padding(
            padding: EdgeInsets.all(0.8),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),

                //TabBar to shown categories
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25)),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25)),
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(
                          text: "الملغه",
                        ),
                        Tab(
                          text: "المنهية",
                        ),
                        Tab(
                          text: "الجاريه",
                        ),
                        Tab(
                          text: "الطلبات",
                        ),
                      ]),
                ),

                //ListView To display the product requested by the customer
                Column(
                  children: [
                    ListTile(
                      trailing: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/box.jpg"),
                      ),
                      title: CustomText(text: "ابوفهد عبدالعزيز"),
                      subtitle: Column(
                        children: [
                          CustomText(
                            text: "1097 Dajo Ridge",
                            color: Colors.grey,
                          ),
                          CustomText(
                            text: "1283 Cunema extentsion",
                            color: Colors.grey,
                          ),
                          CustomText(
                            text: "أريد توصيل شحنة خشب الي ميناء",
                          ),
                        ],
                      ),
                      leading: Text("السعر"),
                    ),
                    ListTile(
                      trailing: Icon(Icons.calendar_today),
                      title: CustomText(
                        text: "04 Jul 2021",
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      //button to navigate to details screen
                      leading: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailsScreen()),
                          );
                        },
                        child: Text("التفاصيل"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          //bottom navigation bar it takes us to the application pages
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
                label: "chat",
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "assets/images/icons8-chat-bubble-50.png",
                    fit: BoxFit.contain,
                    width: 25,
                  ),
                )),
            BottomNavigationBarItem(
                label: "Cart",
                icon: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Image.asset(
                    "assets/images/download (1).png",
                    fit: BoxFit.contain,
                    width: 20,
                  ),
                )),
            BottomNavigationBarItem(
                label: "Promotions",
                icon: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Image.asset(
                    "assets/images/2941915-200.png",
                    fit: BoxFit.contain,
                    width: 20,
                  ),
                )),
            BottomNavigationBarItem(
                label: "home",
                icon: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Image.asset(
                    "assets/images/download.png",
                    fit: BoxFit.contain,
                    width: 20,
                  ),
                )),
          ]),
        ));
  }
}
