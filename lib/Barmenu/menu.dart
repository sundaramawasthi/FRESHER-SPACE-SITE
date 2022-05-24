import 'package:flutter/material.dart';

import '../Bootcamp/Bootcamp.dart';
import '../Internship/internship.dart';
import '../JOB/job.dart';
import '../Live/liveproject.dart';
import '../industrial trainign/industry.dart';

class Sorting extends StatefulWidget {
  // const Sorting({
  //   Key? key,
  // }) : super(key: key);

  @override
  State<Sorting> createState() => _SortingState();
}

class _SortingState extends State<Sorting> {
  /// Start for Student dialog
  Map<String, Map<int, List<String>>> dict = {
    'internship': {
      1: ['Web Development'],
      2: ['Android Development'],
      3: ['Flutter Development'],
      4: ['Full Stack Development'],
      5: ['.Net Development '],
      6: ['Node js development'],
      7: ['machine learning'],
      8: ['Python developer']
    },
  };
  final List<int> item = [1, 2, 3, 4, 5, 6, 7, 8];
  int sem = 1;
  List<String>? get subjects => dict['internship']![sem];
  int index = 0;
  String? get subject => subjects![index];

  dialogFun(context) {
    return showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
              backgroundColor: Colors.cyanAccent,
              title: const Text("Press Submit \nTech Dashboard"),
              content: StatefulBuilder(builder: (context, StateSetter setSate) {
                return Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: 500,
                  child: Column(
                    children: [
                      const Text(
                          "     Please Select  \n  Tech which you want to do Internship"),
                      const Text("\n "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: sem, // currently selected item
                          items: item
                              .map((item) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Select tech ' + item.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: item,
                                  ))
                              .toList(),
                          onChanged: (val) => setSate(() {
                            sem = val!;
                            index = 0;
                          }),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: index, // currently selected item
                          items: subjects
                              ?.map((item) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          item.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: subjects?.indexOf(item),
                                  ))
                              .toList(),
                          onChanged: (value) => setSate(() {
                            index = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('cancel'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Internship(
                              skill: dict['internship']![sem]![index],
                              sem: sem,
                            ),
                          ));
                    },
                    child: Text('submit')),
              ],
            ));
  }

  /// End of Student Dialog

  /// Start for Explorer career ..
  Map<String, Map<int, List<String>>> dictt = {
    'tech': {
      1: ['Webdevelopment'],
      2: ['Android development'],
      3: ['flutter development'],
      4: ['Python development'],
      5: ['.Net development'],
      6: ['Node js  development'],
      7: ['Full stack development'],
    },
  };
  final List<int> items = [1, 2, 3, 4, 5, 6, 7];
  int Count = 1;
  List<String>? get Select => dictt['tech']![Count];
  int idx = 0;
  String get Slt => Select![idx];

  dialogFunn(context) {
    return showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
              backgroundColor: Colors.cyanAccent,
              title: const Text("Press Submit \nTech Dashboard"),
              content: StatefulBuilder(builder: (context, StateSetter setSate) {
                return Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: 500,
                  child: Column(
                    children: [
                      const Text(
                          "     Please Select  \n On which technology you want to do Project"),
                      const Text("\n "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: Count, // currently selected item
                          items: items
                              .map((items) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Select Tech ' + items.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: items,
                                  ))
                              .toList(),
                          onChanged: (val) => setSate(() {
                            Count = val!;
                            idx = 0;
                          }),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: idx, // currently selected item
                          items: Select?.map((items) => DropdownMenuItem<int>(
                                child: Row(
                                  children: [
                                    const Icon(Icons.book_outlined),
                                    const SizedBox(width: 8),
                                    Text(
                                      items.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                value: Select?.indexOf(items),
                              )).toList(),
                          onChanged: (value) => setSate(() {
                            idx = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Live(
                                    skill: dictt['tech']![Count]![idx],
                                    Count: Count,
                                  )));
                    },
                    child: Text('submit')),
              ],
            ));
  }

  /// End of Explore career ...

  /// Here start for the Resoning dialogbox
  Map<String, Map<int, List<String>>> Rdict = {
    'Training': {
      1: [
        'flutter',
      ],
      2: [
        'Android',
      ],
      3: [
        'Full stack',
      ],
      4: [
        'Machine Learning',
      ],
      5: [
        'Airtificial Intelegence',
      ],
      6: [
        'Node js ',
      ],
      7: [
        'Cyber security',
      ],
    },
  };
  final List<int> itm = [1, 2, 3, 4, 5, 6, 7];
  int RCount = 1;
  List<String>? get Skill => Rdict['Training']![RCount];
  int idxx = 0;
  String? get skill => Skill![idxx];

  IndutrialTraining(context) {
    return showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
              backgroundColor: Colors.cyanAccent,
              title: const Text("Press Submit \nReasoning Dashboard"),
              content: StatefulBuilder(builder: (context, StateSetter setSate) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    children: [
                      const Text("     Please Select  \nThe training "),
                      const Text("\n "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: RCount, // currently selected item
                          items: itm
                              .map((items) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Select Project ' + items.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: items,
                                  ))
                              .toList(),
                          onChanged: (val) => setSate(() {
                            RCount = val!;
                            idxx = 0;
                          }),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: idxx, // currently selected item
                          items: Skill?.map((items) => DropdownMenuItem<int>(
                                child: Row(
                                  children: [
                                    const Icon(Icons.book_outlined),
                                    const SizedBox(width: 8),
                                    Text(
                                      items.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                value: Skill?.indexOf(items),
                              )).toList(),
                          onChanged: (value) => setSate(() {
                            idxx = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => industry(
                            skill: Rdict['Training']![RCount]![idxx],
                            RCount: RCount,
                          ),
                        ),
                      );
                    },
                    child: Text('submit')),
              ],
            ));
  }

  /// End of Reasoning Dialog.

  Map<String, Map<int, List<String>>> Bdict = {
    'Bootcamp': {
      1: [
        'Tech',
      ],
      2: [
        'Language',
      ],
    },
  };
  final List<int> Bitm = [1, 2];
  int BCount = 1;
  List<String>? get BSkill => Bdict['Bootcamp']![BCount];
  int Bidxx = 0;
  String? get Bskill => Skill![idxx];

  Bootcamp(context) {
    return showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
              backgroundColor: Colors.cyanAccent,
              title: const Text("Press Submit \nDashboard"),
              content: StatefulBuilder(builder: (context, StateSetter setSate) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    children: [
                      const Text("     Please Select  \nThe Bootcamp "),
                      const Text("\n "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: BCount, // currently selected item
                          items: Bitm.map((items) => DropdownMenuItem<int>(
                                child: Row(
                                  children: [
                                    const Icon(Icons.book_outlined),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Select Bootcamp ' + items.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                value: items,
                              )).toList(),
                          onChanged: (val) => setSate(() {
                            BCount = val!;
                            Bidxx = 0;
                          }),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: Bidxx, // currently selected item
                          items: BSkill?.map((items) => DropdownMenuItem<int>(
                                child: Row(
                                  children: [
                                    const Icon(Icons.book_outlined),
                                    const SizedBox(width: 8),
                                    Text(
                                      items.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                value: BSkill?.indexOf(items),
                              )).toList(),
                          onChanged: (value) => setSate(() {
                            Bidxx = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BootcampPage(
                            skill: Bdict['Bootcamp']![BCount]![Bidxx],
                            BCount: BCount,
                          ),
                        ),
                      );
                    },
                    child: Text('submit')),
              ],
            ));
  }

  Map<String, Map<int, List<String>>> jdict = {
    'JOB': {
      1: [
        'Flutter',
      ],
      2: [
        'Android',
      ],
      3: [
        'Full stack',
      ],
      4: [
        'Machine Learning',
      ],
      5: [
        'Airtificial Intelegence',
      ],
      6: [
        'Node js ',
      ],
      7: [
        'Cyber security',
      ],
    },
  };
  final List<int> jitm = [1, 2, 3, 4, 5, 6, 7];
  int jCount = 1;
  List<String>? get jSkill => jdict['JOB']![jCount];
  int jidxx = 0;
  String? get jskill => Skill![idxx];

  Job(context) {
    return showDialog(
        context: context,
        builder: (BuildContext) => AlertDialog(
              backgroundColor: Colors.cyanAccent,
              title: const Text("Press Submit \nDashboard"),
              content: StatefulBuilder(builder: (context, StateSetter setSate) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    children: [
                      const Text("     Please Select  \nThe Job Category "),
                      const Text("\n "),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: jCount, // currently selected item
                          items: jitm
                              .map((items) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Select Category ' + items.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: items,
                                  ))
                              .toList(),
                          onChanged: (val) => setSate(() {
                            jCount = val!;
                            jidxx = 0;
                          }),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          value: jidxx, // currently selected item
                          items: jSkill
                              ?.map((items) => DropdownMenuItem<int>(
                                    child: Row(
                                      children: [
                                        const Icon(Icons.book_outlined),
                                        const SizedBox(width: 8),
                                        Text(
                                          items.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value: jSkill?.indexOf(items),
                                  ))
                              .toList(),
                          onChanged: (value) => setSate(() {
                            jidxx = value!;
                          }),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel')),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Jobpage(
                            jCount: jCount,
                            skill: jdict['JOB']![jCount]![jidxx],
                          ),
                        ),
                      );
                    },
                    child: Text('submit')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Row(
            //space between widgets
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              //   decoration: BoxDecoration(
              //     color: kpink,
              //     borderRadius: BorderRadius.circular(19.0),
              //   ),
              //   // child: GestureDetector(
              //   //   onTap: () {
              //   //     showDialog(
              //   //         context: context,
              //   //         builder: (BuildContext context) => HomeScreen());
              //   //   },
              //   //   child: const Text(
              //   //     "Top",
              //   //     style: TextStyle(fontSize: 18.0, color: Colors.white),
              //   //   ),
              //   // ),
              // ),
              SizedBox(
                width: 50,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 110.0, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    dialogFun(context);
                  },
                  child: const Text(
                    "   Internship",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 110.0, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () => Job(context),
                  child: const Text(
                    "JOB",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 110.0, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    dialogFunn(context);
                  },
                  child: const Text(
                    "    Live Project    ",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 110.0, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    IndutrialTraining(context);
                  },
                  child: const Text(
                    "Industrial Project",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 110.0, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(19.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    Bootcamp(context);
                  },
                  child: const Text(
                    "Bootcamp",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Container(
              //       height: 20, child: Image.asset("assets/icon/sort.png")),
              // ),
            ])
      ]),
    );
  }
}
