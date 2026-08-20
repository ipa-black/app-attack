package com.yandex.metrica.impl.ob;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes5.dex */
public class V7 {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1556g8 f14155a;

    public V7(O7 o7, String str) {
        this(new C1606i8(o7), str);
    }

    public void a() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.f14155a.a();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS permissions");
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            sQLiteDatabase = null;
        }
        this.f14155a.a(sQLiteDatabase);
    }

    public List<Bd> b() {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        try {
            sQLiteDatabase = this.f14155a.a();
        } catch (Throwable unused) {
            sQLiteDatabase = null;
            cursor = null;
        }
        if (sQLiteDatabase != null) {
            try {
                cursor = sQLiteDatabase.query("permissions", null, null, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            ArrayList arrayList = new ArrayList();
                            do {
                                arrayList.add(new Bd(cursor.getString(cursor.getColumnIndex("name")), cursor.getLong(cursor.getColumnIndex("granted")) == 1));
                            } while (cursor.moveToNext());
                            this.f14155a.a(sQLiteDatabase);
                            A2.a(cursor);
                            return arrayList;
                        }
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable unused3) {
            }
            this.f14155a.a(sQLiteDatabase);
            A2.a(cursor);
            return null;
        }
        cursor = null;
        this.f14155a.a(sQLiteDatabase);
        A2.a(cursor);
        return null;
    }

    V7(InterfaceC1556g8 interfaceC1556g8, String str) {
        this.f14155a = interfaceC1556g8;
    }
}
