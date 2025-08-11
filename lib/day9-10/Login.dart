import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day9-10/SigninFB.dart';

class Day9T6TextRich extends StatefulWidget {
  const Day9T6TextRich({super.key, required bool appBar});

  @override
  State<Day9T6TextRich> createState() => _Day9T6TextRich();
}

class _Day9T6TextRich extends State<Day9T6TextRich> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {},
        ),
        title: Text("Login"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 12,
              children: [
                const SizedBox(height: 24),
                const Text(
                  "Instagram",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "LobsterTwo",
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.black),
                    border: OutlineInputBorder(),
                    hint: Text("Phone number, username, or email"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email tidak boleh kosong";
                    }
                    if (!value.contains("@")) {
                      return "Email tidak valid";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscure,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () => setState(() => _obscure = !_obscure),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    String email = _emailController.text.trim();
                    String password = _passwordController.text.trim();

                    // Email & Password yang dianggap benar
                    String validEmail = "admin@gmail.com";
                    String validPassword = "123456";

                    if (_formKey.currentState!.validate()) {
                      if (email == validEmail && password == validPassword) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Login berhasil")),
                        );

                        // TODO: Arahkan ke halaman berikutnya
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HalamanUtama()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Email atau Password salah")),
                        );
                      }
                    }
                    //Error dan sukses menggunakan ScaffoldMessenger dan formKey

                    // if (_formKey.currentState!.validate()) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text("Form Validasi Berhasil")),
                    //   );
                    // }

                    // showDialog(
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return AlertDialog(
                    //       title: Text("Email anda tidak sesuai"),
                    //       content: Column(
                    //         mainAxisSize: MainAxisSize.min,
                    //         children: [
                    //           Text("Silakan Masukkan email yang valid"),
                    //           SizedBox(height: 20),
                    //           // Image.asset(
                    //           //   'assets/images/rendang.jpeg',
                    //           //   width: 90,
                    //           //   height: 100,
                    //           //   fit: BoxFit.cover,
                    //           // ),
                    //         ],
                    //       ),
                    //       actions: [
                    //         TextButton(
                    //           child: Text("Batal"),
                    //           onPressed: () {
                    //             Navigator.of(context).pop();
                    //           },
                    //         ),
                    //         TextButton(
                    //           child: Text("Ok, Siap"),
                    //           onPressed: () {
                    //             Navigator.of(context).pop();
                    //           },
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // );
                  },
                  child: Text("Submit"),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                    side: BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  icon: Image.asset(
                    'assets/im/google.png',
                    height: 24,
                    width: 24,
                  ),
                  label: Text("Login with Google"),
                  onPressed: () {
                    // Simulasi login dengan Google
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(content: Text("Login Google ditekan")),
                    // );
                    // NavPush day 11
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Facebook()),
                    );
                  },
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                    side: BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  icon: Image.asset(
                    'assets/im/facebook.png',
                    height: 20,
                    width: 20,
                  ),
                  label: Text("Login with Facebook"),
                  onPressed: () {
                    // Simulasi login dengan Google
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Facebook ditekan")),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        // navigasi ke halaman Sign Up
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
