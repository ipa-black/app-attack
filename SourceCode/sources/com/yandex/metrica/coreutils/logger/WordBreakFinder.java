package com.yandex.metrica.coreutils.logger;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
class WordBreakFinder {
    private final Pattern goodLineEndPattern = Pattern.compile("[\\p{Space},;]");

    public int find(String str, int i, int i2) {
        return findLastIndex(this.goodLineEndPattern.matcher(str), i, i2);
    }

    private int findLastIndex(Matcher matcher, int i, int i2) {
        if (i2 >= i) {
            int i3 = ((i2 - i) / 2) + i;
            matcher.region(i3, i2);
            if (matcher.find()) {
                return findLastIndex(matcher, i2);
            }
            matcher.region(i, i3);
            if (matcher.find()) {
                return findLastIndex(matcher, i3);
            }
        }
        return -1;
    }

    private int findLastIndex(Matcher matcher, int i) {
        int start = matcher.start();
        int findLastIndex = findLastIndex(matcher, start + 1, i);
        return findLastIndex == -1 ? start : findLastIndex;
    }
}
