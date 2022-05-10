import 'package:clinic/components/lesson_widget.dart';
import 'package:clinic/models/lesson_model.dart';
import 'package:clinic/models/topic_model.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CirculumTab extends StatelessWidget {
  final List<TopicModel> topics;

  CirculumTab({
    required this.topics,
  });

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
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: topics.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final topic = topics[index];
                        return Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  topic.title,
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              if (topic.description != null)
                                Text(topic.description!),
                              ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: topic.lessons.length,
                                  itemBuilder: (context, index) {
                                    final lesson = topic.lessons[index];
                                    return LessonWidget(
                                      duration: lesson.duration,
                                      isQuiz: lesson.isQuiz,
                                      isEven: (index + 1) % 2 == 0,
                                      title: lesson.title,
                                    );
                                  })
                            ],
                          ),
                        );
                      })
                ]),
              ),
            ),
          ],
        );
      }),
    );
  }
}
