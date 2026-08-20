package h;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends SQLiteOpenHelper {

    /* renamed from: h.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0364a {
        public static List<b.a> a(SQLiteOpenHelper sQLiteOpenHelper, Integer num) {
            return a(sQLiteOpenHelper, String.format("%s = ?", "is_reserved"), new String[]{"0"}, num != null ? String.valueOf(num) : null);
        }

        public static List<b.a> a(SQLiteOpenHelper sQLiteOpenHelper, String str, String[] strArr, String str2) {
            SQLiteDatabase sQLiteDatabase;
            Cursor cursor;
            SQLiteDatabase sQLiteDatabase2;
            Cursor cursor2;
            ArrayList arrayList = new ArrayList();
            try {
                sQLiteDatabase2 = sQLiteOpenHelper.getReadableDatabase();
                try {
                    cursor2 = sQLiteDatabase2.query("tracker_event", new String[]{"id", "timestamp", "context", "name", "dimensions", "metrics"}, str, strArr, null, null, String.format("%s DESC", "timestamp"), str2);
                    while (cursor2.moveToNext()) {
                        try {
                            try {
                                try {
                                    arrayList.add(new b.a(cursor2.getString(0), cursor2.getLong(1), cursor2.getString(2), cursor2.getString(3), new JSONObject(cursor2.getString(4)), new JSONObject(cursor2.getString(5))));
                                } catch (Throwable unused) {
                                }
                            } catch (Throwable unused2) {
                            }
                        } catch (Throwable unused3) {
                            cursor = cursor2;
                            sQLiteDatabase = sQLiteDatabase2;
                            sQLiteDatabase2 = sQLiteDatabase;
                            cursor2 = cursor;
                            a.a.a(cursor2);
                            a.a.a(sQLiteDatabase2);
                            return arrayList;
                        }
                    }
                } catch (Throwable unused4) {
                    sQLiteDatabase = sQLiteDatabase2;
                    cursor = null;
                    sQLiteDatabase2 = sQLiteDatabase;
                    cursor2 = cursor;
                    a.a.a(cursor2);
                    a.a.a(sQLiteDatabase2);
                    return arrayList;
                }
            } catch (Throwable unused5) {
                sQLiteDatabase = null;
            }
            a.a.a(cursor2);
            a.a.a(sQLiteDatabase2);
            return arrayList;
        }

        public static void a(SQLiteOpenHelper sQLiteOpenHelper) {
            a(sQLiteOpenHelper, false, null);
        }

        public static void a(SQLiteOpenHelper sQLiteOpenHelper, List<b.a> list) {
            SQLiteDatabase sQLiteDatabase;
            try {
                sQLiteDatabase = sQLiteOpenHelper.getWritableDatabase();
                try {
                    sQLiteDatabase.execSQL(String.format(Locale.ENGLISH, "DELETE FROM %s WHERE %s IN (%s)", "tracker_event", "id", TextUtils.join(",", a(list))));
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                sQLiteDatabase = null;
            }
            a.a.a(sQLiteDatabase);
        }

        public static void a(SQLiteOpenHelper sQLiteOpenHelper, boolean z, List<b.a> list) {
            SQLiteDatabase sQLiteDatabase;
            try {
                sQLiteDatabase = sQLiteOpenHelper.getWritableDatabase();
                try {
                    String format = String.format(Locale.ENGLISH, "UPDATE %s SET %s=%d", "tracker_event", "is_reserved", Integer.valueOf(z ? 1 : 0));
                    if (list != null && list.size() > 0) {
                        format = format + String.format(" WHERE %s IN (%s)", "id", TextUtils.join(",", a(list)));
                    }
                    sQLiteDatabase.execSQL(format);
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                sQLiteDatabase = null;
            }
            a.a.a(sQLiteDatabase);
        }

        public static boolean a(SQLiteOpenHelper sQLiteOpenHelper, b.a aVar) {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                SQLiteDatabase writableDatabase = sQLiteOpenHelper.getWritableDatabase();
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("id", aVar.c());
                    contentValues.put("timestamp", Long.valueOf(aVar.f()));
                    contentValues.put("context", aVar.a());
                    contentValues.put("name", aVar.e());
                    contentValues.put("dimensions", aVar.b().toString());
                    contentValues.put("metrics", aVar.d().toString());
                    writableDatabase.insert("tracker_event", null, contentValues);
                    a.a.a(writableDatabase);
                    return true;
                } catch (Throwable unused) {
                    sQLiteDatabase = writableDatabase;
                    a.a.a(sQLiteDatabase);
                    return false;
                }
            } catch (Throwable unused2) {
            }
        }

        public static String[] a(List<b.a> list) {
            String[] strArr = new String[list.size()];
            for (int i = 0; i < list.size(); i++) {
                strArr[i] = "'" + list.get(i).c() + '\'';
            }
            return strArr;
        }

        public static void b(SQLiteOpenHelper sQLiteOpenHelper, List<b.a> list) {
            a(sQLiteOpenHelper, false, list);
        }

        public static void c(SQLiteOpenHelper sQLiteOpenHelper, List<b.a> list) {
            a(sQLiteOpenHelper, true, list);
        }
    }

    public a(Context context) {
        super(context, "BMAnalytics.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE tracker_event (id TEXT,timestamp INTEGER,context TEXT,name TEXT,dimensions TEXT,metrics TEXT,is_reserved INTEGER DEFAULT 0)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS tracker_event");
        onCreate(sQLiteDatabase);
    }
}
