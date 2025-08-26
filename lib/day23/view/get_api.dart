import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day23/api/get_user.dart';
import 'package:ppkd_b_3/day23/model/user_model.dart';

class Day23GetAPIScreen extends StatefulWidget {
  const Day23GetAPIScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<Day23GetAPIScreen> createState() => _Day23GetAPIScreenState();
}

class _Day23GetAPIScreenState extends State<Day23GetAPIScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   getUser();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<Welcome>>(
              future: getUser(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasData) {
                  final users = snapshot.data as List<Welcome>;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      final dataBtc = users[index];
                      return ListTile(
                        leading: Image.network(dataBtc.image),
                        title: Text(dataBtc.id.toString()),
                        subtitle: Text(
                          "${dataBtc.name} ${dataBtc.symbol}",
                        ),
                      );
                    },
                  );
                } else {
                  return Text("Gagal");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
