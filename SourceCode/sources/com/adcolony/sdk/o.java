package com.adcolony.sdk;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.adcolony.sdk.e0;
import com.adcolony.sdk.n0;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
class o {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0 f448a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SQLiteDatabase f449b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f450c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f451d;

        a(n0 n0Var, SQLiteDatabase sQLiteDatabase, b bVar, CountDownLatch countDownLatch) {
            this.f448a = n0Var;
            this.f449b = sQLiteDatabase;
            this.f450c = bVar;
            this.f451d = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (n0.a aVar : this.f448a.a()) {
                for (Map.Entry<String, String> entry : aVar.e().entrySet()) {
                    c a2 = o.a(entry.getValue(), this.f449b);
                    if (a2 != null) {
                        this.f450c.a(aVar.d(), entry.getKey(), a2);
                    }
                }
            }
            o0.c().a(this.f450c);
            this.f451d.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f452a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, ArrayList<a>> f453b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private final String f454a;

            /* renamed from: b  reason: collision with root package name */
            private final c f455b;

            /* synthetic */ a(String str, c cVar, a aVar) {
                this(str, cVar);
            }

            String a() {
                return this.f454a;
            }

            c b() {
                return this.f455b;
            }

            private a(String str, c cVar) {
                this.f454a = str;
                this.f455b = cVar;
            }
        }

        /* synthetic */ b(int i, a aVar) {
            this(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public f1 b() {
            f1 b2 = c0.b();
            c0.b(b2, MediationMetaData.KEY_VERSION, a());
            for (Map.Entry<String, ArrayList<a>> entry : this.f453b.entrySet()) {
                f1 b3 = c0.b();
                Iterator<a> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    a next = it.next();
                    e1 a2 = c0.a();
                    for (String str : next.b().a((Character) ',')) {
                        a2.b(str);
                    }
                    c0.a(b3, next.a(), a2);
                }
                c0.a(b2, entry.getKey(), b3);
            }
            return b2;
        }

        private b(int i) {
            this.f453b = new ConcurrentHashMap();
            this.f452a = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, String str2, c cVar) {
            ArrayList<a> arrayList;
            a aVar = new a(str2, cVar, null);
            if (this.f453b.containsKey(str) && (arrayList = this.f453b.get(str)) != null) {
                arrayList.add(aVar);
            } else {
                this.f453b.put(str, new ArrayList<>(Collections.singletonList(aVar)));
            }
        }

        int a() {
            return this.f452a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final List<a> f456a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<ContentValues> f457b = new ArrayList();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private final int f458a;

            /* renamed from: b  reason: collision with root package name */
            private final String f459b;

            /* renamed from: c  reason: collision with root package name */
            private final int f460c;

            /* synthetic */ a(int i, String str, int i2, a aVar) {
                this(i, str, i2);
            }

            int c() {
                return this.f460c;
            }

            private a(int i, String str, int i2) {
                this.f458a = i;
                this.f459b = str;
                this.f460c = i2;
            }

            int a() {
                return this.f458a;
            }

            String b() {
                return this.f459b;
            }
        }

        c() {
        }

        int b(int i) {
            if (i < 0 || i >= this.f456a.size()) {
                return -1;
            }
            return this.f456a.get(i).c();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (true) {
                String str = "\n";
                if (i >= this.f456a.size()) {
                    break;
                }
                sb.append(this.f456a.get(i).f459b);
                if (i != this.f456a.size() - 1) {
                    str = " | ";
                }
                sb.append(str);
                i++;
            }
            for (ContentValues contentValues : this.f457b) {
                int i2 = 0;
                while (i2 < this.f456a.size()) {
                    sb.append(contentValues.getAsString(a(i2)));
                    sb.append(i2 == this.f456a.size() + (-1) ? "\n" : " | ");
                    i2++;
                }
            }
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, String str, int i2) {
            this.f456a.add(new a(i, str, i2, null));
        }

        String a(int i) {
            if (i < 0 || i >= this.f456a.size()) {
                return null;
            }
            return this.f456a.get(i).b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Cursor cursor) {
            ContentValues contentValues = new ContentValues();
            for (a aVar : this.f456a) {
                int i = aVar.f460c;
                if (i == 1) {
                    contentValues.put(aVar.b(), Long.valueOf(cursor.getLong(aVar.a())));
                } else if (i == 2) {
                    contentValues.put(aVar.b(), Double.valueOf(cursor.getDouble(aVar.a())));
                } else if (i != 4) {
                    contentValues.put(aVar.b(), cursor.getString(aVar.a()));
                } else {
                    contentValues.put(aVar.b(), cursor.getBlob(aVar.a()));
                }
            }
            this.f457b.add(contentValues);
        }

        String a(int i, Character ch) {
            if (i < 0 || i >= this.f457b.size()) {
                return null;
            }
            ContentValues contentValues = this.f457b.get(i);
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            while (i2 < this.f456a.size()) {
                if (b(i2) == 3) {
                    sb.append("\"");
                    sb.append(contentValues.get(a(i2)));
                    sb.append("\"");
                } else {
                    sb.append(contentValues.getAsString(a(i2)));
                }
                sb.append(i2 == this.f456a.size() + (-1) ? "" : ch);
                i2++;
            }
            return sb.toString();
        }

        List<String> a(Character ch) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.f457b.size(); i++) {
                arrayList.add(a(i, ch));
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(n0 n0Var, SQLiteDatabase sQLiteDatabase, Executor executor, long j) {
        b bVar = new b(n0Var.b(), null);
        try {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            executor.execute(new a(n0Var, sQLiteDatabase, bVar, countDownLatch));
            if (j > 0) {
                countDownLatch.await(j, TimeUnit.MILLISECONDS);
            } else {
                countDownLatch.await();
            }
        } catch (InterruptedException | RejectedExecutionException e2) {
            new e0.a().a("ADCDbReader.calculateFeatureVectors failed with: " + e2.toString()).a(e0.i);
        }
        return bVar;
    }

    static c a(String str, SQLiteDatabase sQLiteDatabase) {
        c cVar;
        Throwable th;
        c cVar2 = null;
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery(str, null);
            if (rawQuery != null) {
                try {
                    if (rawQuery.moveToFirst()) {
                        cVar = new c();
                        for (int i = 0; i < rawQuery.getColumnCount(); i++) {
                            try {
                                cVar.a(i, rawQuery.getColumnName(i), rawQuery.getType(i));
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    rawQuery.close();
                                } catch (Throwable th3) {
                                    try {
                                        th.addSuppressed(th3);
                                    } catch (SQLException e2) {
                                        e = e2;
                                        new e0.a().a("SQLException on execute query: ").a(e.toString()).a(e0.i);
                                        return cVar;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        new e0.a().a("Error on execute query: ").a(th.toString()).a(e0.i);
                                        return cVar;
                                    }
                                }
                                throw th;
                            }
                        }
                        do {
                            cVar.a(rawQuery);
                        } while (rawQuery.moveToNext());
                        cVar2 = cVar;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    cVar = null;
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
                return cVar2;
            }
            return cVar2;
        } catch (SQLException e3) {
            e = e3;
            cVar = cVar2;
        } catch (Throwable th6) {
            th = th6;
            cVar = cVar2;
        }
    }
}
