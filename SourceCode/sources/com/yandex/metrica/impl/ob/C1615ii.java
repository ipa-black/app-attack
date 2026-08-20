package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import com.yandex.metrica.impl.ob.ResultReceiverC1523f0;
/* renamed from: com.yandex.metrica.impl.ob.ii  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1615ii implements ResultReceiverC1523f0.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Yh f14925a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ C1591hi f14926b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1615ii(C1591hi c1591hi, Yh yh) {
        this.f14926b = c1591hi;
        this.f14925a = yh;
    }

    @Override // com.yandex.metrica.impl.ob.ResultReceiverC1523f0.a
    public void a(int i, Bundle bundle) {
        this.f14926b.a(bundle, this.f14925a);
    }
}
