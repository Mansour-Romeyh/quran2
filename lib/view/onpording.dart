import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran2/core/constant/appfonts.dart';
import 'package:quran2/core/constant/approutes.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey.shade700, Colors.grey.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              ' مرحبا بك في تطبيق الورد اليومي لحفظ القران الكريم',
              textAlign: TextAlign.center,
              style: Appfonts.fonttagwal.copyWith(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            _buildButton(
              text: 'السور',
              onPressed: () => Get.toNamed(Approutes.homeview),
            ),
            const SizedBox(height: 20),
            _buildButton(
              text: 'المفضلة',
              onPressed: () => Get.toNamed(Approutes.favorite),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({required String text, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        backgroundColor: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 5,
      ),
      child: Text(
        text,
        style: Appfonts.fonttagwal.copyWith(
          color: Colors.grey.shade900,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
