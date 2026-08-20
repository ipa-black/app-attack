package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.i6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1604i6 extends AbstractC1582h9<Gf> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new Gf();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        Gf gf = (Gf) MessageNano.mergeFrom(new Gf(), bArr);
        Intrinsics.checkNotNullExpressionValue(gf, "SessionExtrasProtobuf.Se…ionExtras.parseFrom(data)");
        return gf;
    }
}
