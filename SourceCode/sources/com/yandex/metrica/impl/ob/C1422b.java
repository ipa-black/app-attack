package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.io.FilesKt;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.b  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1422b {
    public static boolean a(Boolean bool) {
        return Boolean.TRUE.equals(bool);
    }

    public static boolean b(String str, String str2) {
        boolean equals;
        if (str == null && str2 == null) {
            equals = true;
        } else {
            equals = (str == null || str2 == null) ? false : str.equals(str2);
        }
        return !equals;
    }

    public static Integer c(String str) {
        if (str != null) {
            try {
                return Integer.valueOf(str);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    public static com.yandex.metrica.billing_interface.e d(String str) {
        if ("inapp".equals(str)) {
            return com.yandex.metrica.billing_interface.e.INAPP;
        }
        if ("subs".equals(str)) {
            return com.yandex.metrica.billing_interface.e.SUBS;
        }
        return com.yandex.metrica.billing_interface.e.UNKNOWN;
    }

    public static byte[] e(String str) {
        return str == null ? new byte[0] : str.getBytes();
    }

    public static String a(Context context) {
        return context.getPackageName() + "-crashpad_new_crash_socket";
    }

    public static byte[] b(String str) {
        if (str != null) {
            try {
                return str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME);
            } catch (Throwable unused) {
            }
        }
        return new byte[0];
    }

    public static SharedPreferences a(Context context, String str) {
        return context.getSharedPreferences(context.getPackageName() + str, 0);
    }

    public static boolean a(File file, File file2) {
        try {
            FilesKt.copyTo(file, file2, false, 8192);
            file.delete();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean a(Collection<?> collection, Collection<?> collection2) {
        HashSet hashSet;
        if (collection == null && collection2 == null) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        if (collection instanceof HashSet) {
            hashSet = (HashSet) collection;
            collection = collection2;
        } else if (collection2 instanceof HashSet) {
            hashSet = (HashSet) collection2;
        } else {
            HashSet hashSet2 = new HashSet(collection);
            collection = collection2;
            hashSet = hashSet2;
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!hashSet.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static void a(Cursor cursor, ContentValues contentValues) {
        String[] columnNames = cursor.getColumnNames();
        int length = columnNames.length;
        for (int i = 0; i < length; i++) {
            int type = cursor.getType(i);
            if (type == 0) {
                contentValues.put(columnNames[i], cursor.getString(i));
            } else if (type == 1) {
                contentValues.put(columnNames[i], Long.valueOf(cursor.getLong(i)));
            } else if (type == 2) {
                contentValues.put(columnNames[i], Double.valueOf(cursor.getDouble(i)));
            } else if (type == 3) {
                contentValues.put(columnNames[i], cursor.getString(i));
            } else if (type != 4) {
                contentValues.put(columnNames[i], cursor.getString(i));
            } else {
                contentValues.put(columnNames[i], cursor.getBlob(i));
            }
        }
    }

    public static long a() {
        return C1545fm.c().a();
    }

    public static String a(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : str;
    }

    public static List<Integer> a(int[] iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    public static void a(SharedPreferences sharedPreferences, String str, int i) {
        if (sharedPreferences == null || !sharedPreferences.contains(str)) {
            return;
        }
        try {
            sharedPreferences.edit().remove(str).putLong(str, sharedPreferences.getInt(str, i)).apply();
        } catch (ClassCastException unused) {
        }
    }

    public static long a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT count() FROM " + str, null);
            return cursor.moveToFirst() ? cursor.getLong(0) : 0L;
        } finally {
            A2.a(cursor);
        }
    }

    public static int[] a(List<Integer> list) {
        int[] iArr = new int[list.size()];
        int i = 0;
        for (Integer num : list) {
            iArr[i] = num.intValue();
            i++;
        }
        return iArr;
    }

    public static com.yandex.metrica.g a(String str) {
        com.yandex.metrica.g gVar = new com.yandex.metrica.g();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                gVar.b(jSONObject.optString("UserInfo.UserId", null));
                gVar.a(jSONObject.optString("UserInfo.Type", null));
                gVar.a(Tl.b(jSONObject.optJSONObject("UserInfo.Options")));
            } catch (Throwable unused) {
            }
        }
        return gVar;
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            sb.append("0123456789abcdef".charAt((b2 & 240) >> 4));
            sb.append("0123456789abcdef".charAt(b2 & 15));
        }
        return sb.toString();
    }
}
