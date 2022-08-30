import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool is0bcurePassword = true;
    final ImagePicker _picker=ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Account User"),
         
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143__340.jpg"))),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4, color: Colors.white),
                                color: Colors.blue),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ),
             const   SizedBox(
                  height: 30,
                ),
                buildTextField("Full Name", "Anna", false),
                buildTextField("Email","anna90@gmail.com", false), 
                buildTextField("Password", "**********",true),
                buildTextField("Location", "Qo'qon", false),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: (){},
                       child:const Text  ("CANCEL",
                       style: TextStyle(
                        fontSize:15,
                        letterSpacing: 2,
                        color: Colors.black
                       ),
                       ),
                       style: OutlinedButton.styleFrom(
                        padding:const EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                       ),
                        ),
                        GestureDetector(
                          onTap: () async{
                             final XFile?image=
                    await _picker.pickImage(source: ImageSource.gallery);
                          },
                          child: ElevatedButton(onPressed: (){}, 
                          child:const Text("SAVE",style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                        
                            color: Colors.white
                          ),), 
                          style: ElevatedButton.styleFrom(primary: Colors.blue,
                          padding:const EdgeInsets.symmetric(horizontal: 60),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          ),
                          ),
                        )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget buildTextField(
      String labelText, String Placeholder, bool isPasswordTextField) {
    return Padding(
      padding:const EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField? is0bcurePassword:false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField?
          IconButton(
            onPressed: (){},
             icon:const Icon(Icons.remove_red_eye,color: Colors.grey,)
          ):null,
          contentPadding:const EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: Placeholder,
          hintStyle:const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          )
        ),
      ),
    );
  }
}
