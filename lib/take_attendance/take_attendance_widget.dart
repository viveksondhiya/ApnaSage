import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../qr_generate/qr_generate_widget.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TakeAttendanceWidget extends StatefulWidget {
  const TakeAttendanceWidget({Key? key}) : super(key: key);

  @override
  _TakeAttendanceWidgetState createState() => _TakeAttendanceWidgetState();
}

class _TakeAttendanceWidgetState extends State<TakeAttendanceWidget> {
  LectureRecord? lectureref;
  String? dropDownValue1;
  String? dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Take attendance',
          style: FlutterFlowTheme.of(context).title2,
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFA9DDB7),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: FlutterFlowDropDown(
                  initialOption: dropDownValue1 ??= 'CS20B401',
                  options: FFAppState().courses.toList(),
                  onChanged: (val) => setState(() => dropDownValue1 = val),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.black,
                      ),
                  hintText: 'select cousre',
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: FlutterFlowDropDown(
                  initialOption: dropDownValue2 ??= '08:30 - 09:20',
                  options: [
                    '08:30 - 09:20',
                    '09:20 - 10:10',
                    '10:10 - 11:00',
                    '11:00 - 11:50',
                    '12:30 - 01:20',
                    '01:20 - 02:10',
                    '02:10 - 03:00'
                  ],
                  onChanged: (val) => setState(() => dropDownValue2 = val),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.black,
                      ),
                  hintText: 'select shift',
                  fillColor: Colors.white,
                  elevation: 2,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  borderRadius: 0,
                  margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  hidesUnderline: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    final lectureCreateData = createLectureRecordData(
                      date: getCurrentTimestamp,
                      shift: dropDownValue2,
                      courseCode: dropDownValue1,
                      teacherId: currentUserReference,
                      id: random_data.randomString(
                        10,
                        10,
                        true,
                        true,
                        true,
                      ),
                    );
                    var lectureRecordReference = LectureRecord.collection.doc();
                    await lectureRecordReference.set(lectureCreateData);
                    lectureref = LectureRecord.getDocumentFromData(
                        lectureCreateData, lectureRecordReference);
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QrGenerateWidget(
                          course: dropDownValue1,
                          shift: dropDownValue2,
                          data: lectureref!.id,
                        ),
                      ),
                    );

                    setState(() {});
                  },
                  text: 'create QR',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 45,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                        ),
                    elevation: 10,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
