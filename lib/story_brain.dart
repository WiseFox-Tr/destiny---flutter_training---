import 'package:flutter/material.dart';

import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  int _storyNumber = 0;

  get getStory => _storyData[_storyNumber].storyTitle;
  get getChoice1 => _storyData[_storyNumber].choice1;
  get getChoice2 => _storyData[_storyNumber].choice2;

  void nextStory(int userChoiceNumber) {
  switch(_storyNumber) {
    case 0: _updateStoryNumber(userChoiceNumber: userChoiceNumber, valueForFirstChoice: 2, valueFOrSecondChoice: 1); break;
    case 1: _updateStoryNumber(userChoiceNumber: userChoiceNumber, valueForFirstChoice: 2, valueFOrSecondChoice: 3); break;
    case 2: _updateStoryNumber(userChoiceNumber: userChoiceNumber, valueForFirstChoice: 5, valueFOrSecondChoice: 4); break;
    default : restart();
    }
  }

  void _updateStoryNumber({@required int userChoiceNumber, @required int valueForFirstChoice, @required int valueFOrSecondChoice}) {
    if(userChoiceNumber == 1) {
      _storyNumber = valueForFirstChoice;
    } else {
      _storyNumber = valueFOrSecondChoice;
    }
  }

  void restart() => _storyNumber = 0;

  /// return true if _storyNumber == 0, 1 or 2
  bool buttonShouldBeVisible() => (_storyNumber < 3);
}
