import 'package:audio_session/audio_session.dart';
import 'package:clinic/modules/courses/details/details_controller.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:get/get.dart';

class ReviewsTab extends StatelessWidget {
  DetailsController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              // This is the flip side of the SliverOverlapAbsorber
              // above.
              handle: ExtendedNestedScrollView.sliverOverlapAbsorberHandleFor(
                  context),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38)),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20.w, 5.h, 0, 0),
                              height: 50.h,
                              margin: EdgeInsets.fromLTRB(10, 5.h, 10, 0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Theme.of(context).shadowColor,
                                      blurRadius: 5,
                                    )
                                  ]),
                              child: TextField(
                                style: TextStyle(fontSize: 18.sp),
                                cursorHeight: 20.h,
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintText: "Enter a comment",
                                  hintStyle: TextStyle(
                                      color: Colors.black38, fontSize: 16.sp),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            //uploading images and videos and voice records
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                    onPressed: () async {
                                      await controller.openTheRecorder();
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return Dialog(
                                              child: Container(
                                                height: 200,
                                                width: 200,
                                              ),
                                            );
                                          });
                                    },
                                    icon: Icon(
                                      Icons.multitrack_audio_rounded,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    )),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.image,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.video_call_outlined,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ],
        );
      }),
    );
  }
}
