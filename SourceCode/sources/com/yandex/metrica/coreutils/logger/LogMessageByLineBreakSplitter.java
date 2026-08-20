package com.yandex.metrica.coreutils.logger;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
class LogMessageByLineBreakSplitter implements ILogMessageSplitter {
    static final String DEFAULT_REGEX = "\\n";
    private final String regex;

    public LogMessageByLineBreakSplitter() {
        this(DEFAULT_REGEX);
    }

    @Override // com.yandex.metrica.coreutils.logger.ILogMessageSplitter
    public List<String> split(String str) {
        return Arrays.asList(str.split(this.regex));
    }

    LogMessageByLineBreakSplitter(String str) {
        this.regex = str;
    }
}
