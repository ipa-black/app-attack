package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
/* loaded from: classes5.dex */
public class X7 {

    /* renamed from: a  reason: collision with root package name */
    private final AbstractC1655k8 f14251a;

    /* renamed from: b  reason: collision with root package name */
    private final AbstractC1655k8 f14252b;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<AbstractC1655k8> f14253c;

    /* renamed from: d  reason: collision with root package name */
    private final Y7 f14254d;

    /* loaded from: classes5.dex */
    public static class b {
        public X7 a(String str, AbstractC1655k8 abstractC1655k8, AbstractC1655k8 abstractC1655k82, SparseArray<AbstractC1655k8> sparseArray, Y7 y7) {
            return new X7(str, abstractC1655k8, abstractC1655k82, sparseArray, y7);
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f14251a.a(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    public void b(SQLiteDatabase sQLiteDatabase) {
        try {
            Y7 y7 = this.f14254d;
            if (y7 == null || ((Z7) y7).a(sQLiteDatabase)) {
                return;
            }
            try {
                this.f14252b.a(sQLiteDatabase);
            } catch (Throwable unused) {
            }
            this.f14251a.a(sQLiteDatabase);
        } catch (Throwable unused2) {
        }
    }

    private X7(String str, AbstractC1655k8 abstractC1655k8, AbstractC1655k8 abstractC1655k82, SparseArray<AbstractC1655k8> sparseArray, Y7 y7) {
        this.f14251a = abstractC1655k8;
        this.f14252b = abstractC1655k82;
        this.f14253c = sparseArray;
        this.f14254d = y7;
    }

    public void a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i > i2) {
            try {
                this.f14252b.a(sQLiteDatabase);
            } catch (Throwable unused) {
            }
            try {
                this.f14251a.a(sQLiteDatabase);
            } catch (Throwable unused2) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.database.sqlite.SQLiteDatabase r3, int r4, int r5) {
        /*
            r2 = this;
            r0 = 1
            if (r5 <= r4) goto L18
            int r4 = r4 + r0
        L4:
            if (r4 > r5) goto L16
            android.util.SparseArray<com.yandex.metrica.impl.ob.k8> r1 = r2.f14253c     // Catch: java.lang.Throwable -> L18
            java.lang.Object r1 = r1.get(r4)     // Catch: java.lang.Throwable -> L18
            com.yandex.metrica.impl.ob.k8 r1 = (com.yandex.metrica.impl.ob.AbstractC1655k8) r1     // Catch: java.lang.Throwable -> L18
            if (r1 == 0) goto L13
            r1.a(r3)     // Catch: java.lang.Throwable -> L18
        L13:
            int r4 = r4 + 1
            goto L4
        L16:
            r4 = 0
            goto L19
        L18:
            r4 = r0
        L19:
            com.yandex.metrica.impl.ob.Y7 r5 = r2.f14254d
            com.yandex.metrica.impl.ob.Z7 r5 = (com.yandex.metrica.impl.ob.Z7) r5
            boolean r5 = r5.a(r3)
            r5 = r5 ^ r0
            r4 = r4 | r5
            if (r4 == 0) goto L2f
            com.yandex.metrica.impl.ob.k8 r4 = r2.f14252b
            r4.a(r3)     // Catch: java.lang.Throwable -> L2a
        L2a:
            com.yandex.metrica.impl.ob.k8 r4 = r2.f14251a
            r4.a(r3)     // Catch: java.lang.Throwable -> L2f
        L2f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.X7.b(android.database.sqlite.SQLiteDatabase, int, int):void");
    }
}
