package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.core.api.ProtobufStateSerializer;
/* renamed from: com.yandex.metrica.impl.ob.h9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1582h9<T extends MessageNano> implements ProtobufStateSerializer<T> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public byte[] toByteArray(Object obj) {
        return MessageNano.toByteArray((MessageNano) obj);
    }
}
