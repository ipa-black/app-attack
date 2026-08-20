package com.appnext.base.a.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import com.appnext.base.a.a.a;
import com.appnext.base.a.b.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class e<MODEL extends com.appnext.base.a.b.d> {
    private static final int eh = -1;
    private static final String ei = " DESC";

    protected abstract String[] at();

    protected abstract MODEL b(Cursor cursor);

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public enum a {
        Equals(" = ? "),
        GreaterThan(" >= ? "),
        LessThan(" <= ? ");
        
        private String mOperator;

        a(String str) {
            this.mOperator = str;
        }

        public final String au() {
            return this.mOperator;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static long a(String str, ContentValues contentValues) {
        try {
            long insert = com.appnext.base.a.a.a.ac().ad().insert(str, null, contentValues);
            com.appnext.base.a.a.a.ac().ae();
            return insert;
        } catch (SQLiteFullException e2) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.DatabaseOrDiskFull$53629b42, new Exception(e2.getMessage()));
            return -1L;
        } catch (Throwable th) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.Global$53629b42, th);
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static long b(String str, ContentValues contentValues) {
        try {
            long insertWithOnConflict = com.appnext.base.a.a.a.ac().ad().insertWithOnConflict(str, null, contentValues, 5);
            com.appnext.base.a.a.a.ac().ae();
            return insertWithOnConflict;
        } catch (SQLiteFullException e2) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.DatabaseOrDiskFull$53629b42, new Exception(e2.getMessage()));
            return -1L;
        } catch (Throwable th) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.Global$53629b42, th);
            return -1L;
        }
    }

    protected static long a(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues) {
        try {
            return sQLiteDatabase.insertWithOnConflict(str, null, contentValues, 5);
        } catch (SQLiteFullException e2) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.DatabaseOrDiskFull$53629b42, new Exception(e2.getMessage()));
            return -1L;
        } catch (Throwable th) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.Global$53629b42, th);
            return -1L;
        }
    }

    protected static long b(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues) {
        try {
            return sQLiteDatabase.insert(str, null, contentValues);
        } catch (SQLiteFullException e2) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.DatabaseOrDiskFull$53629b42, new Exception(e2.getMessage()));
            return -1L;
        } catch (Throwable th) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.Global$53629b42, th);
            return -1L;
        }
    }

    private static ContentValues b(JSONObject jSONObject) {
        try {
            ContentValues contentValues = new ContentValues();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                contentValues.put(next, jSONObject.getString(next));
            }
            return contentValues;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long a(String str, JSONObject jSONObject) {
        try {
            long insertWithOnConflict = com.appnext.base.a.a.a.ac().ad().insertWithOnConflict(str, null, b(jSONObject), 5);
            com.appnext.base.a.a.a.ac().ae();
            return insertWithOnConflict;
        } catch (SQLiteFullException e2) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.DatabaseOrDiskFull$53629b42, new Exception(e2.getMessage()));
            return -1L;
        } catch (Throwable th) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.Global$53629b42, th);
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        r3.endTransaction();
        com.appnext.base.a.a.a.ac().ae();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r3 == null) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r3 != null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(java.lang.String r7, org.json.JSONArray r8) {
        /*
            r6 = this;
            r0 = -1
            if (r8 == 0) goto L39
            int r2 = r8.length()     // Catch: java.lang.Throwable -> L35
            com.appnext.base.a.a.a r3 = com.appnext.base.a.a.a.ac()     // Catch: java.lang.Throwable -> L35
            android.database.sqlite.SQLiteDatabase r3 = r3.ad()     // Catch: java.lang.Throwable -> L35
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L36
            r4 = 0
        L14:
            if (r4 >= r2) goto L25
            org.json.JSONObject r5 = r8.getJSONObject(r4)     // Catch: java.lang.Throwable -> L36
            android.content.ContentValues r5 = b(r5)     // Catch: java.lang.Throwable -> L36
            long r0 = a(r3, r7, r5)     // Catch: java.lang.Throwable -> L36
            int r4 = r4 + 1
            goto L14
        L25:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L36
            if (r3 == 0) goto L39
        L2a:
            r3.endTransaction()
            com.appnext.base.a.a.a r7 = com.appnext.base.a.a.a.ac()
            r7.ae()
            goto L39
        L35:
            r3 = 0
        L36:
            if (r3 == 0) goto L39
            goto L2a
        L39:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.base.a.c.e.a(java.lang.String, org.json.JSONArray):long");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        r3.endTransaction();
        com.appnext.base.a.a.a.ac().ae();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r3 == null) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r3 != null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(java.lang.String r7, org.json.JSONArray r8) {
        /*
            r6 = this;
            r0 = -1
            if (r8 == 0) goto L39
            int r2 = r8.length()     // Catch: java.lang.Throwable -> L35
            com.appnext.base.a.a.a r3 = com.appnext.base.a.a.a.ac()     // Catch: java.lang.Throwable -> L35
            android.database.sqlite.SQLiteDatabase r3 = r3.ad()     // Catch: java.lang.Throwable -> L35
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L36
            r4 = 0
        L14:
            if (r4 >= r2) goto L25
            org.json.JSONObject r5 = r8.getJSONObject(r4)     // Catch: java.lang.Throwable -> L36
            android.content.ContentValues r5 = b(r5)     // Catch: java.lang.Throwable -> L36
            long r0 = b(r3, r7, r5)     // Catch: java.lang.Throwable -> L36
            int r4 = r4 + 1
            goto L14
        L25:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L36
            if (r3 == 0) goto L39
        L2a:
            r3.endTransaction()
            com.appnext.base.a.a.a r7 = com.appnext.base.a.a.a.ac()
            r7.ae()
            goto L39
        L35:
            r3 = 0
        L36:
            if (r3 == 0) goto L39
            goto L2a
        L39:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.base.a.c.e.b(java.lang.String, org.json.JSONArray):long");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void delete(String str) {
        a(str, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(String str, String[] strArr, String[] strArr2, List<a> list) {
        int i = 0;
        try {
            i = com.appnext.base.a.a.a.ac().ad().delete(str, strArr != null ? a(strArr, list) : null, strArr2);
            com.appnext.base.a.a.a.ac().ae();
            return i;
        } catch (SQLiteFullException e2) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.DatabaseOrDiskFull$53629b42, new Exception(e2.getMessage()));
            return i;
        } catch (Throwable th) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.Global$53629b42, new Exception(th.getMessage()));
            return i;
        }
    }

    protected static void e(String str, String str2) {
        try {
            com.appnext.base.a.a.a.ac().ad().delete(str, str2, null);
            com.appnext.base.a.a.a.ac().ae();
        } catch (SQLiteFullException e2) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.DatabaseOrDiskFull$53629b42, new Exception(e2.getMessage()));
        } catch (Throwable th) {
            com.appnext.base.a.a.a.ac();
            com.appnext.base.a.a.a.a(a.EnumC0091a.Global$53629b42, new Exception(th.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<MODEL> y(String str) {
        try {
            List<MODEL> e2 = e(com.appnext.base.a.a.a.ac().ad().query(str, at(), null, null, null, null, null));
            com.appnext.base.a.a.a.ac().ae();
            return e2;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<MODEL> a(String str, String[] strArr, String[] strArr2, String str2, List<a> list) {
        try {
            List<MODEL> e2 = e(com.appnext.base.a.a.a.ac().ad().query(str, at(), a(strArr, list), strArr2, null, null, str2));
            com.appnext.base.a.a.a.ac().ae();
            return e2;
        } catch (Throwable unused) {
            return null;
        }
    }

    protected static String z(String str) {
        return str + ei;
    }

    private List<MODEL> e(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        try {
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                arrayList.add(b(cursor));
                cursor.moveToNext();
            }
            cursor.close();
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    private static String a(String[] strArr, List<a> list) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    sb.append(" AND ");
                }
                sb.append(strArr[i]);
                sb.append(list.get(i).au());
            }
        } catch (Throwable unused) {
        }
        return sb.toString();
    }
}
