package com.pgl.ssdk;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.ZipFile;
/* compiled from: ApkUtils.java */
/* renamed from: com.pgl.ssdk.c  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1372c {

    /* compiled from: ApkUtils.java */
    /* renamed from: com.pgl.ssdk.c$a */
    /* loaded from: classes3.dex */
    public static class a extends C1385p {
        public a(long j, long j2, int i, long j3, ByteBuffer byteBuffer) {
            super(j, j2, i, j3, byteBuffer);
        }
    }

    public static void a(Runnable runnable) {
        Q c2 = M.a().c();
        if (c2 != null) {
            c2.post(runnable);
        }
    }

    public static a a(InterfaceC1383n interfaceC1383n) throws IOException, C1384o {
        C1381l<ByteBuffer, Long> a2 = AbstractC1382m.a(interfaceC1383n);
        if (a2 != null) {
            ByteBuffer a3 = a2.a();
            long longValue = a2.b().longValue();
            a3.order(ByteOrder.LITTLE_ENDIAN);
            long b2 = AbstractC1382m.b(a3);
            if (b2 <= longValue) {
                long c2 = AbstractC1382m.c(a3);
                long j = b2 + c2;
                if (j <= longValue) {
                    C1385p c1385p = new C1385p(b2, c2, AbstractC1382m.d(a3), longValue, a3);
                    return new a(c1385p.a(), c1385p.c(), c1385p.b(), c1385p.e(), c1385p.d());
                }
                throw new C1384o("ZIP Central Directory overlaps with End of Central Directory. CD end: " + j + ", EoCD start: " + longValue);
            }
            throw new C1384o("ZIP Central Directory start offset out of range: " + b2 + ". ZIP End of Central Directory offset: " + longValue);
        }
        throw new C1384o("ZIP End of Central Directory record not found");
    }

    public static C1373d a(InterfaceC1383n interfaceC1383n, C1385p c1385p) throws IOException, C1371b {
        long a2 = c1385p.a();
        long c2 = c1385p.c() + a2;
        long e2 = c1385p.e();
        if (c2 == e2) {
            if (a2 >= 32) {
                C1380k c1380k = (C1380k) interfaceC1383n;
                ByteBuffer a3 = c1380k.a(a2 - 24, 24);
                a3.order(ByteOrder.LITTLE_ENDIAN);
                if (a3.getLong(8) == 2334950737559900225L && a3.getLong(16) == 3617552046287187010L) {
                    long j = a3.getLong(0);
                    if (j < a3.capacity() || j > 2147483639) {
                        throw new C1371b("APK Signing Block size out of range: ".concat(String.valueOf(j)));
                    }
                    long j2 = (int) (8 + j);
                    long j3 = a2 - j2;
                    if (j3 >= 0) {
                        ByteBuffer a4 = c1380k.a(j3, 8);
                        a4.order(ByteOrder.LITTLE_ENDIAN);
                        long j4 = a4.getLong(0);
                        if (j4 == j) {
                            return new C1373d(j3, c1380k.a(j3, j2));
                        }
                        throw new C1371b("APK Signing Block sizes in header and footer do not match: " + j4 + " vs " + j);
                    }
                    throw new C1371b("APK Signing Block offset out of range: ".concat(String.valueOf(j3)));
                }
                throw new C1371b("No APK Signing Block before ZIP Central Directory");
            }
            throw new C1371b("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(a2)));
        }
        throw new C1371b("ZIP Central Directory is not immediately followed by End of Central Directory. CD end: " + c2 + ", EoCD start: " + e2);
    }

    public static void a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static void a(ZipFile zipFile) {
        if (zipFile == null) {
            return;
        }
        try {
            zipFile.close();
        } catch (IOException unused) {
        }
    }
}
