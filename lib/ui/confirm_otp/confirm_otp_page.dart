import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmOtpPage extends StatefulWidget {
  const ConfirmOtpPage({super.key});

  static Future<void> navigate(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const ConfirmOtpPage()),
    );
  }

  @override
  State<ConfirmOtpPage> createState() => _ConfirmOtpPageState();
}

class _ConfirmOtpPageState extends State<ConfirmOtpPage> {
  late final TextEditingController _otpController;

  @override
  void initState() {
    _otpController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 56),
              const Text(
                'Confirm OTP Code',
                style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const Text(
                'Check your mail and enter the code',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              PinCodeTextField(
                appContext: context,
                controller: _otpController,
                length: 6,
                autoDisposeControllers: false,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeColor: Colors.amber,
                  inactiveColor: Colors.white,
                  selectedColor: Colors.white,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  activeFillColor: Colors.white,
                ),
                cursorColor: Colors.amber,
                textStyle: const TextStyle(color: Colors.amber, fontSize: 20),
                onChanged: (value) {},
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('00:59', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber),
                  fixedSize: WidgetStateProperty.all(const Size(double.maxFinite, 50)),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
