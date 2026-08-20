package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes5.dex */
public class O6<T> {

    /* renamed from: a  reason: collision with root package name */
    private final ProtobufConverter<T, ? extends MessageNano> f13572a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public O6(ProtobufConverter<T, ? extends MessageNano> protobufConverter) {
        this.f13572a = protobufConverter;
    }

    public byte[] a(T t) {
        return MessageNano.toByteArray((MessageNano) this.f13572a.fromModel(t));
    }
}
