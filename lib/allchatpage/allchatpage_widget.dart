import '../addchatuser/addchatuser_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chatpage/chatpage_widget.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AllchatpageWidget extends StatefulWidget {
  const AllchatpageWidget({Key? key}) : super(key: key);

  @override
  _AllchatpageWidgetState createState() => _AllchatpageWidgetState();
}

class _AllchatpageWidgetState extends State<AllchatpageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'All Chats',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.person_add_alt,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddchatuserWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: StreamBuilder<List<ChatsRecord>>(
          stream: queryChatsRecord(
            queryBuilder: (chatsRecord) => chatsRecord
                .where('users', arrayContains: currentUserReference)
                .orderBy('last_message_time', descending: true),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitCircle(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 50,
                  ),
                ),
              );
            }
            List<ChatsRecord> containerChatsRecordList = snapshot.data!;
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                child: Builder(
                  builder: (context) {
                    final allChats = containerChatsRecordList.toList();
                    if (allChats.isEmpty) {
                      return Center(
                        child: Image.network(
                          'https://img.freepik.com/free-vector/no-data-concept-illustration_114360-626.jpg?w=2000',
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: allChats.length,
                      itemBuilder: (context, allChatsIndex) {
                        final allChatsItem = allChats[allChatsIndex];
                        return StreamBuilder<FFChatInfo>(
                          stream: FFChatManager.instance
                              .getChatInfo(chatRecord: allChatsItem),
                          builder: (context, snapshot) {
                            final chatInfo =
                                snapshot.data ?? FFChatInfo(allChatsItem);
                            return FFChatPreview(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatpageWidget(
                                    chatUser: chatInfo.otherUsers.length == 1
                                        ? chatInfo.otherUsersList.first
                                        : null,
                                    chatRef: chatInfo.chatRecord.reference,
                                  ),
                                ),
                              ),
                              lastChatText: chatInfo.chatPreviewMessage(),
                              lastChatTime: allChatsItem.lastMessageTime,
                              seen: allChatsItem.lastMessageSeenBy!
                                  .contains(currentUserReference),
                              title: chatInfo.chatPreviewTitle(),
                              userProfilePic: chatInfo.chatPreviewPic(),
                              color: FlutterFlowTheme.of(context).gray200,
                              unreadColor:
                                  FlutterFlowTheme.of(context).tertiary400,
                              titleTextStyle: GoogleFonts.getFont(
                                'Lexend Deca',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              dateTextStyle: GoogleFonts.getFont(
                                'Lexend Deca',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                              previewTextStyle: GoogleFonts.getFont(
                                'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(8, 3, 8, 3),
                              borderRadius: BorderRadius.circular(0),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
