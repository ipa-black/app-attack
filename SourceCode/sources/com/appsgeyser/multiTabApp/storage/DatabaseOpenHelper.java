package com.appsgeyser.multiTabApp.storage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.text.SimpleDateFormat;
/* loaded from: classes2.dex */
public class DatabaseOpenHelper extends SQLiteOpenHelper {
    public static final String DATABASE_NAME = "Storage";
    private static final int DATABASE_VERSION = 2;
    private static final String DOWNLOADS_LIST_TABLE_CREATE = "create table downloadsList (id integer primary key autoincrement,name text,description text,id_d text,link_d text,file_path text,date integer,status text);";
    public static final String HISTORY_ROW_TITLE = "title";
    public static final String HISTORY_ROW_URL = "url";
    public static final String HISTORY_ROW_VISIT_TIME = "visitTime";
    private static final String HISTORY_TABLE_CREATE = "CREATE VIRTUAL TABLE history  USING fts3(visitTime DATETIME, title TEXT, url TEXT);";
    public static final String HISTORY_TABLE_NAME = "history";
    public static final SimpleDateFormat SQL_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static final String TAG = "StorageDatabase";

    public DatabaseOpenHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(HISTORY_TABLE_CREATE);
        sQLiteDatabase.execSQL(DOWNLOADS_LIST_TABLE_CREATE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w(TAG, "Upgrading database from version " + i + " to " + i2 + ", which will destroy all old data");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS create table downloadsList (id integer primary key autoincrement,name text,description text,id_d text,link_d text,file_path text,date integer,status text);");
        onCreate(sQLiteDatabase);
    }
}
