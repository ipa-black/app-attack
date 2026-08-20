package com.yandex.metrica.coreutils.logger;
/* loaded from: classes3.dex */
class ObjectLogConsumer<T> implements IMessageLogConsumer<T> {
    private final MultilineMessageLogConsumer messageLogConsumer;
    private final IObjectLogDumper<T> objectLogDumper;

    public ObjectLogConsumer(MultilineMessageLogConsumer multilineMessageLogConsumer, IObjectLogDumper<T> iObjectLogDumper) {
        this.messageLogConsumer = multilineMessageLogConsumer;
        this.objectLogDumper = iObjectLogDumper;
    }

    @Override // com.yandex.metrica.coreutils.logger.IMessageLogConsumer
    public void consumeWithTag(String str, T t, Object... objArr) {
        this.messageLogConsumer.consumeWithTag(str, this.objectLogDumper.dumpObject(t), objArr);
    }

    @Override // com.yandex.metrica.coreutils.logger.IMessageLogConsumer
    public void consume(T t, Object... objArr) {
        this.messageLogConsumer.consume(this.objectLogDumper.dumpObject(t), objArr);
    }

    MultilineMessageLogConsumer getMessageLogConsumer() {
        return this.messageLogConsumer;
    }

    IObjectLogDumper<T> getObjectLogDumper() {
        return this.objectLogDumper;
    }
}
