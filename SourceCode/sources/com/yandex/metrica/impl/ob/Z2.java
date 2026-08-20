package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import java.io.IOException;
/* loaded from: classes5.dex */
public class Z2 extends AbstractC1582h9<C1978xf> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new C1978xf();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (C1978xf) MessageNano.mergeFrom(new C1978xf(), bArr);
    }
}
