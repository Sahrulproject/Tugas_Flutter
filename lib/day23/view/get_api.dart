import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day23/api/get_user.dart';
import 'package:ppkd_b_3/day23/model/user_model.dart';
import 'package:ppkd_b_3/day23/view/detail.dart';

class Day23GetAPIScreen extends StatefulWidget {
  const Day23GetAPIScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<Day23GetAPIScreen> createState() => _Day23GetAPIScreenState();
}

class _Day23GetAPIScreenState extends State<Day23GetAPIScreen> {
  List<Welcome> _allUsers = [];
  List<Welcome> _filteredUsers = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  Future<void> _loadUsers() async {
    final users = await getUser();
    setState(() {
      _allUsers = users;
      _filteredUsers = users;
      _isLoading = false;
    });
  }

  void _filterUsers(String query) {
    final filtered = _allUsers.where((user) {
      final nameLower = user.name.toLowerCase() ?? '';
      final priceLower = user.currentPrice.toString().toLowerCase() ?? '';
      final searchLower = query.toLowerCase();
      return nameLower.contains(searchLower) ||
          priceLower.contains(searchLower);
    }).toList();

    setState(() {
      _filteredUsers = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search API Example")),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadUsers,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Search name Crypto",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: Icon(Icons.search),
                        ),
                        onChanged: _filterUsers,
                      ),
                    ),

                    // 📋 List data hasil filter
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _filteredUsers.length,
                      itemBuilder: (BuildContext context, int index) {
                        final dataBtc = _filteredUsers[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            elevation: 2,
                            child: ListTile(
                              leading: Image.network(dataBtc.image ?? ""),
                              title: Text(dataBtc.name ?? ""),
                              subtitle:
                                  Text(dataBtc.currentPrice.toString() ?? ""),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailApi(user: dataBtc),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
