import 'package:flutter/material.dart';
import 'package:grocerystore/screens/widgets/text_filed_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _otpTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _otpTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _otpTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24, top: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            height: 32,
            width: 32,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: const Color(0xffFEFAF7),
        child: ListView(
          children: [
            const Text(
              'Forgot password',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Enter the email address associated with your account.',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff777777),
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFiledWidget(
              textEditingController: _emailTextController,
              lableText: 'Email address',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFiledWidget(
              textEditingController: _otpTextController,
              lableText: 'Enter OTP',
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () =>Navigator.pushNamed(context, '/resetpassword_screen'),
              child: const Text(
                'Reset Password',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffFF8236),
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
