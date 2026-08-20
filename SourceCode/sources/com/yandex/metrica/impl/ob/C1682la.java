package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.Closeable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.la  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1682la implements S7, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f15066a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f15067b;

    /* renamed from: c  reason: collision with root package name */
    private final String f15068c;

    /* renamed from: d  reason: collision with root package name */
    private final a f15069d;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f15070e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC1556g8 f15071f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.la$a */
    /* loaded from: classes5.dex */
    public class a extends Lm {
        public a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            HashMap hashMap;
            synchronized (C1682la.this.f15066a) {
                C1682la.b(C1682la.this);
                C1682la.this.f15070e = true;
                C1682la.this.f15066a.notifyAll();
            }
            while (isRunning()) {
                synchronized (this) {
                    if (C1682la.this.f15067b.size() == 0) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                    hashMap = new HashMap(C1682la.this.f15067b);
                    C1682la.this.f15067b.clear();
                }
                if (hashMap.size() > 0) {
                    C1682la.a(C1682la.this, hashMap);
                    hashMap.clear();
                }
            }
        }
    }

    public C1682la(O7 o7, String str) {
        this(str, new C1606i8(o7));
    }

    static void a(C1682la c1682la, Map map) {
        SQLiteDatabase sQLiteDatabase;
        c1682la.getClass();
        int size = map.size();
        ContentValues[] contentValuesArr = new ContentValues[size];
        int i = 0;
        for (Map.Entry entry : map.entrySet()) {
            ContentValues contentValues = new ContentValues();
            Object value = entry.getValue();
            contentValues.put("key", (String) entry.getKey());
            if (value == c1682la) {
                contentValues.putNull("value");
            } else if (value instanceof String) {
                contentValues.put("value", (String) value);
                contentValues.put(SessionDescription.ATTR_TYPE, (Integer) 4);
            } else if (value instanceof Long) {
                contentValues.put("value", (Long) value);
                contentValues.put(SessionDescription.ATTR_TYPE, (Integer) 3);
            } else if (value instanceof Integer) {
                contentValues.put("value", (Integer) value);
                contentValues.put(SessionDescription.ATTR_TYPE, (Integer) 2);
            } else if (value instanceof Boolean) {
                contentValues.put("value", String.valueOf(((Boolean) value).booleanValue()));
                contentValues.put(SessionDescription.ATTR_TYPE, (Integer) 1);
            } else if (value instanceof Float) {
                contentValues.put("value", (Float) value);
                contentValues.put(SessionDescription.ATTR_TYPE, (Integer) 5);
            }
            contentValuesArr[i] = contentValues;
            i++;
        }
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = c1682la.f15071f.a();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.beginTransaction();
                    for (int i2 = 0; i2 < size; i2++) {
                        ContentValues contentValues2 = contentValuesArr[i2];
                        if (contentValues2.getAsString("value") == null) {
                            sQLiteDatabase.delete(c1682la.f15068c, "key = ?", new String[]{contentValues2.getAsString("key")});
                        } else {
                            sQLiteDatabase.insertWithOnConflict(c1682la.f15068c, null, contentValues2, 5);
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Throwable unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    sQLiteDatabase = sQLiteDatabase2;
                    A2.a(sQLiteDatabase);
                    c1682la.f15071f.a(sQLiteDatabase);
                }
            }
        } catch (Throwable unused2) {
        }
        A2.a(sQLiteDatabase);
        c1682la.f15071f.a(sQLiteDatabase);
    }

    static void b(C1682la c1682la) {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        Object obj;
        c1682la.getClass();
        try {
            sQLiteDatabase = c1682la.f15071f.a();
        } catch (Throwable unused) {
            cursor = null;
            sQLiteDatabase = null;
        }
        if (sQLiteDatabase != null) {
            try {
                Cursor query = sQLiteDatabase.query(c1682la.f15068c, new String[]{"key", "value", SessionDescription.ATTR_TYPE}, null, null, null, null, null);
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(query.getColumnIndexOrThrow("key"));
                        String string2 = query.getString(query.getColumnIndexOrThrow("value"));
                        int i = query.getInt(query.getColumnIndexOrThrow(SessionDescription.ATTR_TYPE));
                        if (!TextUtils.isEmpty(string)) {
                            if (i != 1) {
                                if (i == 2) {
                                    obj = Integer.valueOf(Integer.parseInt(string2));
                                } else if (i != 3) {
                                    obj = string2;
                                    if (i != 4) {
                                        if (i == 5) {
                                            try {
                                                obj = Float.valueOf(Float.parseFloat(string2));
                                            } catch (NumberFormatException unused2) {
                                            }
                                        }
                                        obj = null;
                                    }
                                } else {
                                    obj = Long.valueOf(Long.parseLong(string2));
                                }
                            } else if ("true".equals(string2)) {
                                obj = Boolean.TRUE;
                            } else {
                                if ("false".equals(string2)) {
                                    obj = Boolean.FALSE;
                                }
                                obj = null;
                            }
                            if (obj != null) {
                                c1682la.f15066a.put(string, obj);
                            }
                        }
                    } catch (Throwable unused3) {
                    }
                }
                cursor = query;
            } catch (Throwable unused4) {
            }
            A2.a(cursor);
            c1682la.f15071f.a(sQLiteDatabase);
        }
        cursor = null;
        A2.a(cursor);
        c1682la.f15071f.a(sQLiteDatabase);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f15069d.isRunning()) {
            this.f15069d.stopRunning();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C1682la(String str, InterfaceC1556g8 interfaceC1556g8) {
        this.f15066a = new HashMap();
        this.f15067b = new HashMap();
        this.f15071f = interfaceC1556g8;
        this.f15068c = str;
        a aVar = new a(String.format(Locale.US, "YMM-DW-%s", Integer.valueOf(Mm.c())));
        this.f15069d = aVar;
        aVar.start();
    }

    private Object c(String str) {
        Object obj;
        synchronized (this.f15066a) {
            c();
            obj = this.f15066a.get(str);
        }
        return obj;
    }

    private void c() {
        if (this.f15070e) {
            return;
        }
        try {
            this.f15066a.wait();
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public void b() {
        synchronized (this.f15069d) {
            this.f15069d.notifyAll();
        }
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public String b(String str, String str2) {
        Object c2 = c(str);
        return c2 instanceof String ? (String) c2 : str2;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public boolean b(String str, boolean z) {
        Object c2 = c(str);
        return c2 instanceof Boolean ? ((Boolean) c2).booleanValue() : z;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str) {
        synchronized (this.f15066a) {
            c();
            this.f15066a.remove(str);
        }
        synchronized (this.f15069d) {
            this.f15067b.put(str, this);
            this.f15069d.notifyAll();
        }
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str, long j) {
        a(str, Long.valueOf(j));
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public synchronized S7 b(String str, int i) {
        a(str, Integer.valueOf(i));
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public int a(String str, int i) {
        Object c2 = c(str);
        return c2 instanceof Integer ? ((Integer) c2).intValue() : i;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public long a(String str, long j) {
        Object c2 = c(str);
        return c2 instanceof Long ? ((Long) c2).longValue() : j;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public synchronized S7 a(String str, String str2) {
        a(str, (Object) str2);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 a(String str, boolean z) {
        a(str, Boolean.valueOf(z));
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public boolean a(String str) {
        boolean containsKey;
        synchronized (this.f15066a) {
            c();
            containsKey = this.f15066a.containsKey(str);
        }
        return containsKey;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public Set<String> a() {
        HashSet hashSet;
        synchronized (this.f15066a) {
            hashSet = new HashSet(this.f15066a.keySet());
        }
        return hashSet;
    }

    void a(String str, Object obj) {
        synchronized (this.f15066a) {
            c();
            this.f15066a.put(str, obj);
        }
        synchronized (this.f15069d) {
            this.f15067b.put(str, obj);
            this.f15069d.notifyAll();
        }
    }
}
