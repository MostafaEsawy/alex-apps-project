import 'dart:js_util';

import 'package:alexapps/Custom_Text.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        title: CustomText(
          text: "تفاصيل الطلب",
          alignment: Alignment.center,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  //Image Product specific
                  child: Image.asset(
                    "assets/images/box.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //ListTile Customer data
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ListTile(
                    trailing: Icon(Icons.person_3_rounded),
                    title: Column(
                      children: [
                        CustomText(
                          text: "ابوفهد عبدالعزيز",
                        ),
                        CustomText(text: "السعودية")
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),

              // listTile Customer location
              ListTile(
                trailing: Icon(Icons.location_on_outlined),
                title: Column(
                  children: [
                    CustomText(
                      text: "موقع التحميل",
                    ),
                    CustomText(
                      text: "1097 Dajo Ridge",
                      color: Colors.grey,
                    ),
                  ],
                ),
                leading: Column(
                  children: [
                    Icon(Icons.location_on_outlined),
                    CustomText(text: "موقع التنزيل"),
                    CustomText(
                      text: "1097 Dajo Ridge",
                    )
                  ],
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              //ListView  time the order will arrive and be received
              ListTile(
                trailing: Icon(Icons.calendar_month_rounded),
                title: CustomText(
                  text: "وقت التحميل",
                ),
                subtitle: CustomText(
                  text: "04 Jul 2021",
                  color: Colors.grey,
                ),
                leading: Column(
                  children: [
                    Icon(Icons.calendar_today_rounded),
                    CustomText(text: "وقت التسليم"),
                    CustomText(
                      text: "04 Jul 2021",
                    )
                  ],
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                trailing: Icon(Icons.confirmation_num_rounded),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "طن 100",
                      color: Colors.grey,
                    ),
                    CustomText(
                      text: "وزن الشحنة",
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                trailing: Icon(Icons.fire_truck_sharp),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "شاحنة 40",
                      color: Colors.grey,
                    ),
                    CustomText(
                      text: "عدد المركبات",
                    )
                  ],
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                trailing: Icon(Icons.fire_truck_sharp),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "دينا-دينا بطحاء",
                      color: Colors.grey,
                    ),
                    CustomText(
                      text: "نوع المركبات",
                    )
                  ],
                ),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              CustomText(
                text: "أريد توصيل شحنة طلب الي ميناء جده وزن الشحنة 100 طن",
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),

              //Customer location image
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/images/photo_2023-11-22_11-12-20.jpg",
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: "تحديد السعر بين العميل و السائق",
                color: Colors.grey,
              ),
              CustomText(
                text: "السعر الحالي 2500 ريال",
                color: Colors.blue,
              ),
              SizedBox(
                height: 15,
              ),
              BottomNavigationBar(items: [
                BottomNavigationBarItem(
                    label: "رفض",
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Image.asset(
                        "assets/images/677910.png",
                        fit: BoxFit.contain,
                        width: 40,
                      ),
                    )),
                BottomNavigationBarItem(
                    label: "موافقة",
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Image.asset(
                        "assets/images/download (2).png",
                        fit: BoxFit.contain,
                        width: 40,
                      ),
                    )),
                BottomNavigationBarItem(
                    label: "عرض",
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Image.asset(
                        "assets/images/72647.png",
                        fit: BoxFit.contain,
                        width: 40,
                      ),
                    )),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
