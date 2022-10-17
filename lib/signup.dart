import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/gestures.dart';
class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final countryPicker = const FlCountryCodePicker();
    CountryCode? countryCode;
    bool? _checkBox=false;
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 80,
                width: 210,
                child: const Text(
                  'Create an Account',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Name',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  label: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('Name'),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
             const SizedBox(
                height: 15,
              ),
              const Text(
                'Email',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  label: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('ganesh@gmail.com'),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.mail,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
             const SizedBox(
                height: 5,
              ),
              const Text(
                'Contact No',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                //   Container(
                //     width: 40,
                //     child:countryCode!=null?countryCode.flagImage:Center(child: Text('ntng'),) ,
                //   ),
                //  const SizedBox(
                //     width: 10,
                //   ),
                //   Container(
                //     width: 40,
                //     child: Text('img'),
                //   ),
                //  const SizedBox(
                //     width: 10,
                //   ),
                //   GestureDetector(
                //     onTap: () async {
                //       final code =
                //           await countryPicker.showPicker(context: context);
                //       setState(() {
                //         countryCode = code;
                //       });
                //       print(countryCode?.dialCode);
                //     },
                //     child: Row(
                //       children: [
                //         Container(
                //           width: 40,
                //           child: Text(countryCode?.dialCode ?? '+1'),
                //         ),
                //      const Icon(Icons.arrow_drop_down)
                //       ],
                //     ),
                //   ),
                CSCPicker(
                  ///Enable disable state dropdown [OPTIONAL PARAMETER]
                  showStates: true,

                  /// Enable disable city drop down [OPTIONAL PARAMETER]
                  showCities: true,

                  ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                  flagState: CountryFlag.DISABLE,

                  ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1)),

                  ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                  disabledDropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.shade300,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1)),

                  ///placeholders for dropdown search field
                  countrySearchPlaceholder: "Country",
                  stateSearchPlaceholder: "State",
                  citySearchPlaceholder: "City",

                  ///labels for dropdown
                  countryDropdownLabel: "*Country",
                  stateDropdownLabel: "*State",
                  cityDropdownLabel: "*City",

                  ///Default Country
                  //defaultCountry: DefaultCountry.India,

                  ///Disable country dropdown (Note: use it with default country)
                  //disableCountry: true,

                  ///selected item style [OPTIONAL PARAMETER]
                  selectedItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                  dropdownHeadingStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),

                  ///DropdownDialog Item style [OPTIONAL PARAMETER]
                  dropdownItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///Dialog box radius [OPTIONAL PARAMETER]
                  dropdownDialogRadius: 10.0,

                  ///Search bar radius [OPTIONAL PARAMETER]
                  searchBarRadius: 10.0,

                  ///triggers once country selected in dropdown
                  onCountryChanged: (value) {
                    setState(() {
                      ///store value in country variable
                      countryValue = value;
                    });
                  },

                  ///triggers once state selected in dropdown
                  onStateChanged: (value) {
                    setState(() {
                      ///store value in state variable
                      stateValue = value;
                    });
                  },

                  ///triggers once city selected in dropdown
                  onCityChanged: (value) {
                    setState(() {
                      ///store value in city variable
                      cityValue = value;
                    });
                  },
                ),
                   Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.none,
                        decoration:const InputDecoration(                         
                           contentPadding: EdgeInsets.all(0),
                          label: Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text('9876543'),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Icon(
                              Icons.phone,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
               TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  label: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('********'),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
             const SizedBox(height: 5,),
              Row(
                children: [
                  Checkbox(value: _checkBox, 
                  overlayColor:MaterialStateProperty.all(Colors.red) ,
                  activeColor: Colors.red,
                  checkColor: Colors.blue,
                  tristate: true,
                  onChanged:(val){setState(() {
                    _checkBox = val;
                  });}),
                  Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'I agree with ',
                          style:const TextStyle(fontSize: 18,color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'terms & condition',
                          style:const TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          decoration: TextDecoration.underline
                          ),
                          recognizer: TapGestureRecognizer(),
                            )
                          ]
                        )
                      ),
                    ),
                  ),
                ],
              ),
             const SizedBox(height: 5,),
               Container(
                alignment: Alignment.center,
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'Already have an Account ? ',
                      style:const TextStyle(fontSize: 16,color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign In!',
                      style:const TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      decoration: TextDecoration.underline
                      ),
                      recognizer: TapGestureRecognizer(),
                        )
                      ]
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}