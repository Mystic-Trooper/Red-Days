import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
import 'package:womenism/Constant/colors.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:womenism/provider/period_provider.dart';
import '../../Widgets/n_p_widget/n_p_heavyBleed.dart';
import '../../Widgets/n_p_widget/n_p_pain.dart';

// ignore: must_be_immutable
class AddPeriodScreen extends StatelessWidget {
  static const routeName = "add-Period";
  final format = DateFormat("yyyy-MM-dd hh:mm a");
  DateTime from;
  DateTime to;
  int painIndex = 0;
  int bloodIndex = 0;

  void painCallback(int _painIndex) {
    painIndex = _painIndex;
  }

  void bloodCallback(int _bloodIndex) {
    bloodIndex = _bloodIndex;
  }

  void _saveForm(BuildContext context) async {
    print(painIndex);
    print(bloodIndex);
    print(from);
    print(to);
    if (from != null && to != null) {
      Provider.of<PeriodProvider>(context, listen: false).addPeriod(
        blood: bloodIndex,
        pain: painIndex,
        from: from?.toIso8601String(),
        to: to?.toIso8601String(),
      );
      print("Requesting to add period ");
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Title("Last Time When you got cycle?",
                  FlutterIcons.calendar_alt_faw5),
              SizedBox(height: 0.01.sh),
              Container(
                width: 0.95.sw,
                child: DateTimeField(
                  format: format,
                  decoration: InputDecoration(
                    labelText: "from",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  initialValue: null,
                  onShowPicker: (context, currentValueCFrom) async {
                    currentValueCFrom = DateTime.now();
                    final date = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      initialDate: currentValueCFrom ?? DateTime.now(),
                      lastDate: DateTime(2025),
                    );
                    if (date != null) {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(
                            currentValueCFrom ?? DateTime.now()),
                      );

                      from = DateTimeField.combine(date, time);
                      return DateTimeField.combine(date, time);
                    } else {
                      from = currentValueCFrom;
                      return currentValueCFrom;
                    }
                  },
                ),
              ),
              SizedBox(height: 0.01.sh),
              Container(
                width: 0.95.sw,
                child: DateTimeField(
                  format: format,
                  decoration: InputDecoration(
                    labelText: "To",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  initialValue: null,
                  onShowPicker: (context, currentValueTTo) async {
                    currentValueTTo = DateTime.now();
                    final date = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      initialDate: currentValueTTo ?? DateTime.now(),
                      lastDate: DateTime(2025),
                    );
                    if (date != null) {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(
                            currentValueTTo ?? DateTime.now()),
                      );

                      to = DateTimeField.combine(date, time);
                      return DateTimeField.combine(date, time);
                    } else {
                      to = currentValueTTo;
                      return currentValueTTo;
                    }
                  },
                ),
              ),
              SizedBox(height: 0.02.sh),
              Title("Is it a heavy bleeding?", FlutterIcons.drop_ent),
              NPHeavyBleed(bloodCallback),
              Title("How was the pain?", FlutterIcons.feather_alt_faw5s),
              NPPain(painCallback),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Save",
          style: TextStyle(color: Colors.black),
        ),
        isExtended: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          _saveForm(context);
        },
      ),
    );
  }
}

class Title extends StatelessWidget {
  final title;
  final icon;

  Title(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 0.01.sw),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
