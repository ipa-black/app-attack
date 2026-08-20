package com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: DatabaseHelper.java */
/* loaded from: classes2.dex */
public class fl extends SQLiteOpenHelper {
    final Context Qhi;

    public fl(Context context) {
        super(context, "ttadlog.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.Qhi = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            Qhi(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    private void Qhi(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Qhi.cJ(hm.ROR().CJ().cJ()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.fl.ac(hm.ROR().CJ().Qhi()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Sf.ac(hm.ROR().CJ().CJ()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.ROR.Qhi(hm.ROR().CJ().fl()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.Tgh.Qhi.Tgh.ROR.cJ());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            if (i > i2) {
                cJ(sQLiteDatabase);
                Qhi(sQLiteDatabase);
                return;
            }
            Qhi(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    private void cJ(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> ac = ac(sQLiteDatabase);
        if (ac == null || ac.size() <= 0) {
            return;
        }
        Iterator<String> it = ac.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
        }
    }

    private ArrayList<String> ac(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
            if (rawQuery != null) {
                while (rawQuery.moveToNext()) {
                    String string = rawQuery.getString(0);
                    if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                        arrayList.add(string);
                    }
                }
                rawQuery.close();
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }
}
