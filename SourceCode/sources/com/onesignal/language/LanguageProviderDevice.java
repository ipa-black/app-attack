package com.onesignal.language;

import java.util.Locale;
/* loaded from: classes3.dex */
public class LanguageProviderDevice implements LanguageProvider {
    private static final String CHINESE = "zh";
    private static final String HEBREW_CORRECTED = "he";
    private static final String HEBREW_INCORRECT = "iw";
    private static final String INDONESIAN_CORRECTED = "id";
    private static final String INDONESIAN_INCORRECT = "in";
    private static final String YIDDISH_CORRECTED = "yi";
    private static final String YIDDISH_INCORRECT = "ji";

    @Override // com.onesignal.language.LanguageProvider
    public String getLanguage() {
        String language = Locale.getDefault().getLanguage();
        language.hashCode();
        char c2 = 65535;
        switch (language.hashCode()) {
            case 3365:
                if (language.equals("in")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3374:
                if (language.equals(HEBREW_INCORRECT)) {
                    c2 = 1;
                    break;
                }
                break;
            case 3391:
                if (language.equals(YIDDISH_INCORRECT)) {
                    c2 = 2;
                    break;
                }
                break;
            case 3886:
                if (language.equals(CHINESE)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return "id";
            case 1:
                return HEBREW_CORRECTED;
            case 2:
                return YIDDISH_CORRECTED;
            case 3:
                return language + "-" + Locale.getDefault().getCountry();
            default:
                return language;
        }
    }
}
