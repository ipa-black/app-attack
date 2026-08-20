package com.adcolony.sdk;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.adcolony.sdk.e0;
import com.adcolony.sdk.n0;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
class n {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteDatabase f426a;

    /* renamed from: b  reason: collision with root package name */
    private final n0 f427b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(SQLiteDatabase sQLiteDatabase, n0 n0Var) {
        this.f426a = sQLiteDatabase;
        this.f427b = n0Var;
    }

    private void a(n0.a aVar, List<String> list) {
        a(aVar.f(), "manager_tmp_table");
        c(aVar);
        a("manager_tmp_table", aVar.f(), list);
        b("manager_tmp_table");
    }

    private void c(n0.c cVar, String str) {
        ArrayList<String[]> c2 = c(cVar.b());
        boolean z = true;
        if (cVar.a().length == c2.size()) {
            boolean z2 = false;
            for (int i = 0; i < cVar.a().length; i++) {
                if (!Objects.equals(cVar.a()[i], c2.get(i)[2])) {
                    z2 = true;
                }
            }
            z = z2;
        }
        if (z) {
            a(cVar.b());
            b(cVar, str);
        }
    }

    private void d(n0.a aVar) {
        List<n0.c> b2 = aVar.b();
        ArrayList<String> d2 = d(aVar.f());
        for (n0.c cVar : b2) {
            if (d2.contains(cVar.b())) {
                c(cVar, aVar.f());
            } else {
                b(cVar, aVar.f());
            }
            d2.remove(cVar.b());
        }
        Iterator<String> it = d2.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    private void e(n0.a aVar) {
        boolean z;
        boolean z2;
        ArrayList<a> g2 = g(aVar.f());
        ArrayList arrayList = new ArrayList();
        boolean z3 = false;
        for (n0.b bVar : aVar.a()) {
            int size = g2.size() - 1;
            while (true) {
                if (size < 0) {
                    z = false;
                    z2 = false;
                    break;
                }
                a aVar2 = g2.get(size);
                if (Objects.equals(aVar2.a(), bVar.b())) {
                    arrayList.add(bVar.b());
                    z = aVar2.a(bVar);
                    g2.remove(size);
                    z2 = true;
                    break;
                }
                size--;
            }
            if (!z2 || !z) {
                z3 = true;
            }
        }
        if (g2.size() > 0) {
            z3 = true;
        }
        if (z3) {
            a(aVar, arrayList);
            b(aVar);
            return;
        }
        d(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        int version = this.f426a.getVersion();
        this.f426a.beginTransaction();
        boolean z = false;
        try {
            try {
                List<n0.a> a2 = this.f427b.a();
                ArrayList<String> a3 = a();
                for (n0.a aVar : a2) {
                    if (a3.contains(aVar.f())) {
                        e(aVar);
                    } else {
                        c(aVar);
                        b(aVar);
                    }
                    a3.remove(aVar.f());
                }
                Iterator<String> it = a3.iterator();
                while (it.hasNext()) {
                    b(it.next());
                }
                this.f426a.setVersion(this.f427b.b());
                this.f426a.setTransactionSuccessful();
                z = true;
                new e0.a().a("Success upgrading database from ").a(version).a(" to ").a(this.f427b.b()).a(e0.f294e);
            } catch (SQLException e2) {
                new e0.a().a("Upgrading database from ").a(version).a(" to ").a(this.f427b.b()).a("caused: ").a(e2.toString()).a(e0.f296g);
            }
            return z;
        } finally {
            this.f426a.endTransaction();
        }
    }

    ArrayList<String> f(String str) {
        Cursor rawQuery = this.f426a.rawQuery("SELECT name FROM sqlite_master  WHERE type='" + str + "' ORDER BY name", null);
        ArrayList<String> arrayList = new ArrayList<>();
        if (rawQuery != null && rawQuery.moveToFirst()) {
            do {
                arrayList.add(rawQuery.getString(0));
            } while (rawQuery.moveToNext());
            rawQuery.close();
            return arrayList;
        }
        rawQuery.close();
        return arrayList;
    }

    ArrayList<a> g(String str) {
        ArrayList<a> arrayList = new ArrayList<>();
        Iterator<String[]> it = e("PRAGMA table_info(" + str + ")").iterator();
        while (it.hasNext()) {
            a a2 = a.a(it.next());
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f428a;

        /* renamed from: b  reason: collision with root package name */
        private final String f429b;

        /* renamed from: c  reason: collision with root package name */
        private final String f430c;

        private a(String[] strArr) {
            this.f428a = strArr[1];
            this.f429b = strArr[2];
            this.f430c = strArr[4];
        }

        static a a(String[] strArr) {
            if (strArr.length >= 5) {
                return new a(strArr);
            }
            return null;
        }

        boolean a(n0.b bVar) {
            return Objects.equals(this.f428a, bVar.b()) && Objects.equals(this.f429b, bVar.c()) && Objects.equals(this.f430c, bVar.a());
        }

        String a() {
            return this.f428a;
        }
    }

    private void a(String str) {
        this.f426a.execSQL("DROP INDEX " + str);
    }

    private String a(n0.a aVar) {
        String obj;
        StringBuilder sb = new StringBuilder("CREATE TABLE ");
        sb.append(aVar.f()).append(" (");
        for (int i = 0; i < aVar.a().size(); i++) {
            n0.b bVar = aVar.a().get(i);
            sb.append(bVar.b()).append(" ").append(bVar.c());
            if (bVar.a() != null) {
                if (bVar.a() instanceof Boolean) {
                    obj = ((Boolean) bVar.a()).booleanValue() ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0";
                } else if (bVar.a() instanceof String) {
                    obj = "'" + bVar.a() + "'";
                } else {
                    obj = bVar.a().toString();
                }
                sb.append(" DEFAULT ").append(obj);
            }
            if (i < aVar.a().size() - 1) {
                sb.append(", ");
            }
        }
        sb.append(")");
        return sb.toString();
    }

    ArrayList<String> d(String str) {
        ArrayList<String[]> e2 = e("PRAGMA index_list(" + str + ")");
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<String[]> it = e2.iterator();
        while (it.hasNext()) {
            String[] next = it.next();
            if (next.length >= 3) {
                arrayList.add(next[1]);
            }
        }
        return arrayList;
    }

    private void c(n0.a aVar) {
        this.f426a.execSQL(a(aVar));
    }

    ArrayList<String[]> c(String str) {
        return e("PRAGMA index_info(" + str + ")");
    }

    private String a(n0.c cVar, String str) {
        return "CREATE INDEX " + cVar.b() + " ON " + str + "(" + TextUtils.join(", ", cVar.a()) + ")";
    }

    private void a(String str, String str2) {
        this.f426a.execSQL("ALTER TABLE " + str + " RENAME TO " + str2);
    }

    private void a(String str, String str2, List<String> list) {
        String join = TextUtils.join(", ", list);
        this.f426a.execSQL("INSERT INTO " + str2 + " (" + join + ") SELECT " + join + " FROM " + str);
    }

    ArrayList<String[]> e(String str) {
        Cursor rawQuery = this.f426a.rawQuery(str, null);
        ArrayList<String[]> arrayList = new ArrayList<>();
        if (rawQuery != null && rawQuery.moveToFirst()) {
            do {
                int columnCount = rawQuery.getColumnCount();
                String[] strArr = new String[columnCount];
                for (int i = 0; i < columnCount; i++) {
                    strArr[i] = rawQuery.getString(i);
                }
                arrayList.add(strArr);
            } while (rawQuery.moveToNext());
            rawQuery.close();
            return arrayList;
        }
        rawQuery.close();
        return arrayList;
    }

    ArrayList<String> a() {
        ArrayList<String> f2 = f("table");
        for (int size = f2.size() - 1; size >= 0; size--) {
            String str = f2.get(size);
            if (str.startsWith("android_") || str.startsWith("sqlite_")) {
                f2.remove(size);
            }
        }
        return f2;
    }

    private void b(n0.a aVar) {
        for (n0.c cVar : aVar.b()) {
            b(cVar, aVar.f());
        }
    }

    private void b(n0.c cVar, String str) {
        this.f426a.execSQL(a(cVar, str));
    }

    private void b(String str) {
        this.f426a.execSQL("DROP TABLE " + str);
    }
}
