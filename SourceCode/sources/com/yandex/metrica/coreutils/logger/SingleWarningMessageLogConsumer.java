package com.yandex.metrica.coreutils.logger;
/* loaded from: classes3.dex */
public class SingleWarningMessageLogConsumer implements IMessageLogConsumer<String> {
    private final BaseLogger logger;

    public SingleWarningMessageLogConsumer(BaseLogger baseLogger) {
        this.logger = baseLogger;
    }

    @Override // com.yandex.metrica.coreutils.logger.IMessageLogConsumer
    public void consume(String str, Object... objArr) {
        this.logger.fw(str, objArr);
    }

    @Override // com.yandex.metrica.coreutils.logger.IMessageLogConsumer
    public void consumeWithTag(String str, String str2, Object... objArr) {
        this.logger.fw(str + str2, objArr);
    }

    BaseLogger getLogger() {
        return this.logger;
    }
}
