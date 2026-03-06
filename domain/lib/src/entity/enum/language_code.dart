enum LanguageCode {
  en;

  String get localeCode {
    switch (this) {
      case LanguageCode.en:
        return 'en';
    }
  }
}
