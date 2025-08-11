import 'package:flutter/material.dart';

void main() {
  runApp(const Facebook());
}

class Facebook extends StatelessWidget {
  const Facebook({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Style Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color(0xFF1877F2)),
      home: const FacebookLoginPage(),
    );
  }
}

class FacebookLoginPage extends StatefulWidget {
  const FacebookLoginPage({super.key});

  @override
  State<FacebookLoginPage> createState() => _FacebookLoginPageState();
}

class _FacebookLoginPageState extends State<FacebookLoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscure = true;
  bool _loading = false;

  void _loginWithEmail() {
    setState(() => _loading = true);
    // TODO: ganti dengan logic autentikasi (Firebase/AUTH)
    Future.delayed(const Duration(seconds: 1), () {
      setState(() => _loading = false);
      debugPrint(
        'Login email: ${_emailController.text}, pass: ${_passwordController.text}',
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Attempt login (demo)')));
    });
  }

  void _loginWithFacebook() {
    // TODO: implement Facebook OAuth / plugin
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Login with Facebook (demo)')));
  }

  @override
  Widget build(BuildContext context) {
    final fbBlue = const Color(0xFF1877F2);
    return Scaffold(
      backgroundColor: fbBlue,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo / Title
                const SizedBox(height: 28),
                Icon(
                  Icons.facebook,
                  size: 80,
                  color: Colors.white.withOpacity(0.95),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 36),

                // Card-like form
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Email
                      TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          hintText: 'Email or phone number',
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 12,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Password with toggle
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscure,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.grey[100],
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () =>
                                setState(() => _obscure = !_obscure),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 12,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Login button
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: _loading ? null : _loginWithEmail,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: fbBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                          child: _loading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : const Text(
                                  'Log In',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      ),

                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          // Forgot password action
                        },
                        child: Text(
                          'Forgotten password?',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      const SizedBox(height: 6),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                // OR divider
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colors.white.withOpacity(0.4)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'or',
                        style: TextStyle(color: Colors.white.withOpacity(0.9)),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Colors.white.withOpacity(0.4)),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                // Facebook Login Button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton.icon(
                    onPressed: _loginWithFacebook,
                    icon: const Icon(Icons.facebook, color: Colors.white),
                    label: const Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                // Create account button (outlined)
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {
                      // Create new account
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white.withOpacity(0.9)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Create new account',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                // Footer small text
                Text(
                  'Create a Page for a celebrity, brand or business.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white.withOpacity(0.95)),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
