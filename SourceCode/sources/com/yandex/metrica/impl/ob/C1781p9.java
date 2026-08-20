package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.If;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.p9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1781p9 extends AbstractC1582h9<If> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        If r0 = new If();
        r0.k = new If.i();
        return r0;
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (If) MessageNano.mergeFrom(new If(), bArr);
    }
}
