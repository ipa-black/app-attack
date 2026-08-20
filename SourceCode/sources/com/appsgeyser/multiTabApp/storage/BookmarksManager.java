package com.appsgeyser.multiTabApp.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes2.dex */
public class BookmarksManager extends SQLiteOpenHelper {
    private static final String BOOKMARKS_INDEX = "id";
    private static final String BOOKMARKS_NAME = "name";
    private static final String BOOKMARKS_URL = "url";
    private static final String DATABASE_INITIAL_NAME = "Bookmarks";
    private static final int DATABASE_VERSION = 1;
    private final String BOOKMARKS_PAGE_PREFIX;
    private String BOOKMARKS_TABLE_CREATE;
    private String BOOKMARKS_TABLE_NAME;
    private final String DATABASE_NAME;
    private Context _context;
    private String _name;

    public BookmarksManager(String str, Context context) {
        super(context, DATABASE_INITIAL_NAME + str, (SQLiteDatabase.CursorFactory) null, 1);
        this.BOOKMARKS_PAGE_PREFIX = "BookmarksPage";
        this._context = context;
        this.DATABASE_NAME = DATABASE_INITIAL_NAME + str;
        this.BOOKMARKS_TABLE_NAME = "BookmarksPage" + str;
        this.BOOKMARKS_TABLE_CREATE = "CREATE TABLE " + this.BOOKMARKS_TABLE_NAME + " (id integer primary key autoincrement, name TEXT, url TEXT);";
        this._name = str;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(this.BOOKMARKS_TABLE_CREATE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + this.BOOKMARKS_TABLE_NAME);
        onCreate(sQLiteDatabase);
    }

    public void addBookmark(String str, String str2) {
        SQLiteDatabase writableDatabase = super.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", str);
        contentValues.put("url", str2);
        writableDatabase.insert(this.BOOKMARKS_TABLE_NAME, null, contentValues);
    }

    public void removeBookmark(Integer num) {
        super.getWritableDatabase().delete(this.BOOKMARKS_TABLE_NAME, "id=?", new String[]{num.toString()});
    }

    public Cursor getBookmarks() {
        return getBookmarks(0, null);
    }

    public Cursor getBookmarks(Integer num, Integer num2) {
        SQLiteDatabase readableDatabase = super.getReadableDatabase();
        String str = (num2 == null || num2.intValue() == 0) ? "" : " limit " + num2;
        return readableDatabase.query(this.BOOKMARKS_TABLE_NAME, null, null, null, null, null, null, (num == null || num.intValue() <= 0) ? str : str + " offset " + num);
    }
}
