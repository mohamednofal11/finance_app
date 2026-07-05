// import 'package:flutter/material.dart';
//
// class MainNavigationScreen extends StatefulWidget {
//   const MainNavigationScreen({super.key});
//
//   @override
//   State<MainNavigationScreen> createState() => _MainNavigationScreenState();
// }
//
// class _MainNavigationScreenState extends State<MainNavigationScreen> {
//   int _currentIndex = 0;
//
//   // القائمة الخاصة بالشاشات التي سيتنقل بينها المستخدم
//   final List<Widget> _screens = [
//     const Center(child: Text('Home Screen')),
//     const Center(child: Text('Statistic Screen')),
//     const Center(child: Text('Add Screen')), // مكان شاشة الزرار اللي في النص
//     const Center(child: Text('My Card Screen')),
//     const Center(child: Text('Profile Screen')),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//
//       // 1. الزرار الأزرق الدائري البارز في المنتصف
//       floatingActionButton: Container(
//         width: 64,
//         height: 64,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           boxShadow: [
//             BoxShadow(
//               color: const Color(0xFF6374FF).withOpacity(0.3),
//               blurRadius: 12,
//               offset: const Offset(0, 4), // الظل الخفيف تحت الزرار
//             ),
//           ],
//         ),
//         child: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _currentIndex = 2; // الانتقال لصفحة الإضافة عند الضغط
//             });
//           },
//           backgroundColor: const Color(0xFF6374FF), // اللون الأزرق من الصورة
//           shape: const CircleBorder(), // لجعل الزرار دائري تماماً
//           elevation: 0, // بنلغي الـ elevation الافتراضي عشان حطينا shadow مخصص
//           child: const Icon(Icons.add, color: Colors.white, size: 32),
//         ),
//       ),
//
//       // 2. تحديد موقع الزرار ليكون في منتصف الـ BottomNavigationBar تماماً
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//       // 3. شريط التنقل السفلي
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(), // لعمل التجويف حول الزرار الدائري لو رغبت، أو اتركه فلات كالصورة
//         notchMargin: 8.0,
//         color: Colors.white,
//         elevation: 10, // ظل خفيف للشريط بأكمله
//         child: SizedBox(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               // زر Home
//               _buildNavItem(icon: Icons.home_rounded, label: 'Home', index: 0),
//
//               // زر Statistic
//               _buildNavItem(icon: Icons.bar_chart_rounded, label: 'Statistic', index: 1),
//
//               // مساحة فارغة في المنتصف ليجلس فيها الـ FloatingActionButton براحته دون أن يغطي على الأيقونات
//               const SizedBox(width: 40),
//
//               // زر My card
//               _buildNavItem(icon: Icons.account_balance_wallet_outlined, label: 'My card', index: 3),
//
//               // زر Profil
//               _buildNavItem(icon: Icons.person_outline_rounded, label: 'Profil', index: 4),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // الـ Widget المخصص لبناء عناصر الأيقونات والنصوص بشكل متناسق
//   Widget _buildNavItem({required IconData icon, required String label, required int index}) {
//     final isSelected = _currentIndex == index;
//     return InkWell(
//       onTap: () {
//         setState(() {
//           _currentIndex = index;
//         });
//       },
//       splashColor: Colors.transparent,
//       highlightColor: Colors.transparent,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             color: isSelected ? const Color(0xFF6374FF) : Colors.grey[400],
//             size: 26,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
//               color: isSelected ? const Color(0xFF1A1A1A) : Colors.grey[400],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }