package kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize;

import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: capitalizeDecapitalize.kt */
/* loaded from: classes5.dex */
public final class CapitalizeDecapitalizeKt {
    public static final String decapitalizeSmartForCompiler(String str, boolean z) {
        Integer num;
        Intrinsics.checkNotNullParameter(str, "<this>");
        String str2 = str;
        if (str2.length() != 0 && isUpperCaseCharAt(str, 0, z)) {
            if (str.length() == 1 || !isUpperCaseCharAt(str, 1, z)) {
                if (z) {
                    return decapitalizeAsciiOnly(str);
                }
                if (str2.length() > 0) {
                    char lowerCase = Character.toLowerCase(str.charAt(0));
                    String substring = str.substring(1);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                    return lowerCase + substring;
                }
                return str;
            }
            Iterator<Integer> it = StringsKt.getIndices(str2).iterator();
            while (true) {
                if (!it.hasNext()) {
                    num = null;
                    break;
                }
                num = it.next();
                if (!isUpperCaseCharAt(str, num.intValue(), z)) {
                    break;
                }
            }
            Integer num2 = num;
            if (num2 == null) {
                return toLowerCase(str, z);
            }
            int intValue = num2.intValue() - 1;
            String substring2 = str.substring(0, intValue);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
            String lowerCase2 = toLowerCase(substring2, z);
            String substring3 = str.substring(intValue);
            Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
            return Intrinsics.stringPlus(lowerCase2, substring3);
        }
        return str;
    }

    private static final boolean isUpperCaseCharAt(String str, int i, boolean z) {
        char charAt = str.charAt(i);
        if (z) {
            return 'A' <= charAt && charAt < '[';
        }
        return Character.isUpperCase(charAt);
    }

    private static final String toLowerCase(String str, boolean z) {
        if (z) {
            return toLowerCaseAsciiOnly(str);
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    public static final String capitalizeAsciiOnly(String str) {
        char charAt;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() != 0 && 'a' <= (charAt = str.charAt(0)) && charAt < '{') {
            char upperCase = Character.toUpperCase(charAt);
            String substring = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            return upperCase + substring;
        }
        return str;
    }

    public static final String decapitalizeAsciiOnly(String str) {
        char charAt;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() != 0 && 'A' <= (charAt = str.charAt(0)) && charAt < '[') {
            char lowerCase = Character.toLowerCase(charAt);
            String substring = str.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            return lowerCase + substring;
        }
        return str;
    }

    public static final String toLowerCaseAsciiOnly(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            i++;
            if ('A' <= charAt && charAt < '[') {
                charAt = Character.toLowerCase(charAt);
            }
            sb.append(charAt);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "builder.toString()");
        return sb2;
    }
}
