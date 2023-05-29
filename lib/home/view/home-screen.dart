import 'package:flutter/material.dart';
import 'package:income/utils/db_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtAmount = TextEditingController();
  TextEditingController txtCategory = TextEditingController();
  TextEditingController txtNote = TextEditingController();
  TextEditingController txtDate = TextEditingController();
  TextEditingController txtTime = TextEditingController();
  int status = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Income Expense"),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 440,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black12
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  TextField(
                    controller: txtCategory,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26)),
                        hintText: "Category",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: txtAmount,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26)),
                        hintText: "Amount",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: txtNote,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26)),
                        hintText: "Note",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: txtDate,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26)),
                        hintText: "Date",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 8),
                  TextField(
                    controller: txtTime,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26)),
                        hintText: "Time",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          String r1 = txtCategory.text;
                          String r2 = txtAmount.text;
                          String r3 = txtNote.text;
                          String r4 = txtDate.text;
                          String r5 = txtTime.text;
                          status = 0;
                          DbHelper db = DbHelper();
                          db.insertData(
                              amount: r1,
                              category: r2,
                              note: r3,
                              date: r4,
                              time: r5,
                              status: status);
                        },
                        child: Text("Income"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade400),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          String r1 = txtCategory.text;
                          String r2 = txtAmount.text;
                          String r3 = txtNote.text;
                          String r4 = txtDate.text;
                          String r5 = txtTime.text;
                          status = 1;
                          DbHelper db = DbHelper();
                          db.insertData(
                              amount: r1,
                              category: r2,
                              note: r3,
                              date: r4,
                              time: r5,
                              status: status);
                        },
                        child: Text("Expense"),
                        style:
                            ElevatedButton.styleFrom(backgroundColor: Colors.red.shade400),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
