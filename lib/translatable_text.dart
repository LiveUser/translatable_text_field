import 'package:flutter/material.dart';

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

class Language{
  String languageName;
  Language(this.languageName);
}
class Languages{
  static  Language afrikaans = Language('afrikaans');
  static  Language albanian = Language('shqip');
  static  Language amharic = Language('አማርኛ');
  static  Language arabic = Language('عربى');
  static  Language armenian = Language('հայերեն');
  static  Language azerbaijani = Language('aZƏRbaYcan');
  static  Language basque = Language('euskalduna');
  static  Language belarusian = Language('Беларуская');
  static  Language bengali = Language('বাংলা');
  static  Language bosnian = Language('bosanski');
  static  Language bulgarian = Language('български');
  static  Language catalan = Language('català');
  static  Language cebuano = Language('cebuano');
  static  Language chichewa = Language('chichewa');
  // ignore: non_constant_identifier_names
  static  Language chinese_simplified = Language('辛普利');
  // ignore: non_constant_identifier_names
  static  Language chinese_traditional = Language('繁體中文');
  static  Language corsican = Language('corsu');
  static  Language croatian = Language('hrvatski');
  static  Language czech = Language('čeština');
  static  Language danish = Language('dansk');
  static  Language dutch = Language('nederlands');
  static  Language english = Language('english');
  static  Language esperanto = Language('esperanto');
  static  Language estonian = Language('eesti keel');
  static  Language filipino = Language('filipino');
  static  Language finnish = Language('suomalainen');
  static  Language french = Language('français');
  static  Language frisian = Language('frysk');
  static  Language galician = Language('galego');
  static  Language georgian = Language('ქართული');
  static  Language german = Language('deutsche');
  static  Language greek = Language('Ελληνικά');
  static  Language gujarati = Language('ગુજરાતી');
  // ignore: non_constant_identifier_names
  static  Language haitian_creole = Language('kreyol');
  static  Language hausa = Language('hausa');
  static  Language hawaiian = Language('Ōlelo hawaiʻi');
  static  Language hebrew = Language('עִברִית');
  static  Language hindi = Language('हिंदी');
  static  Language hmong = Language('xyob h');
  static  Language hungarian = Language('magyar');
  static  Language icelandic = Language('íslenskur');
  static  Language igbo = Language('igbo');
  static  Language indonesian = Language('bahasa indonesia');
  static  Language irish = Language('gaeilge');
  static  Language italian = Language('italiano');
  static  Language japanese = Language('日本人');
  static  Language javanese = Language('wong jawa');
  static  Language kannada = Language('ಕನ್ನಡ');
  static  Language kazakh = Language('қазақ');
  static  Language khmer = Language('khmer');
  static  Language kinyarwanda = Language('kinyarwanda');
  static  Language korean = Language('한국어');
  // ignore: non_constant_identifier_names
  static  Language kurdish_kurmanji = Language('kurdî');
  static  Language kyrgyz = Language('Кыргызча');
  static  Language lao = Language('lao');
  static  Language latin = Language('Latine');
  static  Language latvian = Language('latvietis');
  static  Language lithuanian = Language('Lietuvis');
  static  Language luxembourgish = Language('Lëtzebuergesch');
  static  Language macedonian = Language('Македонски');
  static  Language malagasy = Language('malagasy');
  static  Language malay = Language('melayu');
  static  Language malayalam = Language('മലയാള ഭാഷ');
  static  Language maltese = Language('malti');
  static  Language maori = Language('maori');
  static  Language marathi = Language('मराठी');
  static  Language mongolian = Language('монгол');
  // ignore: non_constant_identifier_names
  static  Language myanmar_burmese = Language('မြန်မာ');
  static  Language nepali = Language('नेपाली');
  static  Language norwegian = Language('norsk');
  // ignore: non_constant_identifier_names
  static  Language odia_oriya = Language('ଓଡିଆ');
  static  Language pashto = Language('پښتو');
  static  Language persian = Language('فارسی');
  static  Language polish = Language('Polskie');
  static  Language portuguese = Language('Português');
  static  Language punjabi = Language('ਪੰਜਾਬੀ');
  static  Language romanian = Language('Română');
  static  Language russian = Language('русский');
  static  Language samoan = Language('samoan');
  // ignore: non_constant_identifier_names
  static  Language scots_gaelic = Language('gàidhlig na h-alba');
  static  Language serbian = Language('Српски');
  static  Language sesotho = Language('sesotho');
  static  Language shona = Language('shona');
  static  Language sindhi = Language('سنڌي');
  static  Language sinhala = Language('සිංහල');
  static  Language slovak = Language('slovák');
  static  Language slovenian = Language('slovenščina');
  static  Language somali = Language('somali');
  static  Language spanish = Language('español');
  static  Language sundanese = Language('sundanis');
  static  Language swahili = Language('kiswahili');
  static  Language swedish = Language('svenska');
  static  Language tajik = Language('Тоҷикӣ');
  static  Language tamil = Language('தமிழ்');
  static  Language tatar = Language('Татар');
  static  Language telugu = Language('తెలుగు');
  static  Language thai = Language('ไทย');
  static  Language turkish = Language('türk');
  static  Language turkmen = Language('türkmen');
  static  Language ukrainian = Language('Український');
  static  Language urdu = Language('اردو');
  static  Language uyghur = Language('ئۇيغۇر');
  static  Language uzbek = Language('o\'zbek');
  static  Language vietnamese = Language('ngôn ngữ tiếng Việt');
  static  Language welsh = Language('cymraeg');
  static  Language xhosa = Language('isiXhosa');
  static  Language yiddish = Language('יידיש');
  static  Language yoruba = Language('yoruba');
  static  Language zulu = Language('Zulu');
}

class TranslateOption{
  final Language language;
  final String text;
  TranslateOption({@required this.language,@required this.text});
}
class TranslatableText extends StatelessWidget {
  final Language displayLanguage;
  final List<TranslateOption> options;
  final TextStyle style;
  final StrutStyle strutStyle;
  final TextAlign  textAlign;
  final TextDirection textDirection;
  final Locale locale;
  final bool softWrap;
  final TextOverflow overflow;
  final double textScaleFactor;
  final int maxLines;
  final String semanticsLabel;
  final TextWidthBasis textWidthBasis;
  final TextHeightBehavior textHeightBehavior;
  TranslatableText({@required this.options,@required this.displayLanguage,this.locale,this.maxLines,this.overflow,this.semanticsLabel,this.softWrap,this.strutStyle,this.style,this.textAlign,this.textDirection,this.textHeightBehavior,this.textScaleFactor,this.textWidthBasis});
  @override
  Widget build(BuildContext context) {
    int index = options.indexWhere((option) => option.language == displayLanguage);
    //If the selected language is not found
    String displayText = index == -1 ? 'Language not Supported': options[index].text;
    return Text(
      displayText,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaleFactor: textScaleFactor,
      textWidthBasis: textWidthBasis,
    );
  }
}
