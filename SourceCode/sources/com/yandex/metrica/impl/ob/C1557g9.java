package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import java.io.IOException;
/* renamed from: com.yandex.metrica.impl.ob.g9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1557g9 extends AbstractC1582h9<C1954wf> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new C1954wf();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (C1954wf) MessageNano.mergeFrom(new C1954wf(), bArr);
    }
}
