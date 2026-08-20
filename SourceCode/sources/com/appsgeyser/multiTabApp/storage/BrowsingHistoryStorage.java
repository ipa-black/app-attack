package com.appsgeyser.multiTabApp.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;
import java.util.Date;
import java.util.Vector;
import org.slf4j.Marker;
/* loaded from: classes2.dex */
public class BrowsingHistoryStorage {
    private DatabaseOpenHelper _dbHelper;

    public Cursor loadWeeklyHistory() {
        Date date = new Date();
        return loadHistory(new Date(date.getTime() - 604800000), date);
    }

    public BrowsingHistoryStorage(Context context) {
        this._dbHelper = new DatabaseOpenHelper(context);
    }

    public Cursor loadHistory(Date date, Date date2) {
        String str;
        Vector vector = new Vector();
        if (date == null) {
            str = "";
        } else {
            vector.add(DatabaseOpenHelper.SQL_DATE_FORMAT.format(date));
            str = "visitTime>= ?";
        }
        if (date2 != null) {
            if (date != null) {
                str = str + " AND ";
            }
            str = str + "visitTime<= ?";
            vector.add(DatabaseOpenHelper.SQL_DATE_FORMAT.format(date2));
        }
        String[] strArr = new String[vector.size()];
        vector.toArray(strArr);
        String[] strArr2 = {"rowId _id", "title", "url", DatabaseOpenHelper.HISTORY_ROW_VISIT_TIME};
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(DatabaseOpenHelper.HISTORY_TABLE_NAME);
        Cursor query = sQLiteQueryBuilder.query(this._dbHelper.getReadableDatabase(), strArr2, str, strArr, null, null, null);
        if (query == null) {
            return null;
        }
        if (query.moveToFirst()) {
            return query;
        }
        query.close();
        return null;
    }

    public Cursor getHistoryItemsGroupedByUrl(String str) {
        String str2;
        String[] strArr;
        String[] strArr2 = {"rowId _id", "title", "url"};
        loadHistory(new Date("2014/01/01"), new Date("2016/09/09"));
        if (str != null) {
            str2 = "url MATCH ?";
            strArr = new String[]{str + Marker.ANY_MARKER};
        } else {
            str2 = null;
            strArr = null;
        }
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(DatabaseOpenHelper.HISTORY_TABLE_NAME);
        return sQLiteQueryBuilder.query(this._dbHelper.getReadableDatabase(), strArr2, str2, strArr, "url", null, null, "6");
    }

    public void addHistoryItem(String str, String str2, Date date) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", str);
        contentValues.put("url", str2);
        contentValues.put(DatabaseOpenHelper.HISTORY_ROW_VISIT_TIME, DatabaseOpenHelper.SQL_DATE_FORMAT.format(date));
        this._dbHelper.getWritableDatabase().insert(DatabaseOpenHelper.HISTORY_TABLE_NAME, null, contentValues);
    }

    public int removeHistoryItemById(long j) {
        try {
            return this._dbHelper.getWritableDatabase().delete(DatabaseOpenHelper.HISTORY_TABLE_NAME, "rowId=" + Long.toString(j), null);
        } catch (Exception e2) {
            Log.e("removeHistoryItemById", "" + e2);
            return -1;
        }
    }

    public int removeHistoryAllItem() {
        try {
            return this._dbHelper.getWritableDatabase().delete(DatabaseOpenHelper.HISTORY_TABLE_NAME, null, null);
        } catch (Exception e2) {
            Log.e("removeHistoryAllItem", "" + e2);
            return -1;
        }
    }
}
