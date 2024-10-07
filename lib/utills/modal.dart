import 'dart:io';

class Global {
  static String name = '';
  static String grid = '';
  static String std = '';
  static File? image;
}

class Modal {
  final String name;
  final String grid;
  final String std;
  final File? image;

  Modal(
      {required this.name,
      required this.grid,
      required this.std,
      required this.image});
}

List<Modal> studentDetails = [];
