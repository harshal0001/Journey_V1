import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journey/screens/calendar.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              CalendarTimeline(
              initialDate: _selectedDate,
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
              onDateSelected: (date) => setState(() => _selectedDate = date),
              leftMargin: 20,
              monthColor: Colors.green,
              dayColor: Colors.black,
              dayNameColor: Colors.black,
              activeDayColor: Colors.white,
              activeBackgroundDayColor: Colors.blue,
              dotsColor:Colors.black,
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en',
            ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 8,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "My Day",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 38),
              Container(
                width: 328,
                height: 134,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade100,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16, top: 16, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Building Startup: A 21-Day Plan",
                                style: GoogleFonts.questrial(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Creating a Business Model\nthat Works",
                                style: GoogleFonts.questrial(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 76,
                            height: 56,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/user_add_grey.png",
                              height: 24),
                          const SizedBox(width: 8),
                          Text(
                            "Invite",
                            style: GoogleFonts.questrial(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 160),
                          Image.asset("assets/icons/undone.png", height: 20),
                          const SizedBox(width: 30),
                          Image.asset("assets/icons/pop_up.png", width: 18),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: 328,
                height: 134,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade100,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16, top: 16, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Building Startup: A 21-Day Plan",
                                style: GoogleFonts.questrial(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Creating a Business Model\nthat Works",
                                style: GoogleFonts.questrial(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 76,
                            height: 56,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/user_add_grey.png",
                              height: 24),
                          const SizedBox(width: 8),
                          GestureDetector(
                            child: Text(
                              "Invite",
                              style: GoogleFonts.questrial(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onTap: () {},
                          ),
                          const SizedBox(width: 160),
                          Image.asset("assets/icons/undone.png", height: 20),
                          const SizedBox(width: 30),
                          Image.asset("assets/icons/pop_up.png", width: 18),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: 328,
                height: 134,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade100,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16, top: 16, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Building Startup: A 21-Day Plan",
                                style: GoogleFonts.questrial(
                                  color: Color(0xFF999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Creating a Business Model\nthat Works",
                                style: GoogleFonts.questrial(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 76,
                            height: 56,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/user_add_grey.png",
                              height: 24),
                          const SizedBox(width: 8),
                          Text(
                            "Invite",
                            style: GoogleFonts.questrial(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 160),
                          Image.asset("assets/icons/undone.png", height: 20),
                          const SizedBox(width: 30),
                          Image.asset("assets/icons/pop_up.png", width: 18),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     const SizedBox(height: 134),
              //     Image.asset("assets/icons/no_task.png", height: 78),
              //     const SizedBox(height: 16),
              //     Text(
              //       "No Task for Today!",
              //       style: GoogleFonts.questrial(
              //         color: Colors.black,
              //         fontSize: 24,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //     const SizedBox(height: 8),
              //     Text(
              //       "Implement a journey or create task to\nstart achieving your goals",
              //       textAlign: TextAlign.center,
              //       style: GoogleFonts.questrial(
              //         color: Color(0xFF666666),
              //         fontSize: 16,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}



/*
TODO -- Horizontal Scroll Bar
// Container(
              //   height: 50,
              //   child: ListView.builder(
              //     // itemCount: 5,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return Row(
              //         children: [
              //           const SizedBox(width: 16),
              //           Container(
              //             height: 40,
              //             width: 76,
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20),
              //               color: Color(0xFF007BEB),
              //             ),
              //             child: Padding(
              //               padding: const EdgeInsets.symmetric(
              //                   horizontal: 16.0, vertical: 12),
              //               child: Text(
              //                 "Today",
              //                 textAlign: TextAlign.center,
              //                 style: GoogleFonts.questrial(
              //                     color: Colors.white,
              //                     fontSize: 16,
              //                     fontWeight: FontWeight.w400),
              //               ),
              //             ),
              //           ),
              //         ],
              //       );
              //     },
              //   ),
              // ),
*/