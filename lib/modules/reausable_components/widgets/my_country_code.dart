import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:testt/modules/reausable_components/widgets/my_form_field.dart';

class MyCountryCode extends StatelessWidget {
  const MyCountryCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var phoneController = TextEditingController();
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        MyFormField(
          controller: phoneController,
          type: TextInputType.number,
          label: '',
          validator: () {},
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            SizedBox(
                width: width / 3.4,
                child: CountryCodePicker(
                  initialSelection: 'eg',
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  favorite: const ['+20', 'eg'],
                  enabled: true,
                  hideMainText: false,
                  showFlagMain: true,
                  showFlag: true,
                  hideSearch: false,
                  showFlagDialog: true,
                  alignLeft: true,
                )),
            const Icon(Icons.arrow_drop_down)
          ],
        ),
      ],
    );
  }
}
