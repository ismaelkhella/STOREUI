import 'package:flutter/material.dart';
import 'package:grocerystore/helpers/helpers.dart';
import 'package:grocerystore/screens/widgets/text_filed_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with Helpers {
  late TextEditingController _mobileTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _confirmPasswordTextController;
  late TextEditingController _nameTextController;
  String _gender = 'M';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobileTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _confirmPasswordTextController = TextEditingController();
    _nameTextController = TextEditingController();
    // _future = CitiesApiController().getCities();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _mobileTextController.dispose();
    _passwordTextController.dispose();
    _confirmPasswordTextController.dispose();
    _nameTextController.dispose();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 18, color: Color(0xffF68E00)),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffF8E2D2),
                      elevation: 0,
                      fixedSize: const Size(98, 37)),
                )
              ],
            ),
            const Text(
              'Please sign up to enter in a app',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff777777),
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFiledWidget(
              lableText: 'Full name',
              obscureText: false,
              textEditingController: _nameTextController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFiledWidget(
              textEditingController: _mobileTextController,
              lableText: 'Mobile number',
              textInputType: TextInputType.phone,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _passwordTextController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                label: const Text('Password'),
                labelStyle: const TextStyle(
                    color: Color(0xff9A9A9A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                filled: true,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xff9A9A9A)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xff9A9A9A),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Female'),
                    groupValue: _gender,
                    value: 'F',
                    onChanged: (String? value) {
                      if (value != null) {
                        setState(() {
                          _gender = value;
                        });
                      }
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Male'),
                    groupValue: _gender,
                    value: 'M',
                    onChanged: (String? value) {
                      if (value != null) {
                        setState(() {
                          _gender = value;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                _performRegister();
              },
              child: const Text(
                'Get Started',
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

  void _performRegister() {
    if (_checkData()) {
      _register();
    }
  }

  bool _checkData() {
    if (_nameTextController.text.isNotEmpty &&
        _mobileTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(
      context: context,
      message: 'Enter required data!',
      error: true,
    );
    return false;
  }

  void _register() {
    Navigator.pop(context);
  }
}
