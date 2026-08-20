package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
/* renamed from: com.yandex.metrica.impl.ob.ha  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1583ha implements R7 {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1556g8 f14840a;

    public C1583ha(InterfaceC1556g8 interfaceC1556g8, String str) {
        this.f14840a = interfaceC1556g8;
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public void a(String str, byte[] bArr) {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = this.f14840a.a();
            if (sQLiteDatabase != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("data_key", str);
                    contentValues.put("value", bArr);
                    sQLiteDatabase.insertWithOnConflict("binary_data", null, contentValues, 5);
                } catch (Throwable unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    sQLiteDatabase = sQLiteDatabase2;
                    this.f14840a.a(sQLiteDatabase);
                }
            }
        } catch (Throwable unused2) {
        }
        this.f14840a.a(sQLiteDatabase);
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public void b(String str) {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.f14840a.a();
            if (sQLiteDatabase != null) {
                try {
                    new ContentValues().put("data_key", str);
                    sQLiteDatabase.delete("binary_data", "data_key = ?", new String[]{str});
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            sQLiteDatabase = null;
        }
        this.f14840a.a(sQLiteDatabase);
    }

    @Override // com.yandex.metrica.impl.ob.R7
    public byte[] a(String str) {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.f14840a.a();
        } catch (Throwable unused) {
            cursor = null;
            sQLiteDatabase = null;
        }
        if (sQLiteDatabase != null) {
            try {
                cursor = sQLiteDatabase.query("binary_data", null, "data_key = ?", new String[]{str}, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() == 1 && cursor.moveToFirst()) {
                            byte[] blob = cursor.getBlob(cursor.getColumnIndexOrThrow("value"));
                            A2.a(cursor);
                            this.f14840a.a(sQLiteDatabase);
                            return blob;
                        }
                    } catch (Throwable unused2) {
                    }
                }
                if (cursor != null) {
                    cursor.getCount();
                }
            } catch (Throwable unused3) {
            }
            A2.a(cursor);
            this.f14840a.a(sQLiteDatabase);
            return null;
        }
        cursor = null;
        A2.a(cursor);
        this.f14840a.a(sQLiteDatabase);
        return null;
    }
}
