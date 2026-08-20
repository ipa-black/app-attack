package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;
/* renamed from: com.yandex.metrica.impl.ob.h8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1581h8 implements InterfaceC1556g8 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14835a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14836b;

    /* renamed from: c  reason: collision with root package name */
    private final X7 f14837c;

    /* renamed from: d  reason: collision with root package name */
    private final C1889tm f14838d;

    /* renamed from: e  reason: collision with root package name */
    private O7 f14839e;

    public C1581h8(Context context, String str, C1889tm c1889tm, X7 x7) {
        this.f14835a = context;
        this.f14836b = str;
        this.f14838d = c1889tm;
        this.f14837c = x7;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1556g8
    public synchronized SQLiteDatabase a() {
        O7 o7;
        try {
            this.f14838d.a();
            o7 = new O7(this.f14835a, this.f14836b, this.f14837c);
            this.f14839e = o7;
        } catch (Throwable unused) {
            return null;
        }
        return o7.getWritableDatabase();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1556g8
    public synchronized void a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.close();
            } catch (Throwable unused) {
            }
        }
        A2.a((Closeable) this.f14839e);
        this.f14838d.b();
        this.f14839e = null;
    }
}
