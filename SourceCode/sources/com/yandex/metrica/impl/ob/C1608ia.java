package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.ia  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1608ia implements R7 {

    /* renamed from: a  reason: collision with root package name */
    private final R7 f14908a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1608ia(Context context, W7 w7, R7 r7) {
        this.f14908a = r7;
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public void a(String str, byte[] bArr) {
        this.f14908a.a(str, bArr);
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public void b(String str) {
        this.f14908a.b(str);
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public byte[] a(String str) {
        return this.f14908a.a(str);
    }
}
