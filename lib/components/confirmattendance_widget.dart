import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmattendanceWidget extends StatefulWidget {
  const ConfirmattendanceWidget({
    Key? key,
    this.data,
  }) : super(key: key);

  final String? data;

  @override
  _ConfirmattendanceWidgetState createState() =>
      _ConfirmattendanceWidgetState();
}

class _ConfirmattendanceWidgetState extends State<ConfirmattendanceWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-0.05, 0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: FlutterFlowTheme.of(context).black600,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Text(
                'Confirm attendance',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).subtitle1.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.black,
                      fontSize: 25,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: StreamBuilder<List<LectureRecord>>(
                      stream: queryLectureRecord(
                        queryBuilder: (lectureRecord) =>
                            lectureRecord.where('id', isEqualTo: widget.data),
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitCircle(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        List<LectureRecord> buttonLectureRecordList =
                            snapshot.data!;
                        // Return an empty Container when the document does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final buttonLectureRecord =
                            buttonLectureRecordList.first;
                        return FFButtonWidget(
                          onPressed: () async {
                            final attendanceCreateData =
                                createAttendanceRecordData(
                              studentRef: currentUserReference,
                              lectureRef: buttonLectureRecord.reference,
                              date: getCurrentTimestamp,
                            );
                            await AttendanceRecord.collection
                                .doc()
                                .set(attendanceCreateData);

                            final notificationCreateData =
                                createNotificationRecordData(
                              message:
                                  'your attendance has been marked for ${buttonLectureRecord.courseCode}',
                              type: 'Attendance',
                              to: currentUserUid,
                              timeCreated: getCurrentTimestamp,
                              isDone: false,
                            );
                            await NotificationRecord.collection
                                .doc()
                                .set(notificationCreateData);
                            Navigator.pop(context);
                          },
                          text: 'yes',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: 'cancel',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
