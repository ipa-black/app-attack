package com.yandex.metrica.coreutils.logger;
/* loaded from: classes3.dex */
interface IMessageLogConsumer<T> {
    void consume(T t, Object... objArr);

    void consumeWithTag(String str, T t, Object... objArr);
}
