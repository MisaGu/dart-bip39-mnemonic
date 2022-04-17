import 'wordlists/french.dart';
import 'wordlists/english.dart';
import 'wordlists/spanish.dart';
import 'wordlists/italian.dart';
import 'wordlists/czech.dart';

/// BIP39:
/// * Since the vast majority of BIP39 wallets supports only the English wordlist, it is strongly discouraged to use non-English wordlists for generating the mnemonic sentences.
/// * If you still feel your application really needs to use a localized wordlist, use one of the following instead of inventing your own.
enum Language { french, english, spanish, italian, czech }

extension LanguageExtension on Language {
  List<String> get list {
    switch (this) {
      case Language.french:
        return french;
      case Language.english:
        return english;
      case Language.spanish:
        return spanish;
      case Language.italian:
        return italian;
      case Language.czech:
        return czech;
    }
  }

  Map<int, String> get map {
    switch (this) {
      case Language.french:
        return french.asMap();
      case Language.english:
        return english.asMap();
      case Language.spanish:
        return spanish.asMap();
      case Language.italian:
        return italian.asMap();
      case Language.czech:
        return czech.asMap();
    }
  }
}
