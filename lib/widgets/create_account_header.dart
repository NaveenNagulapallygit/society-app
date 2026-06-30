// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../constants/app_colors.dart';
//
// class CreateAccountHeader extends StatelessWidget {
//   const CreateAccountHeader({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.only(
//         top: MediaQuery.of(context).padding.top + 10,
//         left: 20,
//         right: 20,
//         bottom: 30,
//       ),
//       decoration:  BoxDecoration(
//         color: AppColors.primary,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(0),
//           bottomRight: Radius.circular(0),
//         ),
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               InkWell(
//                 onTap: () => Get.back(),
//                 borderRadius: BorderRadius.circular(25),
//                 child: Container(
//                   padding:  EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.white.withValues(alpha: 0.15),
//                     shape: BoxShape.circle,
//                   ),
//                   child:  Icon(
//                     Icons.arrow_back_ios_new,
//                     color: Colors.white,
//                     size: 20,
//                   ),
//                 ),
//               ),
//                Spacer(),
//                Text(
//                 "Create Account",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//                Spacer(),
//                SizedBox(width: 36),
//             ],
//           ),
//            SizedBox(height: 20),
//            Text(
//             "Personal Information",
//             style: TextStyle(
//               color: Colors.white70,
//               fontSize: 15,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CreateAccountHeader extends StatelessWidget {
  const CreateAccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:  EdgeInsets.only(bottom: 24.0),
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF6C47FF),
            Color(0xFF4E3BFF),
          ],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Back Button Layer
            Positioned(
              left: 8,
              top: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),

            // Centered Content Layer
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Apartment Icon Container
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.1),
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.apartment,
                      color: Colors.white,
                      size: 38,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Main Title
                  const Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // Subtitle
                  const Text(
                    "Personal Information",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}