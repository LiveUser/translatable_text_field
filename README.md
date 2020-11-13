# translatable_text_field

A text field that displays text on different languages based on your selection. 

Its basic idea is that you place this fields inside a stateful Widget and combine them with some kind of language picker to change the value on the fields. This does not offer translating features. Its simply a Text widget to place the same String on other languages to easily change between them in the UI.

## Getting Started

Widget that gets displayed.

~~~dart
TranslatableText(
    displayLanguage: Languages.german, //Chosen language to be displayed
    options: [
		   TranslateOption(
              language: Languages.english,
              text: 'Hello',
            ),
            TranslateOption(
              language: Languages.spanish,//Language of the text
              text: 'Hola',//The actual text
            ),
            TranslateOption(
              language: Languages.german,
              text: 'Hallo',
            ), 
    ], //List of possible language options and its related text
)/*The actual widget that gets placed in your flutter app. Its the exact same Text widget with the added feature 
of having the displayLanguage and options properties. It supports all of the other Text field properties*/
~~~

Note: You can also use your own custom language instead of using the languages enum.

Example:

~~~dart
TranslatableText(
    displayLanguage: Language('wookie'), //Chosen language to be displayed
    options: [
        TranslateOption(
              language: Language('wookie'),
              text: 'Grrrr....!',
            ), 
    ]
 )
~~~



## Full example

~~~dart
import 'package:flutter/material.dart';
import 'package:translatable_text_field/translatable_text.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: TranslatableText(
          displayLanguage: Languages.german,
          options: [
            TranslateOption(
              language: Languages.english,
              text: 'Hello',
            ),
            TranslateOption(
              language: Languages.spanish,
              text: 'Hola',
            ),
            TranslateOption(
              language: Languages.german,
              text: 'Hallo',
            ),
          ],
          style: TextStyle(
            color: Colors.blue,
            fontSize: 40,
          ),
        ),
      ),
    ),
  ));
}
~~~

