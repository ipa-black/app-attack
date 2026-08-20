package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import java.io.IOException;
/* loaded from: classes5.dex */
public class Zd extends AbstractC1582h9<Cf> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Cf();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (Cf) MessageNano.mergeFrom(new Cf(), bArr);
    }
}
