package com.yandex.metrica.coreutils.logger;

import org.json.JSONObject;
/* loaded from: classes3.dex */
class MessageLogConsumerProvider {
    private final IMessageLogConsumer<String> infoMessageLogConsumer;
    private final IMessageLogConsumer<JSONObject> jsonInfoLogConsumer;
    private final IMessageLogConsumer<String> warningMessageLogConsumer;

    public MessageLogConsumerProvider(BaseLogger baseLogger) {
        SingleInfoMessageLogConsumer singleInfoMessageLogConsumer = new SingleInfoMessageLogConsumer(baseLogger);
        SingleWarningMessageLogConsumer singleWarningMessageLogConsumer = new SingleWarningMessageLogConsumer(baseLogger);
        LogMessageByLineLimitSplitter logMessageByLineLimitSplitter = new LogMessageByLineLimitSplitter();
        this.infoMessageLogConsumer = new MultilineMessageLogConsumer(singleInfoMessageLogConsumer, logMessageByLineLimitSplitter);
        this.warningMessageLogConsumer = new MultilineMessageLogConsumer(singleWarningMessageLogConsumer, logMessageByLineLimitSplitter);
        this.jsonInfoLogConsumer = new ObjectLogConsumer(new MultilineMessageLogConsumer(singleInfoMessageLogConsumer, new LogMessageByLineBreakSplitter()), new JsonObjectLogDumper());
    }

    public IMessageLogConsumer<String> getDebugLogConsumer() {
        return this.infoMessageLogConsumer;
    }

    public IMessageLogConsumer<String> getInfoLogConsumer() {
        return this.infoMessageLogConsumer;
    }

    public IMessageLogConsumer<String> getWarningMessageLogConsumer() {
        return this.warningMessageLogConsumer;
    }

    public IMessageLogConsumer<JSONObject> getJsonInfoLogConsumer() {
        return this.jsonInfoLogConsumer;
    }
}
