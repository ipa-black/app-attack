package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public abstract class J7 {

    /* renamed from: a  reason: collision with root package name */
    private final O7 f13247a;

    /* renamed from: b  reason: collision with root package name */
    private final C1406a8 f13248b;

    /* renamed from: f  reason: collision with root package name */
    private final ContentValues f13252f = new ContentValues();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicLong f13249c = new AtomicLong(d());

    /* renamed from: d  reason: collision with root package name */
    private final AtomicLong f13250d = new AtomicLong(a(Long.MAX_VALUE));

    /* renamed from: e  reason: collision with root package name */
    private final AtomicLong f13251e = new AtomicLong(a());

    /* JADX INFO: Access modifiers changed from: package-private */
    public J7(O7 o7, C1406a8 c1406a8) {
        this.f13247a = o7;
        this.f13248b = c1406a8;
    }

    private long d() {
        try {
            SQLiteDatabase readableDatabase = this.f13247a.getReadableDatabase();
            if (readableDatabase != null) {
                return C1422b.a(readableDatabase, e());
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    protected abstract long a();

    public synchronized void a(long j, String str) {
        try {
            SQLiteDatabase writableDatabase = this.f13247a.getWritableDatabase();
            if (writableDatabase != null) {
                this.f13252f.clear();
                this.f13252f.put("incremental_id", Long.valueOf(this.f13251e.get() + 1));
                this.f13252f.put("timestamp", Long.valueOf(j));
                this.f13252f.put("data", str);
                if (writableDatabase.insert(e(), null, this.f13252f) != -1) {
                    this.f13249c.incrementAndGet();
                    this.f13251e.incrementAndGet();
                    b(this.f13251e.get());
                    if (this.f13250d.get() > j) {
                        this.f13250d.set(j);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public long b() {
        return this.f13250d.get();
    }

    protected abstract void b(long j);

    public long c() {
        return this.f13249c.get();
    }

    public abstract String e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1406a8 f() {
        return this.f13248b;
    }

    public synchronized int b(int i) {
        int i2 = 0;
        if (i < 1) {
            return 0;
        }
        String format = String.format(Locale.US, "%1$s <= (select max(%1$s) from (select %1$s from %2$s order by %1$s limit ?))", "incremental_id", e());
        try {
            SQLiteDatabase writableDatabase = this.f13247a.getWritableDatabase();
            if (writableDatabase != null && (i2 = writableDatabase.delete(e(), format, new String[]{String.valueOf(i)})) > 0) {
                this.f13249c.getAndAdd(-i2);
                this.f13250d.set(a(Long.MAX_VALUE));
            }
        } catch (Throwable unused) {
        }
        return i2;
    }

    public synchronized int c(long j) {
        int i;
        String format = String.format(Locale.US, "%s <= ?", "incremental_id");
        i = 0;
        try {
            SQLiteDatabase writableDatabase = this.f13247a.getWritableDatabase();
            if (writableDatabase != null && (i = writableDatabase.delete(e(), format, new String[]{String.valueOf(j)})) > 0) {
                this.f13249c.getAndAdd(-i);
                this.f13250d.set(a(Long.MAX_VALUE));
            }
        } catch (Throwable unused) {
        }
        return i;
    }

    public long a(long j) {
        String format = String.format(Locale.US, "Select min(%s) from %s", "timestamp", e());
        Cursor cursor = null;
        try {
            SQLiteDatabase readableDatabase = this.f13247a.getReadableDatabase();
            if (readableDatabase != null) {
                cursor = readableDatabase.rawQuery(format, null);
                if (cursor.moveToFirst()) {
                    long j2 = cursor.getLong(0);
                    if (j2 != 0) {
                        j = j2;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        A2.a(cursor);
        return j;
    }

    public synchronized Map<Long, String> a(int i) {
        LinkedHashMap linkedHashMap;
        linkedHashMap = new LinkedHashMap();
        Cursor cursor = null;
        try {
            SQLiteDatabase readableDatabase = this.f13247a.getReadableDatabase();
            if (readableDatabase != null) {
                cursor = readableDatabase.query(e(), new String[]{"incremental_id", "data"}, null, null, null, null, "incremental_id ASC", String.valueOf(i));
                while (cursor.moveToNext()) {
                    this.f13252f.clear();
                    try {
                        C1422b.a(cursor, this.f13252f);
                    } catch (Throwable unused) {
                    }
                    Long asLong = this.f13252f.getAsLong("incremental_id");
                    String asString = this.f13252f.getAsString("data");
                    if (asLong != null && asString != null) {
                        linkedHashMap.put(asLong, asString);
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        A2.a(cursor);
        return linkedHashMap;
    }
}
