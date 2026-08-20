package com.applovin.exoplayer2.k;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3707a = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3708b = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static long a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = f3708b.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) com.applovin.exoplayer2.l.a.b(matcher.group(1)));
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(java.lang.String r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "Inconsistent headers ["
            boolean r1 = android.text.TextUtils.isEmpty(r10)
            java.lang.String r2 = "]"
            java.lang.String r3 = "HttpUtil"
            if (r1 != 0) goto L27
            long r4 = java.lang.Long.parseLong(r10)     // Catch: java.lang.NumberFormatException -> L11
            goto L29
        L11:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r4 = "Unexpected Content-Length ["
            r1.<init>(r4)
            java.lang.StringBuilder r1 = r1.append(r10)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.applovin.exoplayer2.l.q.d(r3, r1)
        L27:
            r4 = -1
        L29:
            boolean r1 = android.text.TextUtils.isEmpty(r11)
            if (r1 != 0) goto La3
            java.util.regex.Pattern r1 = com.applovin.exoplayer2.k.u.f3707a
            java.util.regex.Matcher r1 = r1.matcher(r11)
            boolean r6 = r1.matches()
            if (r6 == 0) goto La3
            r6 = 2
            java.lang.String r6 = r1.group(r6)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.Object r6 = com.applovin.exoplayer2.l.a.b(r6)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.NumberFormatException -> L8d
            long r6 = java.lang.Long.parseLong(r6)     // Catch: java.lang.NumberFormatException -> L8d
            r8 = 1
            java.lang.String r1 = r1.group(r8)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.Object r1 = com.applovin.exoplayer2.l.a.b(r1)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.NumberFormatException -> L8d
            long r8 = java.lang.Long.parseLong(r1)     // Catch: java.lang.NumberFormatException -> L8d
            long r6 = r6 - r8
            r8 = 1
            long r6 = r6 + r8
            r8 = 0
            int r1 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r1 >= 0) goto L65
            r4 = r6
            goto La3
        L65:
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 == 0) goto La3
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L8d
            r1.<init>(r0)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.StringBuilder r10 = r1.append(r10)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.String r0 = "] ["
            java.lang.StringBuilder r10 = r10.append(r0)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.StringBuilder r10 = r10.append(r11)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.StringBuilder r10 = r10.append(r2)     // Catch: java.lang.NumberFormatException -> L8d
            java.lang.String r10 = r10.toString()     // Catch: java.lang.NumberFormatException -> L8d
            com.applovin.exoplayer2.l.q.c(r3, r10)     // Catch: java.lang.NumberFormatException -> L8d
            long r10 = java.lang.Math.max(r4, r6)     // Catch: java.lang.NumberFormatException -> L8d
            r4 = r10
            goto La3
        L8d:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r0 = "Unexpected Content-Range ["
            r10.<init>(r0)
            java.lang.StringBuilder r10 = r10.append(r11)
            java.lang.StringBuilder r10 = r10.append(r2)
            java.lang.String r10 = r10.toString()
            com.applovin.exoplayer2.l.q.d(r3, r10)
        La3:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.k.u.a(java.lang.String, java.lang.String):long");
    }

    public static String a(long j, long j2) {
        if (j == 0 && j2 == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder("bytes=");
        sb.append(j);
        sb.append("-");
        if (j2 != -1) {
            sb.append((j + j2) - 1);
        }
        return sb.toString();
    }
}
