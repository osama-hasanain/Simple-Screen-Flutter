import 'package:flutter/material.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CourseDetails'),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 15.0,
          start: 10.0,
          end: 10.0,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Diploma Of Information Technology Networking',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text('By',style: Theme.of(context).textTheme.bodyText1,),
                        Text('Ahmed Zread',style: Theme.of(context).textTheme.caption,)
                      ],
                    ),
                  ),
                  Expanded(child: Row(
                    children: [
                      Text('Reviews',style: Theme.of(context).textTheme.bodyText1,),
                      Text('(View All)',style: Theme.of(context).textTheme.bodyText1!.
                      copyWith(
                          color: Colors.orange
                      ),)
                    ],
                  ))
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Row(
                    children: [
                      Text('Start on',style: Theme.of(context).textTheme.bodyText1,),
                      Text('05 Feb 2020 |  ',style: Theme.of(context).textTheme.caption,),
                      Text('27 Lessions',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Text(
                '75.00 KWD',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Colors.orange
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                'About this course',
                style: Theme.of(context).textTheme.titleLarge
              ),
              SizedBox(height: 10.0,),
              Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here content here\', making it look like readable English',
                style: Theme.of(context).textTheme.caption!.copyWith(
                  fontSize: 16
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                  'About this course',
                  style: Theme.of(context).textTheme.titleLarge
              ),
              SizedBox(height: 10.0,),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=>
                  courseDetailsItem(),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget courseDetailsItem() =>
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                'Lesson 1',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.orange
                ),
              ),
              SizedBox(width: 20.0,),
              Text(
                'Introduction',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Spacer(),
              Icon(
                  Icons.play_circle_filled_outlined,
                color: Colors.orange[200],
                size: 30.0,
              ),
            ],
          ),
        ),
      );
}
