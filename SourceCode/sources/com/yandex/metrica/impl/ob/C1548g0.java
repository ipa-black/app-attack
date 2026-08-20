package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.g0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1548g0 implements InterfaceC1418ak {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1598i0 f14767a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1548g0(C1598i0 c1598i0) {
        this.f14767a = c1598i0;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1418ak
    public void a(Zj zj) {
        ContentValues contentValues;
        ContentValues contentValues2;
        C1910uj b2 = zj.b();
        if (b2 != null) {
            contentValues2 = this.f14767a.f14893g;
            contentValues2.put("cellular_connection_type", b2.m());
        }
        contentValues = this.f14767a.f14893g;
        contentValues.put("call_state", Integer.valueOf(zj.a()));
    }
}
