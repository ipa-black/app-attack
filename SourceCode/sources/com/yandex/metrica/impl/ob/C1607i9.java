package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.i9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1607i9 extends AbstractC1582h9<C2002yf> {
    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object defaultValue() {
        return new C2002yf();
    }

    @Override // com.yandex.metrica.core.api.StateSerializer
    public Object toState(byte[] bArr) {
        C2002yf c2002yf = (C2002yf) MessageNano.mergeFrom(new C2002yf(), bArr);
        Intrinsics.checkNotNullExpressionValue(c2002yf, "ClidsInfoProto.ClidsInfo.parseFrom(data)");
        return c2002yf;
    }
}
