import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity, 
  Color background =const Color(0xffFF0067),
  Color textColor =  Colors.white,
  bool isUpperCase = true,
  double Raduis = 20,
  required void Function()? Function,
  required String text,
  
}) 
=> Container(

                    width: width,
                    height: 40,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Raduis),
                      color:  background, 
                    ),
                    child: MaterialButton(
                      onPressed: Function,
                      child: Text(
                        isUpperCase ? text.toUpperCase() : text ,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );

Widget defualtFormField({
  required TextEditingController controller,
  required String label,
  required String returnMessage,
  required TextInputType keyboardType,
  required IconData prefix,
  IconData?  suffix,
  bool obscure = false, 
  void Function(String)?  onFieldFunction ,
  Color? color ,
  Color? suffixcolor ,
  void Function()? pressButton,
}) 
=> TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return returnMessage;
                        }
                        return null;
                        //value.isEmpty ?'Email Address not Must be empty' :null;
                      },
                      style: const TextStyle(
                        color: Colors.white,
                        //decoration: TextDecoration.overline,
                      ),
                      controller: controller,
                      keyboardType: keyboardType,
                      obscureText: obscure ,
                      onFieldSubmitted: onFieldFunction,  
                      decoration:  InputDecoration(
                        labelText: label,
                        labelStyle: const TextStyle(
                         color: Colors.white, 
                        ), 
                        prefixIcon: Icon(
                          prefix,
                          color: color,
                        ), 
                        suffixIcon: suffix != null ?IconButton(
                          icon: Icon(
                            suffix,
                            color: suffixcolor,
                          ),
                          onPressed:pressButton, 
                           
                        ):null,
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffFF0067),
                          ) 
                        ),
                        enabledBorder:const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ) 
                        ),
                      ),
                    );


