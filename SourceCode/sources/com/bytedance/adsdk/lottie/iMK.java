package com.bytedance.adsdk.lottie;

import java.util.LinkedHashMap;
import java.util.Locale;
/* compiled from: LruCache.java */
/* loaded from: classes2.dex */
public class iMK<K, V> {
    private int CJ;
    private final LinkedHashMap<K, V> Qhi;
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

    public iMK(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.ac = i;
        this.Qhi = new LinkedHashMap<>(0, 0.75f, true);
    }

    public final V Qhi(K k) {
        V put;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            V v = this.Qhi.get(k);
            if (v != null) {
                this.ROR++;
                return v;
            }
            this.Sf++;
            V cJ = cJ(k);
            if (cJ == null) {
                return null;
            }
            synchronized (this) {
                this.fl++;
                put = this.Qhi.put(k, cJ);
                if (put != null) {
                    this.Qhi.put(k, put);
                } else {
                    this.cJ += ac(k, cJ);
                }
            }
            if (put != null) {
                return put;
            }
            Qhi(this.ac);
            return cJ;
        }
    }

    public final V Qhi(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.CJ++;
            this.cJ += ac(k, v);
            put = this.Qhi.put(k, v);
            if (put != null) {
                this.cJ -= ac(k, put);
            }
        }
        Qhi(this.ac);
        return put;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006e, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
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
            int r0 = r3.cJ     // Catch: java.lang.Throwable -> L6f
            if (r0 < 0) goto L4e
            java.util.LinkedHashMap<K, V> r0 = r3.Qhi     // Catch: java.lang.Throwable -> L6f
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto L11
            int r0 = r3.cJ     // Catch: java.lang.Throwable -> L6f
            if (r0 != 0) goto L4e
        L11:
            int r0 = r3.cJ     // Catch: java.lang.Throwable -> L6f
            if (r0 <= r4) goto L4c
            java.util.LinkedHashMap<K, V> r0 = r3.Qhi     // Catch: java.lang.Throwable -> L6f
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto L1e
            goto L4c
        L1e:
            java.util.LinkedHashMap<K, V> r0 = r3.Qhi     // Catch: java.lang.Throwable -> L6f
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L6f
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L6f
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L6f
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L6f
            java.util.LinkedHashMap<K, V> r2 = r3.Qhi     // Catch: java.lang.Throwable -> L6f
            r2.remove(r1)     // Catch: java.lang.Throwable -> L6f
            int r2 = r3.cJ     // Catch: java.lang.Throwable -> L6f
            int r0 = r3.ac(r1, r0)     // Catch: java.lang.Throwable -> L6f
            int r2 = r2 - r0
            r3.cJ = r2     // Catch: java.lang.Throwable -> L6f
            int r0 = r3.Tgh     // Catch: java.lang.Throwable -> L6f
            int r0 = r0 + 1
            r3.Tgh = r0     // Catch: java.lang.Throwable -> L6f
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6f
            goto L0
        L4c:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L6f
            return
        L4e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L6f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6f
            r0.<init>()     // Catch: java.lang.Throwable -> L6f
            java.lang.Class r1 = r3.getClass()     // Catch: java.lang.Throwable -> L6f
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L6f
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L6f
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L6f
            throw r4     // Catch: java.lang.Throwable -> L6f
        L6f:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.lottie.iMK.Qhi(int):void");
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
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.ac), Integer.valueOf(this.ROR), Integer.valueOf(this.Sf), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }
}
