package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.impl.ob.Cf;
import java.io.IOException;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.he  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1587he extends AbstractC1582h9<Cf.a> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Cf.a();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (Cf.a) MessageNano.mergeFrom(new Cf.a(), bArr);
    }
}
