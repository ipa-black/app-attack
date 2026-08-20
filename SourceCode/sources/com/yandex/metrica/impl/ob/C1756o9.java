package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.o9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1756o9 extends AbstractC1582h9<Ff> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Ff();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (Ff) MessageNano.mergeFrom(new Ff(), bArr);
    }
}
