import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final RoundedLoadingButtonController _btnController1 =
  RoundedLoadingButtonController();

  @override
  void initState() {
    _btnController1.stateStream.listen((value) {


    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('Log in',style: TextStyle(),),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding:  EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Continue with Mobile',style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 18
              ),),
              Text('Enter your mobile number to proceed',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 12,color: Colors.grey.shade600
              ),),
              SizedBox(height: 50,),
              TextFormField(
                keyboardType: TextInputType.number,

                textAlign: TextAlign.start,
                obscureText: false,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                ],
                decoration: InputDecoration(
                  hintText: '10 digit mobile number',
                  labelText: '10 digit mobile number',
                  hintStyle:
                  TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,
                  ),

                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,

                    ),

                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,

                    ),

                  ),
                  focusedBorder:  UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),

                  ),
                ),
                style:
                TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 50,width: 150,
                child: RoundedLoadingButton(
                    color: Colors.red,

                    successIcon: Icons.cloud,
                    borderRadius: 10,
                    failedIcon: Icons.cottage,
                    child: Text("Continue",style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.w500
                    ),),
                    controller: _btnController1,
                    onPressed: () async {
                      //fetchOtp(textController1.text);

                      // try{
                      //   otpNo=textController1.text;
                      //   var url = Uri.parse('https://2factor.in/API/V1/$apiKey/SMS/${textController1.text}/AUTOGEN');
                      //   var response = await http.get(url);
                      //   print('Response body: ${response.body}');
                      //   print('Response body: ${json.decode(response.body)['Status']}');
                      //   otpSession=json.decode(response.body)["Details"];
                      //   print(otpSession);
                      //   if(json.decode(response.body)['Status']=='Error'){
                      //     showUploadMessage(context, 'Invalid mobile number');
                      //     _btnController1.reset();
                      //   }else{
                      //     Navigator.of(context).push(
                      //         MaterialPageRoute(builder: (context) => OtpPage()));
                      //     _btnController1.success();
                      //     _btnController1.reset();
                      //   }
                      // }catch(e){
                      //   showUploadMessage(context,'Invalid Mobile Number');
                      //   _btnController1.reset();
                      // }

                    }
                ),
              ),
            ],
          ),
        )
    );
  }
}
