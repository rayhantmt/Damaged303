import 'package:audioplayers/audioplayers.dart';
import 'package:damaged303/app/modules/chat/chat_controller.dart';
import 'package:damaged303/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final AudioPlayer audioPlayer = AudioPlayer();

class CahtView extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  CahtView({super.key, this.chat_name, this.chat_imng});
  final String? chat_name;
  final String? chat_imng;

  @override
  Widget build(BuildContext context) {
    final VoiceController voiceController = Get.put(VoiceController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      child: Image.asset(chat_imng ?? ""),
                    ),
                    Text(
                      chat_name ?? "",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color(0xff050505),
                      ),
                    ),
                    Icon(Icons.more_vert_rounded),
                  ],
                ),
                height: 68,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE6ECEB),
                  border: Border.all(width: 1, color: AppColors.primarycolor),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: voiceController.messages.length,
                    reverse: true,
                    itemBuilder: (context, index) {
                      final msg =
                          voiceController.messages[voiceController
                                  .messages
                                  .length -
                              1 -
                              index];
                      return Align(
                        alignment: msg.isMe
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: msg.isMe
                                ? AppColors.primarycolor
                                : Color(0xffE6ECEB),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: msg.audioPath != null
                              ? Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                      onPressed: () async {
                                        await audioPlayer.play(
                                          DeviceFileSource(msg.audioPath!),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Voice message',
                                      style: TextStyle(
                                        color: msg.isMe
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ],
                                )
                              : Text(
                                  msg.text,
                                  style: TextStyle(
                                    color: msg.isMe
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextFormField(
                        controller: textController,
                        decoration: InputDecoration(
                          hintText: '   Type a message...',
                          border: InputBorder.none,
                        ),
                        onFieldSubmitted: (value) {
                          voiceController.sendTextMessage(value);
                          textController.clear();
                        },
                      ),
                      width: Get.width * .50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffDDDDDF)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    Obx(
                      () => GestureDetector(
                        onLongPress: () => voiceController.startRecording(),
                        onLongPressUp: () => voiceController.stopRecording(),
                        onLongPressCancel: () =>
                            voiceController.cancelRecording(),
                        child: CircleAvatar(
                          backgroundColor: voiceController.isRecording.value
                              ? Colors.red
                              : Colors.grey.shade600,
                          radius: 20,
                          child: Icon(
                            voiceController.isRecording.value
                                ? Icons.mic_none
                                : Icons.mic,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),

                    IconButton.filled(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.primarycolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        voiceController.sendTextMessage(textController.text);
                        textController.clear();
                      },
                      icon: Icon(Icons.send_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
