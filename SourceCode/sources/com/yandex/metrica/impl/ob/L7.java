package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.C1630j8;
import com.yandex.metrica.impl.ob.C1770on;
import com.yandex.metrica.impl.ob.C1842s;
import com.yandex.metrica.impl.ob.C1909ui;
import com.yandex.metrica.impl.ob.K7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes5.dex */
public class L7 {
    private static final HashSet<Integer> o;

    /* renamed from: a  reason: collision with root package name */
    private final ReentrantReadWriteLock f13405a;

    /* renamed from: b  reason: collision with root package name */
    private final Lock f13406b;

    /* renamed from: c  reason: collision with root package name */
    private final Lock f13407c;

    /* renamed from: d  reason: collision with root package name */
    private final O7 f13408d;

    /* renamed from: e  reason: collision with root package name */
    private final a f13409e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f13410f;

    /* renamed from: g  reason: collision with root package name */
    private final List<ContentValues> f13411g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f13412h;
    private final L3 i;
    private final AtomicLong j;
    private final List<InterfaceC1733nb> k;
    private final K7 l;
    private volatile qn<C1909ui.b, Object> m;
    private final rn<C1909ui.b, Object> n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class a extends Lm {

        /* renamed from: b  reason: collision with root package name */
        private final L3 f13413b;

        a(L3 l3) {
            this.f13413b = l3;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            while (isRunning()) {
                try {
                } catch (Throwable unused) {
                    stopRunning();
                }
                synchronized (this) {
                    if (L7.a(L7.this)) {
                        wait();
                    }
                    synchronized (L7.this.f13410f) {
                        arrayList = new ArrayList(L7.this.f13411g);
                        L7.this.f13411g.clear();
                    }
                    L7.this.a(arrayList);
                    synchronized (this) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(Integer.valueOf(L7.this.a((ContentValues) it.next())));
                        }
                        for (InterfaceC1733nb interfaceC1733nb : L7.this.k) {
                            interfaceC1733nb.a(arrayList2);
                        }
                        this.f13413b.l().c();
                    }
                }
            }
        }
    }

    static {
        HashSet<Integer> hashSet = new HashSet<>();
        o = hashSet;
        hashSet.add(Integer.valueOf(EnumC1399a1.EVENT_TYPE_INIT.b()));
        hashSet.add(Integer.valueOf(EnumC1399a1.EVENT_TYPE_START.b()));
    }

    public L7(L3 l3, O7 o7, K7 k7) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f13405a = reentrantReadWriteLock;
        this.f13406b = reentrantReadWriteLock.readLock();
        this.f13407c = reentrantReadWriteLock.writeLock();
        this.f13410f = new Object();
        this.f13411g = new ArrayList(3);
        AtomicLong atomicLong = new AtomicLong();
        this.j = atomicLong;
        this.k = new ArrayList();
        this.n = new rn<>();
        this.f13408d = o7;
        this.f13412h = l3.g();
        this.i = l3;
        this.l = k7;
        atomicLong.set(d());
        a aVar = new a(l3);
        this.f13409e = aVar;
        aVar.setName(a(l3));
        a(l3.w());
    }

    public void e() {
        this.f13409e.start();
    }

    private void a(C1790pi c1790pi) {
        Object ynVar;
        Object ynVar2;
        C1909ui.a aVar = null;
        C1909ui.a aVar2 = (!c1790pi.f().o || c1790pi.Q() == null) ? null : c1790pi.Q().f15858b;
        if (c1790pi.f().o && c1790pi.Q() != null) {
            aVar = c1790pi.Q().f15857a;
        }
        EnumMap enumMap = new EnumMap(C1909ui.b.class);
        C1909ui.b bVar = C1909ui.b.WIFI;
        if (aVar2 == null) {
            ynVar = new sn();
        } else {
            ynVar = new yn(new xn(new Bn(), new Cn()), new SystemTimeProvider(), aVar2.f15859a, aVar2.f15860b);
        }
        enumMap.put((EnumMap) bVar, (C1909ui.b) ynVar);
        C1909ui.b bVar2 = C1909ui.b.CELL;
        if (aVar == null) {
            ynVar2 = new sn();
        } else {
            ynVar2 = new yn(new xn(new C1770on.a(), new pn()), new SystemTimeProvider(), aVar.f15859a, aVar.f15860b);
        }
        enumMap.put((EnumMap) bVar2, (C1909ui.b) ynVar2);
        this.m = new qn<>(enumMap);
    }

    private long d() {
        long j;
        SQLiteDatabase readableDatabase;
        this.f13406b.lock();
        try {
            readableDatabase = this.f13408d.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            j = C1422b.a(readableDatabase, "reports");
            this.f13406b.unlock();
            return j;
        }
        j = 0;
        this.f13406b.unlock();
        return j;
    }

    public Cursor b(long j, EnumC1529f6 enumC1529f6) throws SQLiteException {
        Cursor cursor;
        SQLiteDatabase readableDatabase;
        this.f13406b.lock();
        try {
            readableDatabase = this.f13408d.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            cursor = readableDatabase.query("reports", null, "session_id = ? AND session_type = ?", new String[]{Long.toString(j), Integer.toString(enumC1529f6.a())}, null, null, "number ASC", null);
            this.f13406b.unlock();
            return cursor;
        }
        cursor = null;
        this.f13406b.unlock();
        return cursor;
    }

    public long c() {
        this.f13406b.lock();
        try {
            return this.j.get();
        } finally {
            this.f13406b.unlock();
        }
    }

    public List<ContentValues> b() {
        ArrayList arrayList = new ArrayList();
        this.f13406b.lock();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase readableDatabase = this.f13408d.getReadableDatabase();
                if (readableDatabase != null) {
                    cursor = readableDatabase.rawQuery(C1630j8.e.f14986c, null);
                    while (cursor.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
                        arrayList.add(contentValues);
                    }
                }
            } finally {
                A2.a(cursor);
                this.f13406b.unlock();
            }
        } catch (Throwable unused) {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    public long a(Set<Integer> set) {
        this.f13406b.lock();
        Cursor cursor = null;
        long j = 0;
        try {
            SQLiteDatabase readableDatabase = this.f13408d.getReadableDatabase();
            if (readableDatabase != null) {
                StringBuilder sb = new StringBuilder("SELECT count() FROM reports");
                if (!set.isEmpty()) {
                    sb.append(" WHERE ");
                }
                int i = 0;
                for (Integer num : set) {
                    if (i > 0) {
                        sb.append(" OR ");
                    }
                    sb.append("type == " + num);
                    i++;
                }
                cursor = readableDatabase.rawQuery(sb.toString(), null);
                if (cursor.moveToFirst()) {
                    j = cursor.getLong(0);
                }
            }
        } catch (Throwable unused) {
        }
        A2.a(cursor);
        this.f13406b.unlock();
        return j;
    }

    public void b(C1790pi c1790pi) {
        a(c1790pi);
    }

    public void a(InterfaceC1733nb interfaceC1733nb) {
        this.k.add(interfaceC1733nb);
    }

    private static String a(P3 p3) {
        return "DatabaseWorker [" + ((L3) p3).e().c() + "]";
    }

    public void a(long j, EnumC1529f6 enumC1529f6, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(j));
        contentValues.put("start_time", Long.valueOf(j2));
        contentValues.put("server_time_offset", Long.valueOf(C1545fm.c().a()));
        contentValues.put("obtained_before_first_sync", Boolean.valueOf(C1545fm.c().e()));
        contentValues.put(SessionDescription.ATTR_TYPE, Integer.valueOf(enumC1529f6.a()));
        new C1598i0(this.f13412h).a(this.i.m()).a(contentValues).a();
        this.f13407c.lock();
        try {
            SQLiteDatabase writableDatabase = this.f13408d.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.insertOrThrow(Constants.SESSIONS, null, contentValues);
            }
        } catch (Throwable unused) {
        }
        this.f13407c.unlock();
    }

    public void a(Bm bm, int i, C1454c6 c1454c6, C1842s.a aVar, O3 o3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("number", Long.valueOf(c1454c6.a()));
        contentValues.put("global_number", Integer.valueOf(C2011z0.d(i) ? o3.a() : 0));
        contentValues.put("number_of_type", Integer.valueOf(o3.a(i)));
        contentValues.put("time", Long.valueOf(c1454c6.b()));
        contentValues.put("session_id", Long.valueOf(c1454c6.c()));
        contentValues.put("session_type", Integer.valueOf(c1454c6.d().a()));
        new C1598i0(this.f13412h).a(this.i.m()).a(contentValues).a(bm, aVar, o.contains(Integer.valueOf(i)) ? this.n : this.m);
        synchronized (this.f13410f) {
            this.f13411g.add(contentValues);
        }
        synchronized (this.f13409e) {
            this.f13409e.notifyAll();
        }
    }

    public int a(long j) {
        this.f13407c.lock();
        int i = 0;
        try {
            int i2 = C1630j8.f14971a;
            SQLiteDatabase writableDatabase = this.f13408d.getWritableDatabase();
            if (writableDatabase != null) {
                i = writableDatabase.delete(Constants.SESSIONS, C1630j8.e.f14987d, new String[]{String.valueOf(j)});
            }
        } catch (Throwable unused) {
        }
        this.f13407c.unlock();
        return i;
    }

    public void a() {
        SQLiteDatabase writableDatabase;
        try {
            this.f13407c.lock();
            if (this.j.get() > this.i.m().J() && (writableDatabase = this.f13408d.getWritableDatabase()) != null) {
                this.j.addAndGet(-a(writableDatabase));
            }
        } catch (Throwable unused) {
        }
        this.f13407c.unlock();
    }

    private int a(SQLiteDatabase sQLiteDatabase) {
        try {
            String format = String.format("%1$s IN (SELECT %1$s FROM %2$s ORDER BY CASE WHEN %3$s IN (%4$s) THEN 2 WHEN %3$s IN (%5$s) THEN 1 ELSE 0 END, %6$s LIMIT (SELECT count() FROM %2$s) / %7$s)", "id", "reports", SessionDescription.ATTR_TYPE, TextUtils.join(", ", C2011z0.i), TextUtils.join(", ", C2011z0.j), "id", 10);
            return this.l.a(sQLiteDatabase, "reports", format, K7.b.DB_OVERFLOW, this.i.e().a(), true).f13355b;
        } catch (Throwable th) {
            ((C1739nh) C1764oh.a()).reportError("deleteExcessiveReports exception", th);
            return 0;
        }
    }

    public void a(long j, int i, int i2, boolean z) throws SQLiteException {
        List<ContentValues> list;
        if (i2 <= 0) {
            return;
        }
        this.f13407c.lock();
        try {
            String format = String.format(Locale.US, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)", "session_id", Long.toString(j), "session_type", Integer.toString(i), "id", "reports", Integer.toString(i2 - 1));
            SQLiteDatabase writableDatabase = this.f13408d.getWritableDatabase();
            if (writableDatabase != null) {
                K7.a a2 = this.l.a(writableDatabase, "reports", format, K7.b.BAD_REQUEST, this.i.e().a(), z);
                if (a2.f13354a != null) {
                    ArrayList arrayList = new ArrayList();
                    for (ContentValues contentValues : a2.f13354a) {
                        arrayList.add(Integer.valueOf(a(contentValues)));
                    }
                    for (InterfaceC1733nb interfaceC1733nb : this.k) {
                        interfaceC1733nb.b(arrayList);
                    }
                }
                if (this.i.q().isEnabled() && (list = a2.f13354a) != null) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        a(list.get(i3), "Event removed from db");
                    }
                }
                this.j.addAndGet(-a2.f13355b);
            }
        } catch (Throwable unused) {
        }
        this.f13407c.unlock();
    }

    public Cursor a(Map<String, String> map) {
        Cursor cursor;
        SQLiteDatabase readableDatabase;
        this.f13406b.lock();
        try {
            readableDatabase = this.f13408d.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            cursor = readableDatabase.query(Constants.SESSIONS, null, a("id >= ?", map), a(new String[]{Long.toString(0L)}, map), null, null, "id ASC", null);
            this.f13406b.unlock();
            return cursor;
        }
        cursor = null;
        this.f13406b.unlock();
        return cursor;
    }

    void a(List<ContentValues> list) {
        SQLiteDatabase sQLiteDatabase;
        if (list.isEmpty()) {
            return;
        }
        this.f13407c.lock();
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = this.f13408d.getWritableDatabase();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.beginTransaction();
                    for (ContentValues contentValues : list) {
                        sQLiteDatabase.insertOrThrow("reports", null, contentValues);
                        this.j.incrementAndGet();
                        a(contentValues, "Event saved to db");
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    this.j.get();
                } catch (Throwable unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    sQLiteDatabase = sQLiteDatabase2;
                    A2.a(sQLiteDatabase);
                    this.f13407c.unlock();
                }
            }
        } catch (Throwable unused2) {
        }
        A2.a(sQLiteDatabase);
        this.f13407c.unlock();
    }

    public ContentValues a(long j, EnumC1529f6 enumC1529f6) {
        ContentValues contentValues = new ContentValues();
        this.f13406b.lock();
        Cursor cursor = null;
        try {
            SQLiteDatabase readableDatabase = this.f13408d.getReadableDatabase();
            if (readableDatabase != null) {
                cursor = readableDatabase.rawQuery(String.format(Locale.US, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1", Long.valueOf(j), Integer.valueOf(enumC1529f6.a())), null);
                if (cursor.moveToNext()) {
                    ContentValues contentValues2 = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(cursor, contentValues2);
                    contentValues = contentValues2;
                }
            }
            A2.a(cursor);
            this.f13406b.unlock();
        } catch (Throwable unused) {
            A2.a(cursor);
            this.f13406b.unlock();
        }
        return contentValues;
    }

    private static String a(String str, Map<String, String> map) {
        StringBuilder sb = new StringBuilder(str);
        for (String str2 : map.keySet()) {
            sb.append(sb.length() > 0 ? " AND " : "");
            sb.append(str2 + " = ? ");
        }
        if (TextUtils.isEmpty(sb.toString())) {
            return null;
        }
        return sb.toString();
    }

    private static String[] a(String[] strArr, Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(strArr));
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private void a(ContentValues contentValues, String str) {
        Integer asInteger = contentValues.getAsInteger(SessionDescription.ATTR_TYPE);
        if (C2011z0.c(asInteger != null ? asInteger.intValue() : -1)) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(": ");
            String asString = contentValues.getAsString("name");
            if (asString == null) {
                asString = "";
            }
            sb.append(asString);
            String asString2 = contentValues.getAsString("value");
            String str2 = asString2 != null ? asString2 : "";
            if (C2011z0.e(a(contentValues)) && !TextUtils.isEmpty(str2)) {
                sb.append(" with value ");
                sb.append(str2);
            }
            this.i.q().i(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(ContentValues contentValues) {
        return contentValues.getAsInteger(SessionDescription.ATTR_TYPE).intValue();
    }

    static boolean a(L7 l7) {
        boolean isEmpty;
        synchronized (l7.f13410f) {
            isEmpty = l7.f13411g.isEmpty();
        }
        return isEmpty;
    }
}
