package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: com.yandex.metrica.impl.ob.i8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1606i8 implements InterfaceC1556g8 {

    /* renamed from: a  reason: collision with root package name */
    private final O7 f14907a;

    public C1606i8(O7 o7) {
        this.f14907a = o7;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1556g8
    public SQLiteDatabase a() {
        try {
            return this.f14907a.getWritableDatabase();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1556g8
    public void a(SQLiteDatabase sQLiteDatabase) {
    }
}
