package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import java.io.IOException;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.n9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1731n9 extends AbstractC1582h9<Ef> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Ef();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) throws IOException {
        return (Ef) MessageNano.mergeFrom(new Ef(), bArr);
    }
}
