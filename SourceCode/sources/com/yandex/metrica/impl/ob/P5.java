package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import java.io.IOException;
/* loaded from: classes5.dex */
public class P5 extends AbstractC1582h9<Af> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Af();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (Af) MessageNano.mergeFrom(new Af(), bArr);
    }
}
