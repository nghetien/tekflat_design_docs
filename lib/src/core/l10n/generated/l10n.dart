// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get document {
    return Intl.message(
      'Document',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Button`
  String get button {
    return Intl.message(
      'Button',
      name: 'button',
      desc: '',
      args: [],
    );
  }

  /// `Button Icon`
  String get buttonIcon {
    return Intl.message(
      'Button Icon',
      name: 'buttonIcon',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Responsive`
  String get responsive {
    return Intl.message(
      'Responsive',
      name: 'responsive',
      desc: '',
      args: [],
    );
  }

  /// `Divider`
  String get divider {
    return Intl.message(
      'Divider',
      name: 'divider',
      desc: '',
      args: [],
    );
  }

  /// `Line Dash`
  String get lineDash {
    return Intl.message(
      'Line Dash',
      name: 'lineDash',
      desc: '',
      args: [],
    );
  }

  /// `Spaces`
  String get spaces {
    return Intl.message(
      'Spaces',
      name: 'spaces',
      desc: '',
      args: [],
    );
  }

  /// `Measure Size`
  String get measureSize {
    return Intl.message(
      'Measure Size',
      name: 'measureSize',
      desc: '',
      args: [],
    );
  }

  /// `Popup Menu Button`
  String get popupMenuButton {
    return Intl.message(
      'Popup Menu Button',
      name: 'popupMenuButton',
      desc: '',
      args: [],
    );
  }

  /// `Menu Anchor`
  String get menuAnchor {
    return Intl.message(
      'Menu Anchor',
      name: 'menuAnchor',
      desc: '',
      args: [],
    );
  }

  /// `Check Boxes`
  String get checkBoxes {
    return Intl.message(
      'Check Boxes',
      name: 'checkBoxes',
      desc: '',
      args: [],
    );
  }

  /// `Inputs`
  String get inputs {
    return Intl.message(
      'Inputs',
      name: 'inputs',
      desc: '',
      args: [],
    );
  }

  /// `Forms`
  String get forms {
    return Intl.message(
      'Forms',
      name: 'forms',
      desc: '',
      args: [],
    );
  }

  /// `Images`
  String get images {
    return Intl.message(
      'Images',
      name: 'images',
      desc: '',
      args: [],
    );
  }

  /// `Badges`
  String get badges {
    return Intl.message(
      'Badges',
      name: 'badges',
      desc: '',
      args: [],
    );
  }

  /// `Cards`
  String get cards {
    return Intl.message(
      'Cards',
      name: 'cards',
      desc: '',
      args: [],
    );
  }

  /// `List View Builder`
  String get listViewBuilder {
    return Intl.message(
      'List View Builder',
      name: 'listViewBuilder',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `Data Table`
  String get dataTable {
    return Intl.message(
      'Data Table',
      name: 'dataTable',
      desc: '',
      args: [],
    );
  }

  /// `Toast`
  String get toast {
    return Intl.message(
      'Toast',
      name: 'toast',
      desc: '',
      args: [],
    );
  }

  /// `Dialogs`
  String get dialogs {
    return Intl.message(
      'Dialogs',
      name: 'dialogs',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Layout`
  String get layout {
    return Intl.message(
      'Layout',
      name: 'layout',
      desc: '',
      args: [],
    );
  }

  /// `Navigation`
  String get navigation {
    return Intl.message(
      'Navigation',
      name: 'navigation',
      desc: '',
      args: [],
    );
  }

  /// `Data Entry`
  String get dataEntry {
    return Intl.message(
      'Data Entry',
      name: 'dataEntry',
      desc: '',
      args: [],
    );
  }

  /// `Data Display`
  String get dataDisplay {
    return Intl.message(
      'Data Display',
      name: 'dataDisplay',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Flatter UI provides plenty of UI components to enrich your web, mobile (Android, IOS) applications, and we will improve components experience consistently. We also recommend some great Third-Party Libraries additionally`
  String get overviewHeader {
    return Intl.message(
      'Flatter UI provides plenty of UI components to enrich your web, mobile (Android, IOS) applications, and we will improve components experience consistently. We also recommend some great Third-Party Libraries additionally',
      name: 'overviewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Copyright`
  String get copyright {
    return Intl.message(
      'Copyright',
      name: 'copyright',
      desc: '',
      args: [],
    );
  }

  /// `Authors`
  String get authors {
    return Intl.message(
      'Authors',
      name: 'authors',
      desc: '',
      args: [],
    );
  }

  /// `To trigger an operation.`
  String get buttonHeader {
    return Intl.message(
      'To trigger an operation.',
      name: 'buttonHeader',
      desc: '',
      args: [],
    );
  }

  /// `When to use`
  String get whenToUse {
    return Intl.message(
      'When to use',
      name: 'whenToUse',
      desc: '',
      args: [],
    );
  }

  /// `Examples`
  String get examples {
    return Intl.message(
      'Examples',
      name: 'examples',
      desc: '',
      args: [],
    );
  }

  /// `A button means an operation (or a series of operations). Clicking a button will trigger corresponding business logic.`
  String get buttonWhenToUseDescription1 {
    return Intl.message(
      'A button means an operation (or a series of operations). Clicking a button will trigger corresponding business logic.',
      name: 'buttonWhenToUseDescription1',
      desc: '',
      args: [],
    );
  }

  /// `In Flatter UI we provide 4 types of button:`
  String get buttonWhenToUseDescription2 {
    return Intl.message(
      'In Flatter UI we provide 4 types of button:',
      name: 'buttonWhenToUseDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Inherited from 'ElevatedButton', designed with added size, button type, and specifically compatible with 'FormBuilder'.`
  String get buttonWhenToUseDescription3 {
    return Intl.message(
      'Inherited from \'ElevatedButton\', designed with added size, button type, and specifically compatible with \'FormBuilder\'.',
      name: 'buttonWhenToUseDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Inherited from 'Default Button' but can add an icon before and after the text.`
  String get buttonWhenToUseDescription4 {
    return Intl.message(
      'Inherited from \'Default Button\' but can add an icon before and after the text.',
      name: 'buttonWhenToUseDescription4',
      desc: '',
      args: [],
    );
  }

  /// `Customize from 'Inkwell', create button no effect.`
  String get buttonWhenToUseDescription5 {
    return Intl.message(
      'Customize from \'Inkwell\', create button no effect.',
      name: 'buttonWhenToUseDescription5',
      desc: '',
      args: [],
    );
  }

  /// `Customize from 'GestureDetector', create button no effect.`
  String get buttonWhenToUseDescription6 {
    return Intl.message(
      'Customize from \'GestureDetector\', create button no effect.',
      name: 'buttonWhenToUseDescription6',
      desc: '',
      args: [],
    );
  }

  /// `And 7 other properties additionally:`
  String get buttonWhenToUseDescription7 {
    return Intl.message(
      'And 7 other properties additionally:',
      name: 'buttonWhenToUseDescription7',
      desc: '',
      args: [],
    );
  }

  /// `Button use default color (it setup in file config, it can be changed by user)`
  String get buttonWhenToUseDescription8 {
    return Intl.message(
      'Button use default color (it setup in file config, it can be changed by user)',
      name: 'buttonWhenToUseDescription8',
      desc: '',
      args: [],
    );
  }

  /// `Button use border with border color is default text color (it can be changed by user)`
  String get buttonWhenToUseDescription9 {
    return Intl.message(
      'Button use border with border color is default text color (it can be changed by user)',
      name: 'buttonWhenToUseDescription9',
      desc: '',
      args: [],
    );
  }

  /// `Button use default color red of theme (it can be changed by user)`
  String get buttonWhenToUseDescription10 {
    return Intl.message(
      'Button use default color red of theme (it can be changed by user)',
      name: 'buttonWhenToUseDescription10',
      desc: '',
      args: [],
    );
  }

  /// `Button use default color yellow of theme (it can be changed by user)`
  String get buttonWhenToUseDescription11 {
    return Intl.message(
      'Button use default color yellow of theme (it can be changed by user)',
      name: 'buttonWhenToUseDescription11',
      desc: '',
      args: [],
    );
  }

  /// `Button use default color green of theme (it can be changed by user)`
  String get buttonWhenToUseDescription12 {
    return Intl.message(
      'Button use default color green of theme (it can be changed by user)',
      name: 'buttonWhenToUseDescription12',
      desc: '',
      args: [],
    );
  }

  /// `Button use default color blue of theme (it can be changed by user)`
  String get buttonWhenToUseDescription13 {
    return Intl.message(
      'Button use default color blue of theme (it can be changed by user)',
      name: 'buttonWhenToUseDescription13',
      desc: '',
      args: [],
    );
  }

  /// `No color, no border only hover effect`
  String get buttonWhenToUseDescription14 {
    return Intl.message(
      'No color, no border only hover effect',
      name: 'buttonWhenToUseDescription14',
      desc: '',
      args: [],
    );
  }

  /// `And 3 other size additionally:`
  String get buttonWhenToUseDescription15 {
    return Intl.message(
      'And 3 other size additionally:',
      name: 'buttonWhenToUseDescription15',
      desc: '',
      args: [],
    );
  }

  /// `Height is 26px`
  String get buttonWhenToUseDescription16 {
    return Intl.message(
      'Height is 26px',
      name: 'buttonWhenToUseDescription16',
      desc: '',
      args: [],
    );
  }

  /// `Height is 35px`
  String get buttonWhenToUseDescription17 {
    return Intl.message(
      'Height is 35px',
      name: 'buttonWhenToUseDescription17',
      desc: '',
      args: [],
    );
  }

  /// `Height is 42px`
  String get buttonWhenToUseDescription18 {
    return Intl.message(
      'Height is 42px',
      name: 'buttonWhenToUseDescription18',
      desc: '',
      args: [],
    );
  }

  /// `Below are 7 types of 'Default Button' with sizes 'Large', 'Medium', 'Small'.`
  String get buttonExample1 {
    return Intl.message(
      'Below are 7 types of \'Default Button\' with sizes \'Large\', \'Medium\', \'Small\'.',
      name: 'buttonExample1',
      desc: '',
      args: [],
    );
  }

  /// `Below are 3 types of 'Button Icon' (Icon left, Icon right, Custom child) with the size 'Large'.`
  String get buttonExample2 {
    return Intl.message(
      'Below are 3 types of \'Button Icon\' (Icon left, Icon right, Custom child) with the size \'Large\'.',
      name: 'buttonExample2',
      desc: '',
      args: [],
    );
  }

  /// `Below are 2 types of 'Inkwell Button' (Default, Custom child) with the size 'Large'.`
  String get buttonExample3 {
    return Intl.message(
      'Below are 2 types of \'Inkwell Button\' (Default, Custom child) with the size \'Large\'.',
      name: 'buttonExample3',
      desc: '',
      args: [],
    );
  }

  /// `Below are 2 types of 'Text Button' (Default, Custom child) with the size 'Large'.`
  String get buttonExample4 {
    return Intl.message(
      'Below are 2 types of \'Text Button\' (Default, Custom child) with the size \'Large\'.',
      name: 'buttonExample4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription1 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Select size for button.`
  String get buttonAPIDescription2 {
    return Intl.message(
      'Select size for button.',
      name: 'buttonAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Select type for button.`
  String get buttonAPIDescription3 {
    return Intl.message(
      'Select type for button.',
      name: 'buttonAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Call when button is pressed.`
  String get buttonAPIDescription4 {
    return Intl.message(
      'Call when button is pressed.',
      name: 'buttonAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `Set status for button.`
  String get buttonAPIDescription5 {
    return Intl.message(
      'Set status for button.',
      name: 'buttonAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `Change status button to loading.`
  String get buttonAPIDescription6 {
    return Intl.message(
      'Change status button to loading.',
      name: 'buttonAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription7 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `Customize child for button.`
  String get buttonAPIDescription8 {
    return Intl.message(
      'Customize child for button.',
      name: 'buttonAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription9 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription10 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription11 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `Color of button.`
  String get buttonAPIDescription12 {
    return Intl.message(
      'Color of button.',
      name: 'buttonAPIDescription12',
      desc: '',
      args: [],
    );
  }

  /// `Color of button when hover.`
  String get buttonAPIDescription13 {
    return Intl.message(
      'Color of button when hover.',
      name: 'buttonAPIDescription13',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription14 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription14',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription15 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription15',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription16 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription16',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription17 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription17',
      desc: '',
      args: [],
    );
  }

  /// `Border of button.`
  String get buttonAPIDescription18 {
    return Intl.message(
      'Border of button.',
      name: 'buttonAPIDescription18',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription19 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription19',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription20 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription20',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription21 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription21',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription22 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription22',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription23 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription23',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonAPIDescription24 {
    return Intl.message(
      '_',
      name: 'buttonAPIDescription24',
      desc: '',
      args: [],
    );
  }

  /// `Extended form basic button`
  String get extendedFormTekButton {
    return Intl.message(
      'Extended form basic button',
      name: 'extendedFormTekButton',
      desc: '',
      args: [],
    );
  }

  /// `Add icon faster.`
  String get buttonIconAPIDescription1 {
    return Intl.message(
      'Add icon faster.',
      name: 'buttonIconAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Customize Icon.`
  String get buttonIconAPIDescription2 {
    return Intl.message(
      'Customize Icon.',
      name: 'buttonIconAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonIconAPIDescription3 {
    return Intl.message(
      '_',
      name: 'buttonIconAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonIconAPIDescription4 {
    return Intl.message(
      '_',
      name: 'buttonIconAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonIconAPIDescription5 {
    return Intl.message(
      '_',
      name: 'buttonIconAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonIconAPIDescription6 {
    return Intl.message(
      '_',
      name: 'buttonIconAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonIconAPIDescription7 {
    return Intl.message(
      '_',
      name: 'buttonIconAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get inkwellButtonAPIDescription1 {
    return Intl.message(
      '_',
      name: 'inkwellButtonAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get inkwellButtonAPIDescription2 {
    return Intl.message(
      '_',
      name: 'inkwellButtonAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get inkwellButtonAPIDescription3 {
    return Intl.message(
      '_',
      name: 'inkwellButtonAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get inkwellButtonAPIDescription4 {
    return Intl.message(
      '_',
      name: 'inkwellButtonAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get inkwellButtonAPIDescription5 {
    return Intl.message(
      '_',
      name: 'inkwellButtonAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get inkwellButtonAPIDescription6 {
    return Intl.message(
      '_',
      name: 'inkwellButtonAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `Use when type is TekButtonGDType.text.`
  String get buttonGesAPIDescription1 {
    return Intl.message(
      'Use when type is TekButtonGDType.text.',
      name: 'buttonGesAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Use when type is TekButtonGDType.customize.`
  String get buttonGesAPIDescription2 {
    return Intl.message(
      'Use when type is TekButtonGDType.customize.',
      name: 'buttonGesAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonGesAPIDescription3 {
    return Intl.message(
      '_',
      name: 'buttonGesAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonGesAPIDescription4 {
    return Intl.message(
      '_',
      name: 'buttonGesAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonGesAPIDescription5 {
    return Intl.message(
      '_',
      name: 'buttonGesAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonGesAPIDescription6 {
    return Intl.message(
      '_',
      name: 'buttonGesAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonGesAPIDescription7 {
    return Intl.message(
      '_',
      name: 'buttonGesAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonGesAPIDescription8 {
    return Intl.message(
      '_',
      name: 'buttonGesAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `Use when type is TekButtonGDType.icon.`
  String get buttonGesAPIDescription9 {
    return Intl.message(
      'Use when type is TekButtonGDType.icon.',
      name: 'buttonGesAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonGesAPIDescription10 {
    return Intl.message(
      '_',
      name: 'buttonGesAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get buttonGesAPIDescription11 {
    return Intl.message(
      '_',
      name: 'buttonGesAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `Use when type is TekButtonGDType.icon.`
  String get buttonGesAPIDescription12 {
    return Intl.message(
      'Use when type is TekButtonGDType.icon.',
      name: 'buttonGesAPIDescription12',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message(
      'Copy',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Preview`
  String get preview {
    return Intl.message(
      'Preview',
      name: 'preview',
      desc: '',
      args: [],
    );
  }

  /// `Property`
  String get property {
    return Intl.message(
      'Property',
      name: 'property',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Default Value`
  String get defaultValue {
    return Intl.message(
      'Default Value',
      name: 'defaultValue',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Make a question`
  String get makeAQuestion {
    return Intl.message(
      'Make a question',
      name: 'makeAQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Flatter UI provides size of text for user selection.`
  String get titleHeader {
    return Intl.message(
      'Flatter UI provides size of text for user selection.',
      name: 'titleHeader',
      desc: '',
      args: [],
    );
  }

  /// `Below are 6 levels of text size.`
  String get titleExample1 {
    return Intl.message(
      'Below are 6 levels of text size.',
      name: 'titleExample1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription1 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Content.`
  String get titleAPIDescription2 {
    return Intl.message(
      'Content.',
      name: 'titleAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Select level for title.`
  String get titleAPIDescription3 {
    return Intl.message(
      'Select level for title.',
      name: 'titleAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription4 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription5 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription6 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription7 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription8 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription9 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription10 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription11 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription12 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription12',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription13 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription13',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription14 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription14',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription15 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription15',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription16 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription16',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription17 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription17',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription18 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription18',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get titleAPIDescription19 {
    return Intl.message(
      '_',
      name: 'titleAPIDescription19',
      desc: '',
      args: [],
    );
  }

  /// `A table displays rows of data.`
  String get dataTableHeader {
    return Intl.message(
      'A table displays rows of data.',
      name: 'dataTableHeader',
      desc: '',
      args: [],
    );
  }

  /// `Manage data source of table.`
  String get dataTableAPIDescription1 {
    return Intl.message(
      'Manage data source of table.',
      name: 'dataTableAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Customize column of table.`
  String get dataTableAPIDescription2 {
    return Intl.message(
      'Customize column of table.',
      name: 'dataTableAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Add option column for table.`
  String get dataTableAPIDescription3 {
    return Intl.message(
      'Add option column for table.',
      name: 'dataTableAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Add widget for top of data table.`
  String get dataTableAPIDescription4 {
    return Intl.message(
      'Add widget for top of data table.',
      name: 'dataTableAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `Add widget for bottom of data table.`
  String get dataTableAPIDescription5 {
    return Intl.message(
      'Add widget for bottom of data table.',
      name: 'dataTableAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `Show content when user select row.`
  String get dataTableAPIDescription6 {
    return Intl.message(
      'Show content when user select row.',
      name: 'dataTableAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `Add widget for top of each row of data table.`
  String get dataTableAPIDescription7 {
    return Intl.message(
      'Add widget for top of each row of data table.',
      name: 'dataTableAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `Call when user next page or previous page or change number of page.`
  String get dataTableAPIDescription8 {
    return Intl.message(
      'Call when user next page or previous page or change number of page.',
      name: 'dataTableAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `Options for UI of data table.`
  String get dataTableAPIDescription9 {
    return Intl.message(
      'Options for UI of data table.',
      name: 'dataTableAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `Options for header of data table.`
  String get dataTableAPIDescription10 {
    return Intl.message(
      'Options for header of data table.',
      name: 'dataTableAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `Options for each row of data table.`
  String get dataTableAPIDescription11 {
    return Intl.message(
      'Options for each row of data table.',
      name: 'dataTableAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `Options for each column of data table.`
  String get dataTableAPIDescription12 {
    return Intl.message(
      'Options for each column of data table.',
      name: 'dataTableAPIDescription12',
      desc: '',
      args: [],
    );
  }

  /// `Options for pagination of data table.`
  String get dataTableAPIDescription13 {
    return Intl.message(
      'Options for pagination of data table.',
      name: 'dataTableAPIDescription13',
      desc: '',
      args: [],
    );
  }

  /// `Options when user add checkbox column.`
  String get dataTableAPIDescription14 {
    return Intl.message(
      'Options when user add checkbox column.',
      name: 'dataTableAPIDescription14',
      desc: '',
      args: [],
    );
  }

  /// `Help designers/developers building beautiful products more flexible and working with happiness.`
  String get titleHomePage {
    return Intl.message(
      'Help designers/developers building beautiful products more flexible and working with happiness.',
      name: 'titleHomePage',
      desc: '',
      args: [],
    );
  }

  /// `Teko Flat Design v1.0.0 is released!`
  String get eventHomePage1 {
    return Intl.message(
      'Teko Flat Design v1.0.0 is released!',
      name: 'eventHomePage1',
      desc: '',
      args: [],
    );
  }

  /// `An overview of Teko Flat Design Patterns.`
  String get eventHomePage2 {
    return Intl.message(
      'An overview of Teko Flat Design Patterns.',
      name: 'eventHomePage2',
      desc: '',
      args: [],
    );
  }

  /// `Can component library replace designer?`
  String get eventHomePage3 {
    return Intl.message(
      'Can component library replace designer?',
      name: 'eventHomePage3',
      desc: '',
      args: [],
    );
  }

  /// `Brand-new Design Token, more flexible with dynamic theme ability!`
  String get eventDescriptionHomePage1 {
    return Intl.message(
      'Brand-new Design Token, more flexible with dynamic theme ability!',
      name: 'eventDescriptionHomePage1',
      desc: '',
      args: [],
    );
  }

  /// `Design patterns: subtle insights and solutions about design.`
  String get eventDescriptionHomePage2 {
    return Intl.message(
      'Design patterns: subtle insights and solutions about design.',
      name: 'eventDescriptionHomePage2',
      desc: '',
      args: [],
    );
  }

  /// `What is the significance and value of b-end designer's work.`
  String get eventDescriptionHomePage3 {
    return Intl.message(
      'What is the significance and value of b-end designer\'s work.',
      name: 'eventDescriptionHomePage3',
      desc: '',
      args: [],
    );
  }

  /// `Responsive design is an approach to web page creation that makes use of flexible layouts, flexible images and cascading style sheet media queries.`
  String get responsiveHeader {
    return Intl.message(
      'Responsive design is an approach to web page creation that makes use of flexible layouts, flexible images and cascading style sheet media queries.',
      name: 'responsiveHeader',
      desc: '',
      args: [],
    );
  }

  /// `Current device`
  String get currentDevice {
    return Intl.message(
      'Current device',
      name: 'currentDevice',
      desc: '',
      args: [],
    );
  }

  /// `Current width`
  String get currentWidth {
    return Intl.message(
      'Current width',
      name: 'currentWidth',
      desc: '',
      args: [],
    );
  }

  /// `Wrap the app's root tag, making it possible for the library to listen to changes in screen size.`
  String get responsiveAPIDescription1 {
    return Intl.message(
      'Wrap the app\'s root tag, making it possible for the library to listen to changes in screen size.',
      name: 'responsiveAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Allows the user to pass widgets that match the desired user size.`
  String get responsiveAPIDescription2 {
    return Intl.message(
      'Allows the user to pass widgets that match the desired user size.',
      name: 'responsiveAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Same as 'resBuilder' but different in that there is no external LayoutBuilder.`
  String get responsiveAPIDescription3 {
    return Intl.message(
      'Same as `resBuilder` but different in that there is no external LayoutBuilder.',
      name: 'responsiveAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `A thickness of divider.`
  String get dividerAPIDescription1 {
    return Intl.message(
      'A thickness of divider.',
      name: 'dividerAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dividerAPIDescription2 {
    return Intl.message(
      '_',
      name: 'dividerAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dividerAPIDescription3 {
    return Intl.message(
      '_',
      name: 'dividerAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dividerAPIDescription4 {
    return Intl.message(
      '_',
      name: 'dividerAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `A thickness of line dash.`
  String get lineDashAPIDescription1 {
    return Intl.message(
      'A thickness of line dash.',
      name: 'lineDashAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get lineDashAPIDescription2 {
    return Intl.message(
      '_',
      name: 'lineDashAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Space between each dash.`
  String get lineDashAPIDescription3 {
    return Intl.message(
      'Space between each dash.',
      name: 'lineDashAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Call when child element is resized.`
  String get measureSizeAPIDescription1 {
    return Intl.message(
      'Call when child element is resized.',
      name: 'measureSizeAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get measureSizeAPIDescription2 {
    return Intl.message(
      '_',
      name: 'measureSizeAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get spacesVerticalAPIDescription1 {
    return Intl.message(
      '_',
      name: 'spacesVerticalAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get spacesHorizontalAPIDescription1 {
    return Intl.message(
      '_',
      name: 'spacesHorizontalAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `A divider is a thin line that groups content in lists and layouts.`
  String get dividerHeader {
    return Intl.message(
      'A divider is a thin line that groups content in lists and layouts.',
      name: 'dividerHeader',
      desc: '',
      args: [],
    );
  }

  /// `A line dash is a thin line that groups content in lists and layouts.`
  String get lineDashHeader {
    return Intl.message(
      'A line dash is a thin line that groups content in lists and layouts.',
      name: 'lineDashHeader',
      desc: '',
      args: [],
    );
  }

  /// `A measure size is a widget that can measure the size of its child.`
  String get measureSizeHeader {
    return Intl.message(
      'A measure size is a widget that can measure the size of its child.',
      name: 'measureSizeHeader',
      desc: '',
      args: [],
    );
  }

  /// `A spaces is a widget that can add spaces between widgets.`
  String get spacesHeader {
    return Intl.message(
      'A spaces is a widget that can add spaces between widgets.',
      name: 'spacesHeader',
      desc: '',
      args: [],
    );
  }

  /// `A popup menu button is a widget that can show popup menu.`
  String get popupMenuButtonHeader {
    return Intl.message(
      'A popup menu button is a widget that can show popup menu.',
      name: 'popupMenuButtonHeader',
      desc: '',
      args: [],
    );
  }

  /// `Updating`
  String get updating {
    return Intl.message(
      'Updating',
      name: 'updating',
      desc: '',
      args: [],
    );
  }

  /// `Recommend to use`
  String get recommendToUse {
    return Intl.message(
      'Recommend to use',
      name: 'recommendToUse',
      desc: '',
      args: [],
    );
  }

  /// `A badge is a widget that can show a number or status.`
  String get badgesHeader {
    return Intl.message(
      'A badge is a widget that can show a number or status.',
      name: 'badgesHeader',
      desc: '',
      args: [],
    );
  }

  /// `A card is a widget that can show content.`
  String get cardsHeader {
    return Intl.message(
      'A card is a widget that can show content.',
      name: 'cardsHeader',
      desc: '',
      args: [],
    );
  }

  /// `A tag is a widget that can show a number or status.`
  String get tagsHeader {
    return Intl.message(
      'A tag is a widget that can show a number or status.',
      name: 'tagsHeader',
      desc: '',
      args: [],
    );
  }

  /// `A dialog is a widget that can show content.`
  String get dialogsHeader {
    return Intl.message(
      'A dialog is a widget that can show content.',
      name: 'dialogsHeader',
      desc: '',
      args: [],
    );
  }

  /// `A image is a widget that can show image.`
  String get imagesHeader {
    return Intl.message(
      'A image is a widget that can show image.',
      name: 'imagesHeader',
      desc: '',
      args: [],
    );
  }

  /// `A list view builder is a widget that can show list of content.`
  String get listViewBuilderHeader {
    return Intl.message(
      'A list view builder is a widget that can show list of content.',
      name: 'listViewBuilderHeader',
      desc: '',
      args: [],
    );
  }

  /// `A toast is a widget that can show message.`
  String get toastHeader {
    return Intl.message(
      'A toast is a widget that can show message.',
      name: 'toastHeader',
      desc: '',
      args: [],
    );
  }

  /// `Image with default size.`
  String get imagesExample1 {
    return Intl.message(
      'Image with default size.',
      name: 'imagesExample1',
      desc: '',
      args: [],
    );
  }

  /// `Handle error when load image.`
  String get imagesExample2 {
    return Intl.message(
      'Handle error when load image.',
      name: 'imagesExample2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription1 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription2 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription3 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription4 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription5 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription6 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription7 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription8 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription9 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get assetsImageAPIDescription10 {
    return Intl.message(
      '_',
      name: 'assetsImageAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription1 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription2 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription3 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription4 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription5 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription6 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription7 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription8 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get networkImageAPIDescription9 {
    return Intl.message(
      '_',
      name: 'networkImageAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `Path of asset image when load network image fail.`
  String get networkImageAPIDescription10 {
    return Intl.message(
      'Path of asset image when load network image fail.',
      name: 'networkImageAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `Image provider for assets image when load network image fail.`
  String get networkImageAPIDescription11 {
    return Intl.message(
      'Image provider for assets image when load network image fail.',
      name: 'networkImageAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get badgesAPIDescription1 {
    return Intl.message(
      '_',
      name: 'badgesAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get badgesAPIDescription2 {
    return Intl.message(
      '_',
      name: 'badgesAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get badgesAPIDescription3 {
    return Intl.message(
      '_',
      name: 'badgesAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get badgesAPIDescription4 {
    return Intl.message(
      '_',
      name: 'badgesAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get badgesAPIDescription5 {
    return Intl.message(
      '_',
      name: 'badgesAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get cardsAPIDescription1 {
    return Intl.message(
      '_',
      name: 'cardsAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get cardsAPIDescription2 {
    return Intl.message(
      '_',
      name: 'cardsAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get cardsAPIDescription3 {
    return Intl.message(
      '_',
      name: 'cardsAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get cardsAPIDescription4 {
    return Intl.message(
      '_',
      name: 'cardsAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get cardsAPIDescription5 {
    return Intl.message(
      '_',
      name: 'cardsAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get cardsAPIDescription6 {
    return Intl.message(
      '_',
      name: 'cardsAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get cardsAPIDescription7 {
    return Intl.message(
      '_',
      name: 'cardsAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get cardsAPIDescription8 {
    return Intl.message(
      '_',
      name: 'cardsAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription1 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription2 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription3 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription4 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription5 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription6 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription7 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription8 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription9 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription10 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription11 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription12 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription12',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription13 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription13',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription14 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription14',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription15 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription15',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription16 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription16',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription17 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription17',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription18 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription18',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription19 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription19',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription20 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription20',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription21 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription21',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription22 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription22',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get listViewBuilderAPIDescription23 {
    return Intl.message(
      '_',
      name: 'listViewBuilderAPIDescription23',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get tagsAPIDescription1 {
    return Intl.message(
      '_',
      name: 'tagsAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get tagsAPIDescription2 {
    return Intl.message(
      '_',
      name: 'tagsAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get tagsAPIDescription3 {
    return Intl.message(
      '_',
      name: 'tagsAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get tagsAPIDescription4 {
    return Intl.message(
      '_',
      name: 'tagsAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get tagsAPIDescription5 {
    return Intl.message(
      '_',
      name: 'tagsAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get tagsAPIDescription6 {
    return Intl.message(
      '_',
      name: 'tagsAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription1 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription2 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription3 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription4 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription5 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription6 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription7 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription8 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription9 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription10 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription11 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription12 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription12',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get dynamicTagsAPIDescription13 {
    return Intl.message(
      '_',
      name: 'dynamicTagsAPIDescription13',
      desc: '',
      args: [],
    );
  }

  /// `Show loading when load data.`
  String get loadingHeader {
    return Intl.message(
      'Show loading when load data.',
      name: 'loadingHeader',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription1 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription2 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription3 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription4 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription5 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription6 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription7 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription8 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription9 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription10 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get optionDialogsAPIDescription11 {
    return Intl.message(
      '_',
      name: 'optionDialogsAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription1 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription2 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription3 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription4 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription5 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription6 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription7 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription8 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription9 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription10 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription11 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription12 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription12',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription13 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription13',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription14 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription14',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription15 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription15',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get customizeDialogsAPIDescription16 {
    return Intl.message(
      '_',
      name: 'customizeDialogsAPIDescription16',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get defaultDialogsAPIDescription1 {
    return Intl.message(
      '_',
      name: 'defaultDialogsAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get defaultDialogsAPIDescription2 {
    return Intl.message(
      '_',
      name: 'defaultDialogsAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get defaultDialogsAPIDescription3 {
    return Intl.message(
      '_',
      name: 'defaultDialogsAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get defaultDialogsAPIDescription4 {
    return Intl.message(
      '_',
      name: 'defaultDialogsAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get defaultDialogsAPIDescription5 {
    return Intl.message(
      '_',
      name: 'defaultDialogsAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get defaultDialogsAPIDescription6 {
    return Intl.message(
      '_',
      name: 'defaultDialogsAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get defaultDialogsAPIDescription7 {
    return Intl.message(
      '_',
      name: 'defaultDialogsAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get defaultDialogsAPIDescription8 {
    return Intl.message(
      '_',
      name: 'defaultDialogsAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get toastAPIDescription1 {
    return Intl.message(
      '_',
      name: 'toastAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get toastAPIDescription2 {
    return Intl.message(
      '_',
      name: 'toastAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get toastAPIDescription3 {
    return Intl.message(
      '_',
      name: 'toastAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get toastAPIDescription4 {
    return Intl.message(
      '_',
      name: 'toastAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get toastAPIDescription5 {
    return Intl.message(
      '_',
      name: 'toastAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `A form is a widget that can show form.`
  String get formsHeader {
    return Intl.message(
      'A form is a widget that can show form.',
      name: 'formsHeader',
      desc: '',
      args: [],
    );
  }

  /// `A input is a widget that can show input.`
  String get inputsHeader {
    return Intl.message(
      'A input is a widget that can show input.',
      name: 'inputsHeader',
      desc: '',
      args: [],
    );
  }

  /// `A checkbox is a widget that can show checkbox.`
  String get checkBoxesHeader {
    return Intl.message(
      'A checkbox is a widget that can show checkbox.',
      name: 'checkBoxesHeader',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription1 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription2 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription3 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription4 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription5 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription6 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription7 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription8 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesAPIDescription9 {
    return Intl.message(
      '_',
      name: 'checkboxesAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription1 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription1',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription2 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription2',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription3 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription3',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription4 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription4',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription5 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription5',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription6 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription6',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription7 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription7',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription8 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription8',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription9 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription9',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription10 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription10',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription11 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription11',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription12 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription12',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription13 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription13',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription14 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription14',
      desc: '',
      args: [],
    );
  }

  /// `_`
  String get checkboxesFormAPIDescription15 {
    return Intl.message(
      '_',
      name: 'checkboxesFormAPIDescription15',
      desc: '',
      args: [],
    );
  }

  /// `Design and Framework`
  String get designAndFrameworkHeader {
    return Intl.message(
      'Design and Framework',
      name: 'designAndFrameworkHeader',
      desc: '',
      args: [],
    );
  }

  /// `Supporting ecology, allowing you to quickly build Mobile, Web, Linux, MacOS, Windows applications`
  String get designAndFrameworkDescription {
    return Intl.message(
      'Supporting ecology, allowing you to quickly build Mobile, Web, Linux, MacOS, Windows applications',
      name: 'designAndFrameworkDescription',
      desc: '',
      args: [],
    );
  }

  /// `Design Values`
  String get designValues {
    return Intl.message(
      'Design Values',
      name: 'designValues',
      desc: '',
      args: [],
    );
  }

  /// `Certainty, Meaningfulness, Growth, Naturalness`
  String get designValuesDescription {
    return Intl.message(
      'Certainty, Meaningfulness, Growth, Naturalness',
      name: 'designValuesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Design Guide`
  String get designGuide {
    return Intl.message(
      'Design Guide',
      name: 'designGuide',
      desc: '',
      args: [],
    );
  }

  /// `Global style and design pattern`
  String get designGuideDescription {
    return Intl.message(
      'Global style and design pattern',
      name: 'designGuideDescription',
      desc: '',
      args: [],
    );
  }

  /// `Components Libraries`
  String get componentsLibraries {
    return Intl.message(
      'Components Libraries',
      name: 'componentsLibraries',
      desc: '',
      args: [],
    );
  }

  /// `Teko Flat Design of Mobile, Web, Linux, MacOS, Windows`
  String get componentsLibrariesDescription {
    return Intl.message(
      'Teko Flat Design of Mobile, Web, Linux, MacOS, Windows',
      name: 'componentsLibrariesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Rich Components`
  String get richComponents {
    return Intl.message(
      'Rich Components',
      name: 'richComponents',
      desc: '',
      args: [],
    );
  }

  /// `Practical components to meet your needs, flexible customization and expansion`
  String get richComponentsDescription {
    return Intl.message(
      'Practical components to meet your needs, flexible customization and expansion',
      name: 'richComponentsDescription',
      desc: '',
      args: [],
    );
  }

  /// `View More`
  String get viewMore {
    return Intl.message(
      'View More',
      name: 'viewMore',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert {
    return Intl.message(
      'Alert',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `Datatable`
  String get datatable {
    return Intl.message(
      'Datatable',
      name: 'datatable',
      desc: '',
      args: [],
    );
  }

  /// `Dropdown`
  String get dropdown {
    return Intl.message(
      'Dropdown',
      name: 'dropdown',
      desc: '',
      args: [],
    );
  }

  /// `Form`
  String get form {
    return Intl.message(
      'Form',
      name: 'form',
      desc: '',
      args: [],
    );
  }

  /// `Notify`
  String get notify {
    return Intl.message(
      'Notify',
      name: 'notify',
      desc: '',
      args: [],
    );
  }

  /// `Selector`
  String get selector {
    return Intl.message(
      'Selector',
      name: 'selector',
      desc: '',
      args: [],
    );
  }

  /// `Resources`
  String get resources {
    return Intl.message(
      'Resources',
      name: 'resources',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get community {
    return Intl.message(
      'Community',
      name: 'community',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `More Products`
  String get moreProducts {
    return Intl.message(
      'More Products',
      name: 'moreProducts',
      desc: '',
      args: [],
    );
  }

  /// `To display a collection of structured data.`
  String get dataTableWhenToUse1 {
    return Intl.message(
      'To display a collection of structured data.',
      name: 'dataTableWhenToUse1',
      desc: '',
      args: [],
    );
  }

  /// `To sort, search, paginate, filter data.`
  String get dataTableWhenToUse2 {
    return Intl.message(
      'To sort, search, paginate, filter data.',
      name: 'dataTableWhenToUse2',
      desc: '',
      args: [],
    );
  }

  /// `Basic Usage`
  String get basicUsage {
    return Intl.message(
      'Basic Usage',
      name: 'basicUsage',
      desc: '',
      args: [],
    );
  }

  /// `Simple table with actions.`
  String get datatableBasicUsage {
    return Intl.message(
      'Simple table with actions.',
      name: 'datatableBasicUsage',
      desc: '',
      args: [],
    );
  }

  /// `Show Code`
  String get showCode {
    return Intl.message(
      'Show Code',
      name: 'showCode',
      desc: '',
      args: [],
    );
  }

  /// `Selection`
  String get selection {
    return Intl.message(
      'Selection',
      name: 'selection',
      desc: '',
      args: [],
    );
  }

  /// `Datatable provides 2 options: TekDataTableAdditionColumn.numbered, TekDataTableAdditionColumn.checkbox.`
  String get datatableSelection {
    return Intl.message(
      'Datatable provides 2 options: TekDataTableAdditionColumn.numbered, TekDataTableAdditionColumn.checkbox.',
      name: 'datatableSelection',
      desc: '',
      args: [],
    );
  }

  /// `Filter and Sort`
  String get filterAndSort {
    return Intl.message(
      'Filter and Sort',
      name: 'filterAndSort',
      desc: '',
      args: [],
    );
  }

  /// `Datatable supports for filter and sort. Use, pass 2 property to DataTableColumn: sortDataVoid and customizeFilter.`
  String get datatableFilterAndSort {
    return Intl.message(
      'Datatable supports for filter and sort. Use, pass 2 property to DataTableColumn: sortDataVoid and customizeFilter.',
      name: 'datatableFilterAndSort',
      desc: '',
      args: [],
    );
  }

  /// `Expanded`
  String get expanded {
    return Intl.message(
      'Expanded',
      name: 'expanded',
      desc: '',
      args: [],
    );
  }

  /// `Datatable supports for expanded: top, bottom, each row.`
  String get datatableExpanded {
    return Intl.message(
      'Datatable supports for expanded: top, bottom, each row.',
      name: 'datatableExpanded',
      desc: '',
      args: [],
    );
  }

  /// `Fixed`
  String get fixed {
    return Intl.message(
      'Fixed',
      name: 'fixed',
      desc: '',
      args: [],
    );
  }

  /// `Datatable supports fixed columns.`
  String get datatableFixed {
    return Intl.message(
      'Datatable supports fixed columns.',
      name: 'datatableFixed',
      desc: '',
      args: [],
    );
  }

  /// `Datatable supports responsive.`
  String get datatableResponsive {
    return Intl.message(
      'Datatable supports responsive.',
      name: 'datatableResponsive',
      desc: '',
      args: [],
    );
  }

  /// `Loading Data`
  String get loadingData {
    return Intl.message(
      'Loading Data',
      name: 'loadingData',
      desc: '',
      args: [],
    );
  }

  /// `Datatable supports loading data.`
  String get datatableLoadingData {
    return Intl.message(
      'Datatable supports loading data.',
      name: 'datatableLoadingData',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
