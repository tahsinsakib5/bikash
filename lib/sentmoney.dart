import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Sendmoney extends StatefulWidget {
  const Sendmoney({super.key});

  @override
  State<Sendmoney> createState() => _SendmoneyState();
}

class _SendmoneyState extends State<Sendmoney> {
  var accountNoController = TextEditingController();
  var amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: accountNoController,
                decoration: const InputDecoration(
                    hintText: "Acount Nunber", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: amountController,
                  decoration: const InputDecoration(hintText: "Amount"),
                ),
              ),
              MaterialButton(
                onPressed: () async {
                  String accountNo = accountNoController.text;
                  int amount = int.parse(amountController.text);

                  await sendMoney(accountNo, amount);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  child: const Center(
                      child: Text(
                    "Send",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future sendMoney(String uid, int amount) async {
    var docRef = FirebaseFirestore.instance
        .collection('user_data')
        .doc(FirebaseAuth.instance.currentUser!.email);

    var docSnap = await docRef.get();

    int balance = docSnap.get('balance');
    print('Current User Balance : $balance');

    if (amount > balance) {
      print('Balance Low');
    } else {
      int newBalance = balance - amount;

      await docRef.update({'balance': newBalance});

      print('Current User New Balance : $newBalance');

      await getMoney(uid, amount);

      print('Send Money Successfull');
    }
  }

  Future getMoney(String uid, int amount) async {
    var docRef = FirebaseFirestore.instance.collection('user_data').doc(uid);

    var docSnap = await docRef.get();

    int balance = docSnap.get('balance');
    print('User 2 Balance : $balance');

    int newBalance = balance + amount;

    await docRef.update({'balance': newBalance});

    print('User 2 New Balance : $newBalance');
  }
}
