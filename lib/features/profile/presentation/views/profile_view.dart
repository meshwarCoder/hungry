import 'package:flutter/material.dart';
import 'package:hungry/core/utils/app_colors.dart';
import 'package:hungry/core/utils/assets.dart';
import 'package:hungry/core/utils/shared/custom_textformfield.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body:
      SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            
            children: [
              const SizedBox(height: 50,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
               
              ),
              const SizedBox(height: 50,),
              CustomTextFormField(hintText: 'Name',),
              const SizedBox(height: 20,),
              CustomTextFormField(hintText: 'Email',),
              const SizedBox(height: 20,),
              CustomTextFormField(hintText: 'Delivery Address',),
              const SizedBox(height: 20,),
              CustomTextFormField(hintText: 'Password',obscureText: true,),
              const SizedBox(height: 20,),
              const Divider(
                color: Colors.white,
                thickness: .5,
              ),
              const SizedBox(height: 20,),
               Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(Assets.visa,height: 35),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Debit Card',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                        SizedBox(height: 5,),
                        Text('1234 **** **** 3456',style: TextStyle(color: Colors.black,fontSize: 12),),
                      ],
                    )
                  ],
                  
                  
                ),
                
               
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      )
       ,
    );
  }
}