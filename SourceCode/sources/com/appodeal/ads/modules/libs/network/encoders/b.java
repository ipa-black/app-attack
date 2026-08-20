package com.appodeal.ads.modules.libs.network.encoders;

import com.google.common.net.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class b implements d, c {

    /* renamed from: a  reason: collision with root package name */
    public static final b f7025a = new b();

    @Override // com.appodeal.ads.modules.libs.network.encoders.d
    public final Map<String, List<String>> a() {
        return MapsKt.mapOf(TuplesKt.to(HttpHeaders.ACCEPT_ENCODING, CollectionsKt.listOf("gzip")), TuplesKt.to("Content-Encoding", CollectionsKt.listOf("gzip")));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0062  */
    @Override // com.appodeal.ads.modules.libs.network.encoders.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] a(java.lang.String r6, byte[] r7) {
        /*
            r5 = this;
            java.lang.String r0 = "data"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "gzip"
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r6)
            if (r6 == 0) goto L66
            r6 = 0
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L4f
            r0.<init>()     // Catch: java.lang.Throwable -> L4f
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L4b
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L4b
            java.util.zip.GZIPInputStream r7 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L45
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L45
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> L40
        L21:
            int r2 = r7.read(r6)     // Catch: java.lang.Throwable -> L40
            r3 = -1
            if (r2 == r3) goto L2d
            r3 = 0
            r0.write(r6, r3, r2)     // Catch: java.lang.Throwable -> L40
            goto L21
        L2d:
            byte[] r6 = r0.toByteArray()     // Catch: java.lang.Throwable -> L40
            java.lang.String r2 = "{\n                osByte…ByteArray()\n            }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r2)     // Catch: java.lang.Throwable -> L40
            r0.close()
            r1.close()
            r7.close()
            return r6
        L40:
            r6 = move-exception
            r4 = r0
            r0 = r6
            r6 = r4
            goto L53
        L45:
            r7 = move-exception
            r4 = r7
            r7 = r6
            r6 = r0
            r0 = r4
            goto L53
        L4b:
            r7 = move-exception
            r1 = r6
            r6 = r0
            goto L51
        L4f:
            r7 = move-exception
            r1 = r6
        L51:
            r0 = r7
            r7 = r1
        L53:
            if (r6 != 0) goto L56
            goto L59
        L56:
            r6.close()
        L59:
            if (r1 != 0) goto L5c
            goto L5f
        L5c:
            r1.close()
        L5f:
            if (r7 != 0) goto L62
            goto L65
        L62:
            r7.close()
        L65:
            throw r0
        L66:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.modules.libs.network.encoders.b.a(java.lang.String, byte[]):byte[]");
    }

    @Override // com.appodeal.ads.modules.libs.network.encoders.d
    public final byte[] a(byte[] data) {
        GZIPOutputStream gZIPOutputStream;
        Intrinsics.checkNotNullParameter(data, "data");
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                try {
                    gZIPOutputStream.write(data);
                    gZIPOutputStream.close();
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    Intrinsics.checkNotNullExpressionValue(byteArray, "{\n            osBytes = …s.toByteArray()\n        }");
                    byteArrayOutputStream2.close();
                    return byteArray;
                } catch (Exception unused) {
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    if (gZIPOutputStream == null) {
                        return data;
                    }
                    gZIPOutputStream.close();
                    return data;
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    if (gZIPOutputStream != null) {
                        gZIPOutputStream.close();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                gZIPOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                gZIPOutputStream = null;
            }
        } catch (Exception unused3) {
            gZIPOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream = null;
        }
    }
}
