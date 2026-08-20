package com.bytedance.sdk.openadsdk.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DBHelper.java */
/* loaded from: classes2.dex */
public class ROR {
    private static final Object ac = new Object();
    private ac Qhi;
    private Context cJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ROR(Context context) {
        try {
            this.cJ = context == null ? HzH.Qhi() : context.getApplicationContext();
            if (this.Qhi == null) {
                this.Qhi = new ac();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context ac() {
        Context context = this.cJ;
        return context == null ? HzH.Qhi() : context;
    }

    /* compiled from: DBHelper.java */
    /* loaded from: classes2.dex */
    public class ac {
        private SQLiteDatabase cJ = null;

        public ac() {
        }

        private synchronized void fl() {
            try {
                synchronized (ROR.ac) {
                    SQLiteDatabase sQLiteDatabase = this.cJ;
                    if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                        ROR ror = ROR.this;
                        SQLiteDatabase writableDatabase = new Qhi(ror.ac()).getWritableDatabase();
                        this.cJ = writableDatabase;
                        writableDatabase.setLockingEnabled(false);
                    }
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("DBHelper", th.getMessage());
                if (Tgh()) {
                    throw th;
                }
            }
        }

        public SQLiteDatabase Qhi() {
            fl();
            return this.cJ;
        }

        public synchronized void Qhi(String str) throws SQLException {
            try {
                fl();
                this.cJ.execSQL(str);
            } catch (Throwable th) {
                if (Tgh()) {
                    throw th;
                }
            }
        }

        public synchronized Cursor Qhi(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            Cursor cursor;
            try {
                fl();
                cursor = this.cJ.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("DBHelper", th.getMessage());
                cJ cJVar = new cJ();
                if (Tgh()) {
                    throw th;
                }
                cursor = cJVar;
            }
            return cursor;
        }

        public synchronized int Qhi(String str, ContentValues contentValues, String str2, String[] strArr) {
            int i;
            try {
                fl();
                i = this.cJ.update(str, contentValues, str2, strArr);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("DBHelper", e2.getMessage());
                if (Tgh()) {
                    throw e2;
                }
                i = 0;
            }
            return i;
        }

        public synchronized long Qhi(String str, String str2, ContentValues contentValues) {
            long j;
            try {
                fl();
                j = this.cJ.replace(str, str2, contentValues);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("DBHelper", e2.getMessage());
                if (Tgh()) {
                    throw e2;
                }
                j = -1;
            }
            return j;
        }

        public synchronized int Qhi(String str, String str2, String[] strArr) {
            int i;
            try {
                fl();
                i = this.cJ.delete(str, str2, strArr);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("DBHelper", e2.getMessage());
                if (Tgh()) {
                    throw e2;
                }
                i = 0;
            }
            return i;
        }

        public synchronized void cJ() {
            fl();
            SQLiteDatabase sQLiteDatabase = this.cJ;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.beginTransaction();
        }

        public synchronized void ac() {
            fl();
            SQLiteDatabase sQLiteDatabase = this.cJ;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.setTransactionSuccessful();
        }

        public synchronized void CJ() {
            fl();
            SQLiteDatabase sQLiteDatabase = this.cJ;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.endTransaction();
        }

        private synchronized boolean Tgh() {
            SQLiteDatabase sQLiteDatabase = this.cJ;
            if (sQLiteDatabase != null) {
                if (sQLiteDatabase.inTransaction()) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DBHelper.java */
    /* loaded from: classes2.dex */
    public class Qhi extends SQLiteOpenHelper {
        final Context Qhi;

        public Qhi(Context context) {
            super(context, "ttopensdk.db", (SQLiteDatabase.CursorFactory) null, 12);
            this.Qhi = context;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                Qhi(sQLiteDatabase, this.Qhi);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("DBHelper", th.getMessage());
            }
        }

        private void Qhi(SQLiteDatabase sQLiteDatabase, Context context) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.fl.Qhi());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.WAv.ac());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.pA.Qhi());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.iMK.Qhi());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.MQ.cJ.Qhi());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.HzH.ac());
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.ac());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.ugen.Qhi.ac.ac());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.hpZ.Qhi());
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i > i2) {
                try {
                    CJ(sQLiteDatabase);
                    Qhi(sQLiteDatabase, ROR.this.cJ);
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.cJ(th.getMessage());
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i > i2) {
                try {
                    CJ(sQLiteDatabase);
                } catch (Throwable unused) {
                }
            }
            Qhi(sQLiteDatabase, ROR.this.cJ);
            switch (i) {
                case 1:
                    cJ(sQLiteDatabase);
                    break;
                case 2:
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                    cJ(sQLiteDatabase);
                    break;
                case 3:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.pA.Qhi());
                    cJ(sQLiteDatabase);
                    break;
                case 4:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.ac());
                    cJ(sQLiteDatabase);
                    break;
                case 5:
                    sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.iMK.Qhi());
                    cJ(sQLiteDatabase);
                    break;
                case 6:
                    cJ(sQLiteDatabase);
                    break;
            }
            if (i < 12) {
                try {
                    ac(sQLiteDatabase);
                    Qhi(sQLiteDatabase);
                }
            }
        }

        private void Qhi(SQLiteDatabase sQLiteDatabase) {
            if (Qhi(sQLiteDatabase, "trackurl", "ad_id") || Qhi(sQLiteDatabase, "trackurl", "error_code") || Qhi(sQLiteDatabase, "trackurl", "error_msg") || Qhi(sQLiteDatabase, "trackurl", "url_type")) {
                return;
            }
            com.bytedance.sdk.openadsdk.MQ.cJ.Qhi(sQLiteDatabase);
        }

        private void cJ(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.fl.cJ());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.WAv.CJ());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.pA.cJ());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.cJ.iMK.cJ());
        }

        private void ac(SQLiteDatabase sQLiteDatabase) {
            if (Qhi(sQLiteDatabase, "ugen_template", "rit")) {
                return;
            }
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.ugen.Qhi.ac.CJ());
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
            if (r1.isClosed() == false) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean Qhi(android.database.sqlite.SQLiteDatabase r5, java.lang.String r6, java.lang.String r7) {
            /*
                r4 = this;
                r0 = 0
                r1 = 0
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
                java.lang.String r3 = "SELECT * FROM "
                r2.<init>(r3)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
                java.lang.StringBuilder r6 = r2.append(r6)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
                java.lang.String r2 = " LIMIT 0"
                java.lang.StringBuilder r6 = r6.append(r2)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
                android.database.Cursor r1 = r5.rawQuery(r6, r1)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
                if (r1 == 0) goto L26
                int r5 = r1.getColumnIndex(r7)     // Catch: java.lang.Throwable -> L32 java.lang.Exception -> L34
                r6 = -1
                if (r5 == r6) goto L26
                r5 = 1
                r0 = r5
            L26:
                if (r1 == 0) goto L56
                boolean r5 = r1.isClosed()
                if (r5 != 0) goto L56
            L2e:
                r1.close()
                goto L56
            L32:
                r5 = move-exception
                goto L57
            L34:
                r5 = move-exception
                java.lang.String r6 = "DBHelper"
                java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32
                java.lang.String r2 = "checkColumnExists1..."
                r7.<init>(r2)     // Catch: java.lang.Throwable -> L32
                java.lang.String r5 = r5.getMessage()     // Catch: java.lang.Throwable -> L32
                java.lang.StringBuilder r5 = r7.append(r5)     // Catch: java.lang.Throwable -> L32
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L32
                com.bytedance.sdk.component.utils.ABk.Qhi(r6, r5)     // Catch: java.lang.Throwable -> L32
                if (r1 == 0) goto L56
                boolean r5 = r1.isClosed()
                if (r5 != 0) goto L56
                goto L2e
            L56:
                return r0
            L57:
                if (r1 == 0) goto L62
                boolean r6 = r1.isClosed()
                if (r6 != 0) goto L62
                r1.close()
            L62:
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi(android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String):boolean");
        }

        private void CJ(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> fl = fl(sQLiteDatabase);
            if (fl == null || fl.size() <= 0) {
                return;
            }
            Iterator<String> it = fl.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002d, code lost:
            if (r1 != null) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
            if (r1 != null) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
            r1.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
            return r0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.ArrayList<java.lang.String> fl(android.database.sqlite.SQLiteDatabase r4) {
            /*
                r3 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r1 = 0
                java.lang.String r2 = "select name from sqlite_master where type='table' order by name"
                android.database.Cursor r1 = r4.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                if (r1 == 0) goto L2d
            Le:
                boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                if (r4 == 0) goto L2d
                r4 = 0
                java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                java.lang.String r2 = "android_metadata"
                boolean r2 = r4.equals(r2)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                if (r2 != 0) goto Le
                java.lang.String r2 = "sqlite_sequence"
                boolean r2 = r4.equals(r2)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                if (r2 != 0) goto Le
                r0.add(r4)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                goto Le
            L2d:
                if (r1 == 0) goto L3c
                goto L39
            L30:
                r4 = move-exception
                if (r1 == 0) goto L36
                r1.close()
            L36:
                throw r4
            L37:
                if (r1 == 0) goto L3c
            L39:
                r1.close()
            L3c:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ROR.Qhi.fl(android.database.sqlite.SQLiteDatabase):java.util.ArrayList");
        }
    }

    public ac Qhi() {
        return this.Qhi;
    }

    /* compiled from: DBHelper.java */
    /* loaded from: classes2.dex */
    private class cJ extends AbstractCursor {
        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i) {
            return true;
        }

        private cJ() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }
    }
}
