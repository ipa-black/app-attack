package antlr;
/* loaded from: classes.dex */
public class StringUtils {
    public static String stripBack(String str, char c2) {
        while (str.length() > 0 && str.charAt(str.length() - 1) == c2) {
            str = str.substring(0, str.length() - 1);
        }
        return str;
    }

    public static String stripBack(String str, String str2) {
        boolean z;
        do {
            z = false;
            for (int i = 0; i < str2.length(); i++) {
                char charAt = str2.charAt(i);
                while (str.length() > 0 && str.charAt(str.length() - 1) == charAt) {
                    str = str.substring(0, str.length() - 1);
                    z = true;
                }
            }
        } while (z);
        return str;
    }

    public static String stripFront(String str, char c2) {
        while (str.length() > 0 && str.charAt(0) == c2) {
            str = str.substring(1);
        }
        return str;
    }

    public static String stripFront(String str, String str2) {
        boolean z;
        do {
            z = false;
            for (int i = 0; i < str2.length(); i++) {
                char charAt = str2.charAt(i);
                while (str.length() > 0 && str.charAt(0) == charAt) {
                    z = true;
                    str = str.substring(1);
                }
            }
        } while (z);
        return str;
    }

    public static String stripFrontBack(String str, String str2, String str3) {
        int indexOf = str.indexOf(str2);
        int lastIndexOf = str.lastIndexOf(str3);
        return (indexOf == -1 || lastIndexOf == -1) ? str : str.substring(indexOf + 1, lastIndexOf);
    }
}
