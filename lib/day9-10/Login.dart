import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Extension/navigation.dart';
import 'package:ppkd_b_3/day16/views/register_screen.dart';

class Day9T6TextRich extends StatefulWidget {
  const Day9T6TextRich({super.key});
  static const id = "/login";

  @override
  State<Day9T6TextRich> createState() => _Day9T6TextRich();
}

class _Day9T6TextRich extends State<Day9T6TextRich> {
  bool isVisibility = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController tipeController = TextEditingController();
  final bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(children: [buildBackground(), buildLayer()]));
  }

  // login() async {
  //   final name = nameController.text.trim();
  //   final tipe = tipeController.text.trim();

  //   if (name.isEmpty || tipe.isEmpty) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text("Nama dan Tipe tidak boleh kosong")),
  //     );
  //     return;
  //   }

  //   final peliharaan = await DbHelper.registerPeliharaan(name, tipe);

  //   if (peliharaan != null) {
  //     // login berhasil
  //     if (!mounted) return;
  //     Navigator.pushNamed(context, Navt8.id);
  //   } else {
  //     // login gagal
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text("Nama atau Tipe salah")),
  //     );
  //   }
  // }

  SafeArea buildLayer() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              height(12),
              Text(
                "Login to access your account",
                // style: TextStyle(fontSize: 14, color: AppColor.gray88),
              ),
              height(24),
              buildTitle("Email Address"),
              height(12),
              buildTextField(
                hintText: "Enter your email",
                controller: nameController,
              ),
              height(16),
              buildTitle("Password"),
              height(12),
              buildTextField(
                hintText: "Enter your password",
                isPassword: true,
                controller: tipeController,
              ),
              height(12),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MeetSebelas()),
                    // );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 12,
                      // color: AppColor.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              height(24),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // login();
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: AppColor.blueButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              height(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 8),
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Or Sign In With",
                    // style: TextStyle(fontSize: 12, color: AppColor.gray88),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 8),
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              height(16),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    // Navigate to MeetLima screen menggunakan pushnamed
                    Navigator.pushNamed(context, "/meet_2");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/im/google.png",
                        height: 16,
                        width: 16,
                      ),
                      width(4),
                      Text("Google"),
                    ],
                  ),
                ),
              ),
              height(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    // style: TextStyle(fontSize: 12, color: AppColor.gray88),
                  ),
                  TextButton(
                    onPressed: () {
                      context.push(RegisterScreen());
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => MeetEmpatA()),
                      // );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        // color: AppColor.blueButton,
                        fontSize: 12,
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
    );
  }

  Container buildBackground() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/im/background.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  TextField buildTextField({
    String? hintText,
    bool isPassword = false,
    TextEditingController? controller,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword ? isVisibility : false,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisibility = !isVisibility;
                  });
                },
                icon: Icon(
                  isVisibility ? Icons.visibility_off : Icons.visibility,
                  // color: AppColor.gray88,
                ),
              )
            : null,
      ),
    );
  }

  SizedBox height(double height) => SizedBox(height: height);
  SizedBox width(double width) => SizedBox(width: width);

  Widget buildTitle(String text) {
    return Row(
      children: [
        // Text(text, style: TextStyle(fontSize: 12, color: AppColor.gray88)),
      ],
    );
  }
}

// Kodingan ASLINYA ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
//           onPressed: () {},
//         ),
//         title: Text("Login"),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               spacing: 12,
//               children: [
//                 const SizedBox(height: 24),
//                 const Text(
//                   "Instagram",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: "LobsterTwo",
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   controller: _emailController,
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.email, color: Colors.black),
//                     border: OutlineInputBorder(),
//                     hint: Text("Phone number, username, or email"),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Email tidak boleh kosong";
//                     }
//                     if (!value.contains("@")) {
//                       return "Email tidak valid";
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: _passwordController,
//                   obscureText: _obscure,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.lock, color: Colors.black),
//                     border: OutlineInputBorder(),
//                     hintText: 'Password',
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _obscure ? Icons.visibility : Icons.visibility_off,
//                       ),
//                       onPressed: () => setState(() => _obscure = !_obscure),
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Password tidak boleh kosong";
//                     }
//                     return null;
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     String email = _emailController.text.trim();
//                     String password = _passwordController.text.trim();

//                     // Email & Password yang dianggap benar
//                     String validEmail = "admin@gmail.com";
//                     String validPassword = "123456";

//                     if (_formKey.currentState!.validate()) {
//                       if (email == validEmail && password == validPassword) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text("Login berhasil")),
//                         );

//                         // TODO: Arahkan ke halaman berikutnya
//                         // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HalamanUtama()));
//                       } else {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text("Email atau Password salah")),
//                         );
//                       }
//                     }
//                     //Error dan sukses menggunakan ScaffoldMessenger dan formKey

//                     // if (_formKey.currentState!.validate()) {
//                     //   ScaffoldMessenger.of(context).showSnackBar(
//                     //     SnackBar(content: Text("Form Validasi Berhasil")),
//                     //   );
//                     // }

//                     // showDialog(
//                     //   context: context,
//                     //   builder: (BuildContext context) {
//                     //     return AlertDialog(
//                     //       title: Text("Email anda tidak sesuai"),
//                     //       content: Column(
//                     //         mainAxisSize: MainAxisSize.min,
//                     //         children: [
//                     //           Text("Silakan Masukkan email yang valid"),
//                     //           SizedBox(height: 20),
//                     //           // Image.asset(
//                     //           //   'assets/images/rendang.jpeg',
//                     //           //   width: 90,
//                     //           //   height: 100,
//                     //           //   fit: BoxFit.cover,
//                     //           // ),
//                     //         ],
//                     //       ),
//                     //       actions: [
//                     //         TextButton(
//                     //           child: Text("Batal"),
//                     //           onPressed: () {
//                     //             Navigator.of(context).pop();
//                     //           },
//                     //         ),
//                     //         TextButton(
//                     //           child: Text("Ok, Siap"),
//                     //           onPressed: () {
//                     //             Navigator.of(context).pop();
//                     //           },
//                     //         ),
//                     //       ],
//                     //     );
//                     //   },
//                     // );
//                   },
//                   child: Text("Submit"),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.black,
//                     minimumSize: Size(double.infinity, 50),
//                     side: BorderSide(color: Colors.grey),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   icon: Image.asset(
//                     'assets/im/google.png',
//                     height: 24,
//                     width: 24,
//                   ),
//                   label: Text("Login with Google"),
//                   onPressed: () {
//                     // Simulasi login dengan Google
//                     // ScaffoldMessenger.of(context).showSnackBar(
//                     //   SnackBar(content: Text("Login Google ditekan")),
//                     // );
//                     // NavPush day 11
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => Facebook()),
//                     );
//                   },
//                 ),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.black,
//                     minimumSize: Size(double.infinity, 50),
//                     side: BorderSide(color: Colors.grey),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   icon: Image.asset(
//                     'assets/im/facebook.png',
//                     height: 20,
//                     width: 20,
//                   ),
//                   label: Text("Login with Facebook"),
//                   onPressed: () {
//                     // Simulasi login dengan Google
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text("Login Facebook ditekan")),
//                     );
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Don't have an account? "),
//                     GestureDetector(
//                       onTap: () {
//                         // navigasi ke halaman Sign Up
//                       },
//                       child: const Text(
//                         "Sign Up",
//                         style: TextStyle(
//                           color: Colors.blue,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
