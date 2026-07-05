import 'package:finance/core/Routing/app_routes.dart';
import 'package:finance/core/widgets/back_button_widget.dart';
import 'package:finance/core/widgets/custom_text_filed.dart';
import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:finance/features/Password_Change_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../core/styling/app_styling.dart';
class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  late TextEditingController newpasswordController;
  late TextEditingController confirmpasswordController;
  final formkey = GlobalKey<FormState> ();
  @override
  void initState(){
    super.initState();
    newpasswordController=TextEditingController();
    confirmpasswordController=TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:Padding
            (padding:EdgeInsetsGeometry.symmetric(horizontal: 8.r) ,
            child: Form(
              child: Column(
                children: [
                  Gap(22),
                  BackButtonWidget(),
                  Gap(28),
                  SizedBox(
                    child:Text("Create new Password",
                      style:AppStyling.primaryHeadLineStyle,
                    ),
                  ),
                  Gap(10),
                  SizedBox(
                    width: 331.w,
                    height: 78.h,
                    child:Text('Your new password must be unique from those previously used.',
                      style:AppStyling.black16w500,
                    ),
                  ),
                  Gap(32),
                  CustomTextField(
                    controller: newpasswordController,
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'please enter new password ';
                      }
                      return null ;
                    },
                    hintText: 'New Password',

                  ),
                  Gap(10),
                  CustomTextField(
                    controller: confirmpasswordController,
                    validator: (value){
                      if (value == null || value.isEmpty){
                        return 'please enter confirm  password  ';
                      }
                      return null ;
                    },
                    hintText: 'Confirm Password',
                  ),
                  Gap(38),
                  PrimaryButtonWidget(
                    buttonText: 'Reset Password',
                    onPress: (){
                      if(formkey.currentState!.validate()){
                      }
                      GoRouter.of(context).push(AppRoutes.passwordchange);


                    },
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
