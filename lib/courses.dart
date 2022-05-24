import 'package:flutter/material.dart';
import 'package:flutter_proj/course_details.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses>  with SingleTickerProviderStateMixin{
  TabController? _controller;
  int index = 0;

  @override
  void initState() {
    _controller =  TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
                'Course'
            ),
            leading: Icon(Icons.list),
          ),
          body: Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 20,
              start: 10,
              end: 10,
            ),
            child: Column(
              children: [
                Container(
                    height: 40.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(3, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: TabBar(
                        controller: _controller,
                        onTap: (x){
                          setState(() {
                           index = x;
                          });
                        },
                        tabs: [
                          Text(
                            'ALL COURSES',
                            style:TextStyle(
                                color: index==0?Colors.orange:
                                Colors.black87
                            ),
                          ),
                          Text(
                            'MY COURSES',
                            style:TextStyle(
                                color: index==1?Colors.orange:
                                Colors.black87
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: TabBarView(
                      controller: _controller,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context,index)=>
                              allCoursesItem(),
                        ),
                        ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context,index)=>
                            myCourseItem(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }


  Widget allCoursesItem() =>
      InkWell(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blology&The Sientifie Method',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      children: [
                        Text(
                          'By',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(width: 5.0,),
                        Text(
                          '30 Jon 2020',
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Text('16 lesons',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.orange
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onTap: ()=>Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>CourseDetails()),
        )
      );

  Widget myCourseItem() =>
      InkWell(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blology&The Sientifie Method',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      children: [
                        Text(
                          'Start on',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(width: 5.0,),
                        Text(
                          '30 Jon 2020',
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Text('03 of 4 Leveasons',
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                )
              ],
            ),
          ),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
          onTap: ()=>Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>CourseDetails()),
          )
      );
}
