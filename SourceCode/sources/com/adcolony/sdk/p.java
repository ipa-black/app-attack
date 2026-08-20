package com.adcolony.sdk;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.adcolony.sdk.e0;
/* loaded from: classes.dex */
class p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, ContentValues contentValues, SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.insertOrThrow(str, null, contentValues);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (SQLException e2) {
                new e0.a().a("Exception on insert to " + str + ", db version:").a(sQLiteDatabase.getVersion()).a(". Values: " + contentValues.toString() + " caused: ").a(e2.toString()).a(e0.f296g);
            }
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            new e0.a().a("Error on insert to " + str + ", db version:").a(sQLiteDatabase.getVersion()).a(". Values: " + contentValues.toString() + " caused: ").a(th.toString()).a(e0.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i, long j, String str, String str2, SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                if (str == null) {
                    str = "rowid";
                    j = -1;
                }
                if (i >= 0) {
                    Cursor rawQuery = sQLiteDatabase.rawQuery("select " + str + " from " + str2 + " order by " + str + " desc limit 1 offset " + i, null);
                    if (rawQuery.moveToFirst()) {
                        j = Math.max(j, rawQuery.getLong(0));
                    }
                    rawQuery.close();
                }
                if (j >= 0) {
                    sQLiteDatabase.execSQL("delete from " + str2 + " where " + str + " <= " + j);
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (SQLException e2) {
                new e0.a().a("Exception on deleting excessive rows:").a(e2.toString()).a(e0.f296g);
            }
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            new e0.a().a("Error on deleting excessive rows:").a(th.toString()).a(e0.i);
        }
    }
}
