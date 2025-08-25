// import 'package:flutter/material.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0XFFFFFFFF),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Top Section
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const CircleAvatar(
//                     radius: 24,
//                     backgroundColor: Colors.grey,
//                     child: Icon(Icons.person, color: Colors.white),
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 12),
//                       child: Text.rich(
//                         TextSpan(
//                           text: "Hello, ",
//                           style: const TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                               color: Color(0xFF999999)),
//                           children: [
//                             TextSpan(
//                               text: "Jessica",
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 16,
//                                 color: Color(0xFF333333),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.notifications_outlined),
//                     onPressed: () {},
//                   )
//                 ],
//               ),

//               const SizedBox(height: 20),

//               // Good Result Section
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   image: const DecorationImage(
//                     image: AssetImage('assets/patern.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   color: Colors.blue[50],
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Row(
//                   children: [
//                     SizedBox(
//                       height: 80,
//                       width: 80,
//                       child: Stack(
//                         fit: StackFit.expand,
//                         children: [
//                           CircularProgressIndicator(
//                             value: 0.75,
//                             strokeWidth: 8,
//                             backgroundColor: Colors.grey.shade300,
//                             valueColor: const AlwaysStoppedAnimation(
//                               Color(0xFF6FD0D7),
//                             ),
//                           ),
//                           const Center(
//                             child: Text(
//                               "75%",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 14,
//                                 color: Color(0xFF4E5C66),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Good Result!",
//                           style: TextStyle(
//                             color: Color(0xFF4E5C66),
//                             fontSize: 16,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text(
//                           "Share your achievement with your friend",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 8,
//                             color: Color(0xFF4E5C66),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // Recent Quiz Section
// const Text(
//   "Recent Quiz",
//   style: TextStyle(
//     fontSize: 14,
//     fontWeight: FontWeight.w600,
//     color: Color(0xFF999999),
//   ),
// ),
// const SizedBox(height: 12),
// Row(
//   children: [
//     // Reading Quiz Card
//     Expanded(
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: const Color(0xFFF5F7FA),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 40,
//               width: 40,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Center(
//                 child: Image.asset(
//                   "assets/Group 1823.png", // Reading icon
//                   width: 24,
//                   height: 24,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             const Text(
//               "Reading",
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 14,
//                 color: Color(0xFF333333),
//               ),
//             ),
//             const SizedBox(height: 4),
//             const Text(
//               "You completed 65%",
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w400,
//                 color: Color(0xFF999999),
//               ),
//             ),
//             const SizedBox(height: 6),
//             LinearProgressIndicator(
//               value: 0.65,
//               color: const Color(0xFF21BDCA),
//               backgroundColor: const Color(0xFFF2F2F2),
//               borderRadius: BorderRadius.circular(10),
//               minHeight: 6,
//             ),
//           ],
//         ),
//       ),
//     ),
//     const SizedBox(width: 12),

//     // Speaking Quiz Card
//     Expanded(
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: const Color(0xFFF5F7FA),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//                height: 40,
//                 width: 40,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xFFFFFFFF),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Center(
//                   child: Image.asset(
//                     "assets/speaking.png", // Speaking icon
//                     width: 24,
//                     height: 24,
//                     color: Color(0xFF5372E7),
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 8),
//             const Text(
//               "Speaking",
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 14,
//                 color: Color(0xFF333333),
//               ),
//             ),
//             const SizedBox(height: 4),
//             const Text(
//               "You completed 85%",
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 12,
//                 color: Color(0xFF999999),
//               ),
//             ),
//             const SizedBox(height: 6),
//             LinearProgressIndicator(
//               value: 0.85,
//               color: const Color(0xFF5372E7),
//               backgroundColor: Colors.grey[300],
//               borderRadius: BorderRadius.circular(10),
//               minHeight: 6,
//             ),
//           ],
//         ),
//       ),
//     ),
//   ],
// ),


//               const SizedBox(height: 12),

//               // Popular Quiz Section Title
//               const Text(
//                 "Popular Quiz",
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF999999),
//                 ),
//               ),
//               const SizedBox(height: 12),

//               // Technology Card
//               Card(
//                 color: Color(0xFFFFFFFF),
//                 margin: const EdgeInsets.only(bottom: 12),
//                 elevation: 1,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)),
//                 child: ListTile(
//                   contentPadding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   leading: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFFFE3BE),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Center(
//                       child: Image.asset(
//                         "assets/computer.png",
//                         height: 24,
//                         width: 24,
//                       ),
//                     ),
//                   ),
//                   title: const Text(
//                     "Technology",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w600, fontSize: 14),
//                   ),
//                   subtitle: const Text(
//                     "10 Question",
//                     style: TextStyle(fontSize: 12, color: Colors.black54),
//                   ),
//                   onTap: (){
//                     Navigator.push(context, 
//                     MaterialPageRoute(builder: (context) => information_screen(title:'Technology')),);
//                   },
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const [
//                       Icon(Icons.star, color: Colors.amber, size: 18),
//                       SizedBox(width: 4),
//                       Text(
//                         "4.8",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600, fontSize: 12),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               // Sport Card
//               Card(
//                 color: Color(0xFFFFFFFF),

//                 margin: const EdgeInsets.only(bottom: 12),
//                 elevation: 1,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)),
//                 child: ListTile(
//                   contentPadding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   leading: Container(
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFEAEEFF),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Center(
//                       child: Image.asset(
//                         "assets/football.png",
//                         height: 24,
//                         width: 24,
//                       ),
//                     ),
//                   ),
//                   title: const Text(
//                     "Sport",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w600, fontSize: 14),
//                   ),
//                   subtitle: const Text(
//                     "10 Question",
//                     style: TextStyle(fontSize: 12, color: Colors.black54),
//                   ),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const [
//                       Icon(Icons.star, color: Colors.amber, size: 18),
//                       SizedBox(width: 4),
//                       Text(
//                         "4.8",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600, fontSize: 12),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               // Music Card
//               Card(
//                 color: Color(0xFFFFFFFF),
//                 margin: const EdgeInsets.only(bottom: 12),
//                 elevation: 1,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)),
//                 child: ListTile(
//                   contentPadding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   leading: SizedBox(
//                     height: 40,
//                     width: 40,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: const Color(0xFFF6E5E5),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Center(
//                         child: Image.asset(
//                           "assets/music.png",
//                           height:24,
//                           width: 24,
//                         ),
//                       ),
//                     ),
//                   ),
//                   title: const Text(
//                     "Music",
//                     style: TextStyle(
//                         fontWeight: FontWeight.w600, fontSize: 14),
//                   ),
//                   subtitle: const Text(
//                     "10 Question",
//                     style: TextStyle(fontSize: 12, color: Colors.black54),
//                   ),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: const [
//                       Icon(Icons.star, color: Colors.amber, size: 18),
//                       SizedBox(width: 4),
//                       Text(
//                         "4.8",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600, fontSize: 12),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
 
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/information_screen.dart';
import 'model.dart';
import 'quiz_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Future<List<QuizModel>> fetchQuizData() async {
    final response = await http.get(Uri.parse("https://mocki.io/v1/fd8b564a-9526-4c0a-8324-d6deed4ccd6c")); 
    // 🔹 yahan apni API ka URL daalo

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> quizList = data["quiz"];
      return quizList.map((q) => QuizModel.fromJson(q)).toList();
    } else {
      throw Exception("Failed to load quiz data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Aapka Top Section, Good Result, Recent Quiz yahan same rahega

              const SizedBox(height: 12),
              const Text(
                "Popular Quiz",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF999999),
                ),
              ),
              const SizedBox(height: 12),

              // 🔹 Technology Card (Updated with API + Navigation)
              Card(
                color: const Color(0xFFFFFFFF),
                margin: const EdgeInsets.only(bottom: 12),
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8),
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE3BE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/computer.png",
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                  title: const Text(
                    "Technology",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  subtitle: const Text(
                    "10 Questions",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  onTap: () async {
                    // 🔹 Pehle loading dikhayenge
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );

                    try {
                      List<QuizModel> quizData = await fetchQuizData();
                      Navigator.pop(context); // loader hatao

                      // 🔹 Quiz Screen open karo
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(
                            quizList: quizData,
                            startIndex: 0,
                          ),
                        ),
                      );
                    } catch (e) {
                      Navigator.pop(context); // loader hatao
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Failed to load quiz: $e")),
                      );
                    }
                  },
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      SizedBox(width: 4),
                      Text(
                        "4.8",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),

              // 🔹 Sport aur Music cards waise hi rehne do
            ],
          ),
        ),
      ),
    );
  }
}

