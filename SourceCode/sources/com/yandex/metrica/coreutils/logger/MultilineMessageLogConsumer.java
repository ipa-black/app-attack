package com.yandex.metrica.coreutils.logger;

import java.util.Locale;
/* loaded from: classes3.dex */
public class MultilineMessageLogConsumer implements IMessageLogConsumer<String> {
    private static final String TAG = "[MultilineMessageLogConsumer]";
    private final ILogMessageSplitter logMessageSplitter;
    private final IMessageLogConsumer<String> singleLineLogConsumer;

    public MultilineMessageLogConsumer(IMessageLogConsumer<String> iMessageLogConsumer, ILogMessageSplitter iLogMessageSplitter) {
        this.singleLineLogConsumer = iMessageLogConsumer;
        this.logMessageSplitter = iLogMessageSplitter;
    }

    @Override // com.yandex.metrica.coreutils.logger.IMessageLogConsumer
    public void consume(String str, Object... objArr) {
        for (String str2 : this.logMessageSplitter.split(prepareMessage(str, objArr))) {
            this.singleLineLogConsumer.consume(str2, new Object[0]);
        }
    }

    @Override // com.yandex.metrica.coreutils.logger.IMessageLogConsumer
    public void consumeWithTag(String str, String str2, Object... objArr) {
        for (String str3 : this.logMessageSplitter.split(prepareMessage(str2, objArr))) {
            this.singleLineLogConsumer.consumeWithTag(str, str3, new Object[0]);
        }
    }

    private String prepareMessage(String str, Object... objArr) {
        try {
            return String.format(Locale.US, str, objArr);
        } catch (Throwable unused) {
            return "Attention!!!  Invalid log format. See exception details above.";
        }
    }

    IMessageLogConsumer<String> getSingleLineLogConsumer() {
        return this.singleLineLogConsumer;
    }

    ILogMessageSplitter getLogMessageSplitter() {
        return this.logMessageSplitter;
    }
}
