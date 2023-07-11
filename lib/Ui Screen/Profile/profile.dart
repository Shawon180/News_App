import 'package:flutter/material.dart';
import 'package:nuntium/Const/const.dart';
import 'package:nuntium/Ui%20Screen/Profile/change_password.dart';
import 'package:nuntium/Ui%20Screen/Profile/language.dart';
import 'package:nuntium/Ui%20Screen/Profile/terms_conditions.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('Profile',style: kTextStyle.copyWith(color: kTitleColor,fontWeight: FontWeight.bold),),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              ListTile(
                leading: Container(
                  height: 72,
                  width: 72,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('images/Rectangl.png'))
                  ),
                ) ,
                title: const Text('Shawon Hasan'),
                subtitle: const Text('sbc123@gmail.com'),
              ),
            const SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: kSubSubTitleColor,
                  borderRadius: BorderRadius.circular(12)
                ),

                child: ListTile(
                  title: const Text('Notification'),
                  trailing: Switch(
                    // This bool value toggles the switch.
                    value: notification,
                    activeColor: kPrimaryColor,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        notification = value;
                      });
                    },
                  )
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: kSubSubTitleColor,
                    borderRadius: BorderRadius.circular(12)
                ),

                child:  ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LanguageScreen()),
                    );
                  },
                    title: const Text('Language'),
                    trailing:const Icon(Icons.keyboard_arrow_right_sharp)
                ),
              ),





              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: kSubSubTitleColor,
                    borderRadius: BorderRadius.circular(12)
                ),

                child:  ListTile(
                    onTap: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ChangePassword()),
                      );
                    },
                    title: const Text('Change Password'),
                    trailing:const Icon(Icons.keyboard_arrow_right_sharp)
                ),
              ),



              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: kSubSubTitleColor,
                    borderRadius: BorderRadius.circular(12)
                ),

                child:  ListTile(
                    onTap: (){},
                    title: const Text('Privacy'),
                    trailing:const Icon(Icons.keyboard_arrow_right_sharp)
                ),
              ),



              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: kSubSubTitleColor,
                    borderRadius: BorderRadius.circular(12)
                ),

                child:  ListTile(
                    onTap: (){ Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TermsConditions()),
                    );},
                    title: const Text('Terms & Conditions'),
                    trailing:const Icon(Icons.keyboard_arrow_right_sharp)
                ),
              ),

              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: kSubSubTitleColor,
                    borderRadius: BorderRadius.circular(12)
                ),

                child:  ListTile(
                    onTap: (){},
                    title: const Text('Sign Out'),
                    trailing:const Icon(Icons.logout)
                ),
              ),
            ],
          ),
        ),
      ),
    ) ;
  }
}
