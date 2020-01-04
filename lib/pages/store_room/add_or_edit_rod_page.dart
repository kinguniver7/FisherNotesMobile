import 'package:fisher_notes/models/enums/rod_formation_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class AddOrEditRodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Add or Edit rod'),        
      ),
      body: AddOrEditRodForm()
    );
  }
}

class AddOrEditRodForm extends StatefulWidget {
  @override
  _AddOrEditRodFormState createState() => _AddOrEditRodFormState();
}

class _AddOrEditRodFormState extends State<AddOrEditRodForm> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final submitButton = Center(
      child: MaterialButton(
        color: Theme.of(context).accentColor,
        child: Text(
          "Submit",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          _fbKey.currentState.save();
          if (_fbKey.currentState.validate()) {
            print(_fbKey.currentState.value);
          } else {
            print("validation failed");
          }
        },
      ),
    );


   return Container(
     padding: EdgeInsets.all(10.0), 
     child:  FormBuilder(
      key: _fbKey,
      initialValue: {
        'date': DateTime.now(),
      },
      autovalidate: true,
      child: ListView(
        children: <Widget>[
          nameField,
          fishingTypeField,
          weightGField,
          testOfBaitGField,
          testOfFishingLineLbField,
          priceField,
          sectionsField,
          formationTypeField,
          submitButton
        ]
      )
    )
    );
  }

  final nameField = FormBuilderTextField(
    attribute: "name",
    decoration: InputDecoration(labelText: "Name"),   
    validators: [
      FormBuilderValidators.required()
    ] 
  );
  final fishingTypeField = FormBuilderDropdown(
    attribute: "fishingType",
    decoration: InputDecoration(labelText: "Fishing type"),
    // initialValue: 'Male',
    hint: Text('Select fishing type'),
    validators: [FormBuilderValidators.required()],
    items: ['Male', 'Female', 'Other']
      .map((gender) => DropdownMenuItem(
          value: gender,
          child: Text("$gender")
    )).toList(),
  );
  final weightGField = FormBuilderTextField(
    attribute: "weightG",
    keyboardType: TextInputType.number,
    decoration: InputDecoration(labelText: "Weight(g)"),
    validators: [
      FormBuilderValidators.numeric(),
      FormBuilderValidators.min(0),
    ],
  );
  final testOfBaitGField = FormBuilderTextField(
    attribute: "testOfBaitG",
    keyboardType: TextInputType.number,
    decoration: InputDecoration(labelText: "Test of bait(g)"),
    validators: [
      FormBuilderValidators.numeric(),
      FormBuilderValidators.min(0),
    ],
  );
  final testOfFishingLineLbField = FormBuilderTextField(
    attribute: "testOfFishingLineLb",
    keyboardType: TextInputType.number,
    decoration: InputDecoration(labelText: "Test of fishing line(Lb)"),
    validators: [
      FormBuilderValidators.numeric(),
      FormBuilderValidators.min(0),
    ],
  );
  final priceField = FormBuilderTextField(
    attribute: "price",
    keyboardType: TextInputType.number,
    decoration: InputDecoration(labelText: "Price"),
    validators: [
      FormBuilderValidators.numeric(),
      FormBuilderValidators.min(0),
    ],
  );
  final sectionsField = FormBuilderTextField(
    attribute: "sections",
    keyboardType: TextInputType.number,
    decoration: InputDecoration(labelText: "Sections"),
    validators: [
      FormBuilderValidators.numeric(),
      FormBuilderValidators.min(0),
    ],
  );
  final formationTypeField = FormBuilderDropdown(
    attribute: "formationType",
    decoration: InputDecoration(labelText: "Formation type"),
    //initialValue: RodFormationType.fast.toString().substring(RodFormationType.fast.toString().indexOf('.')+1),
    //hint: Text('Select formation type'),    
    items: RodFormationType.values
      .map((val) => DropdownMenuItem(
          value: val.value,
          child: Text("${val.toString().substring(val.toString().indexOf('.')+1)}")
    )).toList(),
  );

  
}