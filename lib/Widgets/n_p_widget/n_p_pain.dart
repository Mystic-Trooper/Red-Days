import 'package:flutter/material.dart';

const PainIntensity = ["High", "Moderate", "Low"];

/// This is the stateful widget that the main application instantiates.
class NPPain extends StatefulWidget {
  final Function painCallback;
  NPPain(this.painCallback);

  @override
  _NPPainState createState() => _NPPainState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _NPPainState extends State<NPPain> {
  var _character = PainIntensity[0];

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              const Text('High'),
              Radio(
                value: PainIntensity.elementAt(0),
                groupValue: _character,
                onChanged: (String value) {
                  setState(() {
                    _character = value;
                  });
                  widget.painCallback(0);
                  print(_character);
                },
              ),
            ],
          ),
          Row(
            children: [
              const Text('Moderate'),
              Radio(
                value: PainIntensity.elementAt(1),
                groupValue: _character,
                onChanged: (String value) {
                  setState(() {
                    _character = value;
                  });
                  widget.painCallback(1);
                  print(_character);
                },
              ),
            ],
          ),
          Row(
            children: [
              const Text('Low'),
              Radio(
                value: PainIntensity.elementAt(2),
                groupValue: _character,
                onChanged: (String value) {
                  setState(() {
                    _character = value;
                  });
                  widget.painCallback(2);
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
