
class ProgramModel{
    final String imageUrl;
    final String category;
    final String programName;
   final int lessons ;

    ProgramModel({required this.imageUrl,required this.category,required this.lessons,required this.programName});

}

List<ProgramModel> programList = [
  ProgramModel(
      imageUrl: 'assets/lesson1.png',
      category: 'LIFESTYLE',
      programName: 'A complete guide for your new born baby',
      lessons: 16
  ),
    ProgramModel(
        imageUrl: 'assets/lesson1.png',
        category: 'LIFESTYLE',
        programName: 'A complete guide for your new born baby',
        lessons: 16
    ),
    ProgramModel(
        imageUrl: 'assets/lesson1.png',
        category: 'LIFESTYLE',
        programName: 'A complete guide for your new born baby',
        lessons: 16
    ),
    ProgramModel(
        imageUrl: 'assets/lesson1.png',
        category: 'LIFESTYLE',
        programName: 'A complete guide for your new born baby',
        lessons: 16
    ),
    ProgramModel(
        imageUrl: 'assets/lesson1.png',
        category: 'LIFESTYLE',
        programName: 'A complete guide for your new born baby',
        lessons: 16
    ),
];