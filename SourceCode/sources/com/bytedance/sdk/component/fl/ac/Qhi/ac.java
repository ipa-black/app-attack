package com.bytedance.sdk.component.fl.ac.Qhi;

import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
/* compiled from: SoftLruCache.java */
/* loaded from: classes2.dex */
public class ac<K, V> {
    private int CJ;
    private final LinkedHashMap<K, SoftReference<V>> Qhi;
    private int ROR;
    private int Sf;
    private int Tgh;
    private int ac;
    private int cJ;
    private int fl;

    protected int cJ(K k, V v) {
        return 1;
    }

    protected V cJ(K k) {
        return null;
    }

    public ac(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.ac = i;
        this.Qhi = new LinkedHashMap<>(0, 0.75f, true);
    }

    public final V Qhi(K k) {
        V v;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            SoftReference<V> softReference = this.Qhi.get(k);
            if (softReference != null) {
                v = softReference.get();
                if (v != null) {
                    this.ROR++;
                    return v;
                }
                this.Qhi.remove(k);
            } else {
                v = null;
            }
            this.Sf++;
            V cJ = cJ(k);
            if (cJ == null) {
                return null;
            }
            synchronized (this) {
                this.fl++;
                SoftReference<V> put = this.Qhi.put(k, new SoftReference<>(cJ));
                if (put != null) {
                    v = put.get();
                }
                if (v != null) {
                    this.Qhi.put(k, put);
                } else {
                    this.cJ += ac(k, cJ);
                }
            }
            if (v != null) {
                return v;
            }
            Qhi(this.ac);
            return cJ;
        }
    }

    public final V Qhi(K k, V v) {
        V v2;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.CJ++;
            this.cJ += ac(k, v);
            SoftReference<V> put = this.Qhi.put(k, new SoftReference<>(v));
            if (put != null) {
                v2 = put.get();
                if (v2 != null) {
                    this.cJ -= ac(k, v2);
                }
            } else {
                v2 = null;
            }
        }
        Qhi(this.ac);
        return v2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
        android.util.Log.e("LruCache", "oom maybe occured, clear cache. size= " + r3.cJ + ", maxSize: " + r4);
        r3.cJ = 0;
        r3.Qhi.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007b, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qhi(int r4) {
        /*
            r3 = this;
        L0:
            monitor-enter(r3)
            int r0 = r3.cJ     // Catch: java.lang.Throwable -> L7c
            if (r0 < 0) goto L52
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r0 = r3.Qhi     // Catch: java.lang.Throwable -> L7c
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L12
            int r0 = r3.cJ     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L12
            goto L52
        L12:
            int r0 = r3.cJ     // Catch: java.lang.Throwable -> L7c
            if (r0 > r4) goto L18
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L7c
            return
        L18:
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r0 = r3.Qhi     // Catch: java.lang.Throwable -> L7c
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L7c
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L7c
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L7c
            if (r0 != 0) goto L2c
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L7c
            return
        L2c:
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L7c
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L7c
            java.lang.ref.SoftReference r0 = (java.lang.ref.SoftReference) r0     // Catch: java.lang.Throwable -> L7c
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r2 = r3.Qhi     // Catch: java.lang.Throwable -> L7c
            r2.remove(r1)     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L4a
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L7c
            int r2 = r3.cJ     // Catch: java.lang.Throwable -> L7c
            int r0 = r3.ac(r1, r0)     // Catch: java.lang.Throwable -> L7c
            int r2 = r2 - r0
            r3.cJ = r2     // Catch: java.lang.Throwable -> L7c
        L4a:
            int r0 = r3.Tgh     // Catch: java.lang.Throwable -> L7c
            int r0 = r0 + 1
            r3.Tgh = r0     // Catch: java.lang.Throwable -> L7c
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L7c
            goto L0
        L52:
            java.lang.String r0 = "LruCache"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = "oom maybe occured, clear cache. size= "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L7c
            int r2 = r3.cJ     // Catch: java.lang.Throwable -> L7c
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = ", maxSize: "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L7c
            java.lang.StringBuilder r4 = r1.append(r4)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L7c
            android.util.Log.e(r0, r4)     // Catch: java.lang.Throwable -> L7c
            r4 = 0
            r3.cJ = r4     // Catch: java.lang.Throwable -> L7c
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r4 = r3.Qhi     // Catch: java.lang.Throwable -> L7c
            r4.clear()     // Catch: java.lang.Throwable -> L7c
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L7c
            return
        L7c:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.fl.ac.Qhi.ac.Qhi(int):void");
    }

    private int ac(K k, V v) {
        int cJ = cJ(k, v);
        if (cJ >= 0) {
            return cJ;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public final synchronized String toString() {
        int i;
        int i2;
        i = this.ROR;
        i2 = this.Sf + i;
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.ac), Integer.valueOf(this.ROR), Integer.valueOf(this.Sf), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }
}
