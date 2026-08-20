package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.m9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1706m9 extends AbstractC1582h9<Df> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Df();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (Df) MessageNano.mergeFrom(new Df(), bArr);
    }
}
