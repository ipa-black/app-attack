package com.bytedance.sdk.openadsdk.ABk.Qhi;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.bytedance.sdk.component.utils.ABk;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: MonitorSQLiteOpenHelper.java */
/* loaded from: classes2.dex */
public class Qhi extends SQLiteOpenHelper {
    private static volatile Qhi cJ;
    final Context Qhi;

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    private static Qhi ac() {
        if (cJ == null) {
            synchronized (Qhi.class) {
                if (cJ == null) {
                    cJ = new Qhi(com.bytedance.sdk.openadsdk.ABk.Qhi.Qhi());
                }
            }
        }
        return cJ;
    }

    public static SQLiteDatabase Qhi() {
        try {
            Qhi ac = ac();
            if (ac != null) {
                SQLiteDatabase writableDatabase = ac.getWritableDatabase();
                if (writableDatabase.isOpen()) {
                    return writableDatabase;
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            Log.i("MonitorSQLiteOpenHelper", th.getMessage());
            return null;
        }
    }

    public static SQLiteDatabase cJ() {
        try {
            Qhi ac = ac();
            if (ac != null) {
                SQLiteDatabase readableDatabase = ac.getReadableDatabase();
                if (readableDatabase.isOpen()) {
                    return readableDatabase;
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            Log.i("MonitorSQLiteOpenHelper", th.getMessage());
            return null;
        }
    }

    private Qhi(Context context) {
        super(context, "pag_monitor.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.Qhi = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS monitor_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,sdk_version TEXT ,scene TEXT ,start_count INTEGER default 0 , success_count INTEGER default 0  , fail_count INTEGER default 0  , rit TEXT  , tag TEXT  , label TEXT  , timestamp INTEGER default 0 ,mediation TEXT  , is_init INTEGER , extra TEXT )");
        } catch (Throwable th) {
            Log.e("MonitorSQLiteOpenHelper", th.getMessage());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            if (i > i2) {
                Qhi(sQLiteDatabase);
                onCreate(sQLiteDatabase);
                return;
            }
            onCreate(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    private void Qhi(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> cJ2 = cJ(sQLiteDatabase);
        if (cJ2 == null || cJ2.size() <= 0) {
            return;
        }
        Iterator<String> it = cJ2.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
        }
    }

    private ArrayList<String> cJ(SQLiteDatabase sQLiteDatabase) {
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
        } catch (Exception e2) {
            ABk.Qhi("MonitorSQLiteOpenHelper", e2.getMessage());
        }
        return arrayList;
    }
}
