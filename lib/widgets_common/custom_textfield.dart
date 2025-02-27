import 'package:shop_ease/consts/consts.dart';

Widget customTextField({String? title ,String? hint,controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.red).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        //controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          hintText: hint ,
          isDense: true,
          fillColor: lightGrey,
          filled:true,
        border: InputBorder.none,
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red))),
      ),
        5.heightBox,
    ],
  );
}

