import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:testt/modules/reausable_components/widgets/my_form_field.dart';
class MyCountryCode extends StatelessWidget {

  const MyCountryCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var phoneController = TextEditingController();
    return
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: height/50),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Colors.grey[100]
          ),

          child: SizedBox(
            height: height/15,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CountryCodePicker(
                  initialSelection: 'eg',
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  favorite: const ['+20','eg'],
                  enabled: true,
                  hideMainText: false,
                  showFlagMain: true,
                  showFlag: true,
                  hideSearch: false,
                  showFlagDialog: true,
                  alignLeft: true,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: width/1.3),
                  child:const Icon(Icons.arrow_drop_down),
                ),
                SizedBox(width: width/30,),
                Padding(
                  padding:  EdgeInsets.only(right:width/24),
                  child: SizedBox(
                    height: height/20,
                    width: width/1.7,
                    child: MyFormField(
                        controller: phoneController,
                        type: TextInputType.number,
                        icon: Icons.numbers,
                        label: 'Eg.1233513310',
                        validator: (){}),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
