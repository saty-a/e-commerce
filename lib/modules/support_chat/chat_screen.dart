import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/values/images.dart';
import '../../data/values/strings.dart';
import '../../styles/app_colors.dart';
import '../../styles/text_styles.dart';

class SupportChatScreen extends StatelessWidget {
  const SupportChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.supportChat, style: Styles.tsSb20,),
        elevation: 3,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 12, right: 24),
              reverse: true,
              itemBuilder: (context, index) {
                return index.isOdd ? othersMessageItemView(context, index) : myMessageItemView(context, index);
              },
              itemCount: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.grey200, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 4.0),
                      child: TextField(
                        minLines: 1,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: AppStrings.supportChatInputHint,
                          hintStyle: Styles.tsR14.copyWith(color: AppColors.grey450),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        textCapitalization: TextCapitalization.sentences,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: null,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: SvgPicture.asset(Images.icSend),
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget othersMessageItemView(BuildContext context, int index) {
    var message = "Hi Tanya, how can I help you?";
    return Padding(
      padding: const EdgeInsets.only(
        top: true
            ? 18
            : 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                left:  BorderSide(color: Colors.transparent, width: 5),
                top: BorderSide(color: AppColors.grey100, width: 5),
                right: BorderSide(color: AppColors.grey100, width: 5),
                bottom:  BorderSide(color: Colors.transparent, width: 5),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
            padding: const EdgeInsets.fromLTRB(12, 8, 8, 4),
            color: AppColors.grey100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(message,
                        style: Styles.tsM12,
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
                Text("11:14 AM",
                  style: Styles.tsM12,
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget myMessageItemView(BuildContext context, int index) {
    var message = "Hi I have issues with my card,\nCan you help me?";
    return Padding(
      padding: const EdgeInsets.only(
        top: true
            ? 18
            : 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
            padding: const EdgeInsets.fromLTRB(12, 8, 8, 4),
            color: AppColors.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(message,
                        style: Styles.tsM12.copyWith(color: Colors.white),
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
                Text("11:14 AM",
                  style: Styles.tsM12.copyWith(color: Colors.white),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                left:  BorderSide(color: AppColors.primary, width: 5),
                top: BorderSide(color: AppColors.primary, width: 5),
                right: BorderSide(color: Colors.transparent, width: 5),
                bottom:  BorderSide(color: Colors.transparent, width: 5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}