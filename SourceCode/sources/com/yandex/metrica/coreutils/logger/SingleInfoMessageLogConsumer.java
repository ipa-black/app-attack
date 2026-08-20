package com.yandex.metrica.coreutils.logger;
/* loaded from: classes3.dex */
public class SingleInfoMessageLogConsumer implements IMessageLogConsumer<String> {
    private final BaseLogger logger;

    public SingleInfoMessageLogConsumer(BaseLogger baseLogger) {
        this.logger = baseLogger;
    }

    @Override // com.yandex.metrica.coreutils.logger.IMessageLogConsumer
    public void consume(String str, Object... objArr) {
        this.logger.fi(str, objArr);
    }

    @Override // com.yandex.metrica.coreutils.logger.IMessageLogConsumer
    public void consumeWithTag(String str, String str2, Object... objArr) {
        this.logger.fi(str + str2, objArr);
    }

    public BaseLogger getLogger() {
        return this.logger;
    }
}
