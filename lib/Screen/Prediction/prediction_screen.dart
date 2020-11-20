import 'package:flutter/material.dart';
import 'package:womenism/Screen/DoctorList/doctor_list_screen.dart';
import '../../Widgets/predi_s_widget/predi_s_expectedDate.dart';
import '../../Widgets/predi_s_widget/predi_s_BarGraphTrack.dart';
import '../../Widgets/predi_s_widget/predi_s_analysis.dart';
import '../../provider/sos_message_provider.dart';

class PredictionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Statistics",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[800],
                  ),
                ),
                Container(
                  child: BarGraphTrack(),
                  height: 260,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Expected ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(height: 10),
                ExpectedDate(),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  child: RaisedButton(
                    onPressed: () {},
                    onLongPress: () {
                      sosDoc();
                    },
                    child: Text(
                      'LONG PRESS TO SEND SOS',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.redAccent[100],
                  ),
                ),
                SizedBox(height: 10),
                Analysis(),
                SizedBox(height: 10),
                Container(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.amber[400],
                                BlendMode.saturation,
                              ),
                              child: Image.asset(
                                'assets/images/doctor-s-stethoscope.jpg',
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                      Container(
                        height: 190,
                        alignment: Alignment.bottomRight,
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            //('condition')? Widget1(...): Widget2(...)
                            Text(
                              (false)
                                  ? 'No need to\t \n Consult a\t \n Doctor\t'
                                  : 'Advised to\t \n Consult\t \n a Doctor\t',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue[600],
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300),
                            ),
                            OutlineButton(
                              child: Text('Consult Now'),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(DoctorListScreen.routeName);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height: 260,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
