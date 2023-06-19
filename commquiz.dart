import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class MultipleChoiceQuestion extends StatefulWidget {
  @override
  _MultipleChoiceQuestionState createState() => _MultipleChoiceQuestionState();
}

class _MultipleChoiceQuestionState extends State<MultipleChoiceQuestion> {
  int _selectedOption = -1;

  void _onOptionSelected(int option) {
    setState(() {
      _selectedOption = option;
    });
  }

  void _showWorkoutsScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WorkoutsScreen(selectedOption: _selectedOption),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Choice Question'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'What body parts would you like to focus on in terms of a push, pull, legs split?',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 10),
          OptionTile(
            option: 'Push (chest, triceps, shoulders, upper chest)',
            index: 0,
            isSelected: _selectedOption == 0,
            onTap: _onOptionSelected,
          ),
          OptionTile(
            option: 'Pull (lower back, lats, biceps)',
            index: 1,
            isSelected: _selectedOption == 1,
            onTap: _onOptionSelected,
          ),
          OptionTile(
            option: 'Legs (quads, hamstring, abduct, calves)',
            index: 2,
            isSelected: _selectedOption == 2,
            onTap: _onOptionSelected,
          ),
          OptionTile(
            option: 'I want everything equally',
            index: 3,
            isSelected: _selectedOption == 3,
            onTap: _onOptionSelected,
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: _selectedOption != -1 ? _showWorkoutsScreen : null,
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final String option;
  final int index;
  final bool isSelected;
  final Function(int) onTap;

  OptionTile({
    required this.option,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap(index);
      },
      leading: Icon(
        isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
        color: isSelected ? Colors.blue : null,
      ),
      title: Text(option),
    );
  }
}

class WorkoutsScreen extends StatefulWidget {
  final int selectedOption;

  WorkoutsScreen({required this.selectedOption});

  @override
  _WorkoutsScreenState createState() => _WorkoutsScreenState();
}

class _WorkoutsScreenState extends State<WorkoutsScreen> {
  List<String> workoutTextList = [];

  @override
  void initState() {
    super.initState();
    loadWorkoutText();
  }

  Future<void> loadWorkoutText() async {
    final List<String> muscleGroups = getMuscleGroups(widget.selectedOption);
    final Random random = Random();

    for (String muscleGroup in muscleGroups) {
      final workoutFileData =
      await rootBundle.loadString('workouts/$muscleGroup.txt');
      final exercises =
      workoutFileData.split('\n').where((exercise) => exercise.isNotEmpty).toList();
      final int randomIndex = random.nextInt(exercises.length);

      setState(() {
        workoutTextList.add(exercises[randomIndex]);
      });
    }
  }

  List<String> getMuscleGroups(int option) {
    switch (option) {
      case 0:
        return ['chest', 'triceps', 'triceps', 'shoulders', 'shoulders', 'upperchest'];
      case 1:
        return ['lowerback', 'lowerback', 'lats', 'lats', 'biceps', 'biceps'];
      case 2:
        return ['quads', 'quads', 'hamstring', 'abduct', 'calves'];
      case 3:
        return [
          'chest',
          'triceps',
          'shoulders',
          'lats',
          'biceps',
          'quads',
          'calves'
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workouts'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Workouts for the selected option:',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: workoutTextList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(workoutTextList[index]),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MultipleChoiceQuestion(),
  ));
}
