import 'package:bkashdemoapp/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/app_colors.dart';

class BkashLoginScreen extends StatefulWidget {
  const BkashLoginScreen({super.key});

  @override
  State<BkashLoginScreen> createState() => _BkashLoginScreenState();
}

class _BkashLoginScreenState extends State<BkashLoginScreen> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _accountController =
  TextEditingController();

  final TextEditingController _pinController =
  TextEditingController();

  @override
  void dispose() {
    _accountController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  void _login() {

    // Validate form first
    if (_formKey.currentState!.validate()) {

      // If valid → go to Home
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => const HomeScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primary,
          ),
          onPressed: () => Navigator.pop(context),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: OutlinedButton(
              onPressed: () {},

              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              child: const Text(
                'বাংলা',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),

      // ---------------- Body ----------------
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),

          child: Form(
            key: _formKey,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                // Logo + QR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [

                    ImageIcon(
                      const AssetImage('assets/bkash.png'),
                      size: 40,
                      color: AppColors.primary,
                    ),
                    Icon(
                      Icons.qr_code,
                      color: AppColors.primary,
                      size: 36,
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Title
                const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textDark,
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  'to your bkash account',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.textGrey,
                  ),
                ),

                const SizedBox(height: 32),

                // ---------------- Account ----------------
                const Text(
                  'Account Number',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textGrey,
                  ),
                ),

                const SizedBox(height: 6),

                TextFormField(
                  controller: _accountController,
                  keyboardType: TextInputType.phone,

                  decoration: const InputDecoration(
                    hintText: 'Enter account number',
                    border: UnderlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Account number is required';
                    }

                    if (value.length < 10) {
                      return 'Enter valid account number';
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 32),

                // ---------------- PIN ----------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [

                    Text(
                      'bkash PIN',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.textGrey,
                      ),
                    ),

                    Icon(
                      Icons.fingerprint,
                      color: AppColors.primary,
                      size: 28,
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                TextFormField(
                  controller: _pinController,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  maxLength: 6,

                  decoration: const InputDecoration(
                    hintText: 'Enter PIN',
                    counterText: '',
                    border: UnderlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'PIN is required';
                    }

                    if (value.length > 5) {
                      return 'PIN cannot be more than 5 digits';
                    }

                    if (value.length < 4) {
                      return 'PIN must be at least 4 digits';
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 8),

                const Divider(
                  color: AppColors.divider,
                ),

                const SizedBox(height: 12),

                // Forgot PIN
                TextButton(
                  onPressed: () {},

                  child: const Text(
                    'Forgot PIN? Try PIN Reset',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 32),


                SizedBox(
                  width: double.infinity,
                  height: 48,

                  child: ElevatedButton(
                    onPressed: _login,

                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),

                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}