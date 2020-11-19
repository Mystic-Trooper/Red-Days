import 'package:flutter/material.dart';

const BleedingIntensity = ["Heavy", "Normal", "Low"];

/// This is the stateful widget that the main application instantiates.
class NPHeavyBleed extends StatefulWidget {
  final Function bloodCallback;
  NPHeavyBleed(this.bloodCallback);

  @override
  _NPHeavyBleedState createState() => _NPHeavyBleedState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _NPHeavyBleedState extends State<NPHeavyBleed> {
  var _character = BleedingIntensity[0];

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              const Text('Heavy'),
              Radio(
                value: BleedingIntensity.elementAt(0),
                groupValue: _character,
                onChanged: (String value) {
                  setState(() {
                    _character = value;
                  });
                  widget.bloodCallback(0);
                  print(_character);
                },
              ),
            ],
          ),
          Row(
            children: [
              const Text('Normal'),
              Radio(
                value: BleedingIntensity.elementAt(1),
                groupValue: _character,
                onChanged: (String value) {
                  setState(() {
                    _character = value;
                  });
                  widget.bloodCallback(1);
                  print(_character);
                },
              ),
            ],
          ),
          Row(
            children: [
              const Text('Low'),
              Radio(
                value: BleedingIntensity.elementAt(2),
                groupValue: _character,
                onChanged: (String value) {
                  setState(() {
                    _character = value;
                  });
                  widget.bloodCallback(2);
                  print(_character);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
