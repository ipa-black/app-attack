package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.k9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1656k9 extends AbstractC1582h9<Bf> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Bf();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (Bf) MessageNano.mergeFrom(new Bf(), bArr);
    }
}
