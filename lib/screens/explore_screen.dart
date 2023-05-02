import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 12),
          Container(
            height: 50,
            child: ListView.builder(
              // itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const SizedBox(width: 16),
                    Container(
                      height: 40,
                      width: 76,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF007BEB),
                      ),
                      child: Center(
                        child: GestureDetector(
                          child: Text(
                            "For You",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.questrial(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          onTap: () {
                            
                          },
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 88,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade100,
                          offset: Offset(-4, -4),
                        ),
                        BoxShadow(
                          color: Colors.grey.shade100,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 1, top: 1, bottom: 1),
                          child: Container(
                            height: 88,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 18, bottom: 16, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Building Startup: A 7-Day\nPlan for Success",
                                style: GoogleFonts.questrial(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text("Building Startup",
                                  style: GoogleFonts.questrial(
                                      color: Color(0xFF999999),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
