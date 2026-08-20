package com.yandex.metrica.coreutils.logger;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
class LogMessageByLineLimitSplitter implements ILogMessageSplitter {
    static final int DEFAULT_SINGLE_LOG_LIMIT = 3800;
    static final int LOG_CLASS_AND_METHOD_TAG_RESERVE = 200;
    static final int SINGLE_LOG_ANDROID_LIMIT = 4000;
    private final int lineLimit;
    private final WordBreakFinder wordBreakFinder;

    public LogMessageByLineLimitSplitter() {
        this(new WordBreakFinder(), DEFAULT_SINGLE_LOG_LIMIT);
    }

    LogMessageByLineLimitSplitter(WordBreakFinder wordBreakFinder, int i) {
        this.wordBreakFinder = wordBreakFinder;
        this.lineLimit = i;
    }

    @Override // com.yandex.metrica.coreutils.logger.ILogMessageSplitter
    public List<String> split(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (str.length() > i) {
            int length = str.length();
            int min = Math.min(length, this.lineLimit + i);
            if (length > this.lineLimit + i) {
                int find = this.wordBreakFinder.find(str, i, min);
                if (find != -1) {
                    min = find + 1;
                }
                length = min;
            }
            arrayList.add(str.substring(i, length));
            i = length;
        }
        return arrayList;
    }
}
