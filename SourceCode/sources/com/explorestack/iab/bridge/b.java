package com.explorestack.iab.bridge;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.explorestack.iab.mraid.i;
import com.explorestack.iab.utils.Utils;
import com.google.android.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URLDecoder;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final com.explorestack.iab.utils.a f9267a = new com.explorestack.iab.utils.a();

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ boolean f9268b = true;

    public static Pair<String, String> a(String str) {
        String[] split = str.split("/");
        return new Pair<>(split[0], split[1]);
    }

    public static void a(i iVar) {
        if (iVar != null) {
            iVar.a("nativeStorage.fireErrorEvent('internal error');");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0071, code lost:
        if (r8 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
        throw new java.lang.AssertionError();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.explorestack.iab.mraid.i r7, java.lang.String r8) {
        /*
            r0 = 1
            java.lang.String[] r1 = new java.lang.String[r0]
            r2 = 0
            r1[r2] = r8
            boolean r1 = a(r7, r1)
            if (r1 == 0) goto Ld
            return
        Ld:
            com.explorestack.iab.utils.a r1 = com.explorestack.iab.bridge.b.f9267a     // Catch: java.lang.Throwable -> L88
            java.lang.String r3 = "UTF-8"
            java.lang.String r3 = java.net.URLDecoder.decode(r8, r3)     // Catch: java.lang.Throwable -> L88
            java.lang.String r1 = r1.a(r3)     // Catch: java.lang.Throwable -> L88
            android.util.Pair r1 = a(r1)     // Catch: java.lang.Throwable -> L88
            r3 = 2
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L88
            java.lang.Object r5 = r1.first     // Catch: java.lang.Throwable -> L88
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L88
            r4[r2] = r5     // Catch: java.lang.Throwable -> L88
            java.lang.Object r5 = r1.second     // Catch: java.lang.Throwable -> L88
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L88
            r4[r0] = r5     // Catch: java.lang.Throwable -> L88
            boolean r4 = a(r7, r4)     // Catch: java.lang.Throwable -> L88
            if (r4 == 0) goto L33
            return
        L33:
            boolean r4 = com.explorestack.iab.bridge.b.f9268b     // Catch: java.lang.Throwable -> L88
            if (r4 != 0) goto L40
            if (r7 == 0) goto L3a
            goto L40
        L3a:
            java.lang.AssertionError r8 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L88
            r8.<init>()     // Catch: java.lang.Throwable -> L88
            throw r8     // Catch: java.lang.Throwable -> L88
        L40:
            android.content.Context r5 = r7.getContext()     // Catch: java.lang.Throwable -> L88
            android.content.Context r5 = r5.getApplicationContext()     // Catch: java.lang.Throwable -> L88
            java.lang.Object r6 = r1.first     // Catch: java.lang.Throwable -> L88
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L88
            android.content.SharedPreferences r5 = r5.getSharedPreferences(r6, r2)     // Catch: java.lang.Throwable -> L88
            java.lang.Object r1 = r1.second     // Catch: java.lang.Throwable -> L88
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L88
            java.lang.String r6 = ""
            java.lang.String r1 = r5.getString(r1, r6)     // Catch: java.lang.Throwable -> L88
            java.lang.String[] r0 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L88
            r0[r2] = r1     // Catch: java.lang.Throwable -> L88
            boolean r0 = a(r7, r0)     // Catch: java.lang.Throwable -> L88
            if (r0 != 0) goto L8f
            if (r4 != 0) goto L6f
            if (r1 == 0) goto L69
            goto L6f
        L69:
            java.lang.AssertionError r8 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L88
            r8.<init>()     // Catch: java.lang.Throwable -> L88
            throw r8     // Catch: java.lang.Throwable -> L88
        L6f:
            if (r4 != 0) goto L7a
            if (r8 == 0) goto L74
            goto L7a
        L74:
            java.lang.AssertionError r8 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L88
            r8.<init>()     // Catch: java.lang.Throwable -> L88
            throw r8     // Catch: java.lang.Throwable -> L88
        L7a:
            java.lang.String r0 = "fireReadDefaultsSuccessEvent"
            byte[] r1 = r1.getBytes()     // Catch: java.lang.Throwable -> L88
            java.lang.String r1 = android.util.Base64.encodeToString(r1, r3)     // Catch: java.lang.Throwable -> L88
            a(r7, r0, r8, r1)     // Catch: java.lang.Throwable -> L88
            goto L8f
        L88:
            r8 = move-exception
            r8.printStackTrace()
            a(r7)
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.bridge.b.a(com.explorestack.iab.mraid.i, java.lang.String):void");
    }

    public static void a(i iVar, String str, String str2) {
        if (a(iVar, str, str2)) {
            return;
        }
        try {
            String a2 = f9267a.a(URLDecoder.decode(str, C.UTF8_NAME));
            byte[] decode = Base64.decode(URLDecoder.decode(str2, C.UTF8_NAME), 2);
            Pair<String, String> a3 = a(a2);
            if (a(iVar, (String) a3.first, (String) a3.second)) {
                return;
            }
            if (!f9268b && iVar == null) {
                throw new AssertionError();
            }
            iVar.getContext().getApplicationContext().getSharedPreferences((String) a3.first, 0).edit().putString((String) a3.second, new String(decode)).apply();
        } catch (Throwable th) {
            th.printStackTrace();
            a(iVar);
        }
    }

    public static void a(i iVar, String str, String str2, String str3) {
        if (iVar != null) {
            iVar.a(String.format("nativeStorage.%s(\"%s\", \"%s\");", str, str2, str3));
        }
    }

    public static boolean a(i iVar, String... strArr) {
        if (iVar == null || iVar.d() || iVar.getContext() == null) {
            a(iVar);
            return true;
        }
        if (strArr != null) {
            for (String str : strArr) {
                if (TextUtils.isEmpty(str)) {
                    a(iVar);
                    return true;
                }
            }
        }
        return false;
    }

    public static void b(i iVar, String str) {
        FileInputStream fileInputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        if (a(iVar, str)) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            String a2 = f9267a.a(URLDecoder.decode(str, C.UTF8_NAME));
            if (!f9268b && iVar == null) {
                throw new AssertionError();
            }
            Context applicationContext = iVar.getContext().getApplicationContext();
            File fileStreamPath = applicationContext.getFileStreamPath(a2);
            if (fileStreamPath != null && fileStreamPath.exists()) {
                fileInputStream = applicationContext.openFileInput(a2);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    byte[] bArr = new byte[8192];
                    if (fileInputStream != null) {
                        while (true) {
                            int read = fileInputStream.read(bArr);
                            if (-1 == read) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (byteArray.length > 0) {
                        if (!f9268b && str == null) {
                            throw new AssertionError();
                        }
                        a(iVar, "fireReadFileSuccessEvent", str, Base64.encodeToString(byteArray, 2));
                    } else {
                        a(iVar);
                    }
                    Utils.close(fileInputStream);
                    Utils.close(byteArrayOutputStream);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    try {
                        th.printStackTrace();
                        a(iVar);
                        return;
                    } finally {
                        Utils.close(fileInputStream);
                        Utils.close(byteArrayOutputStream2);
                    }
                }
            }
            a(iVar);
            Utils.close(null);
            Utils.close(null);
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static void b(i iVar, String str, String str2) {
        if (a(iVar, str, str2)) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            String a2 = f9267a.a(URLDecoder.decode(str, C.UTF8_NAME));
            byte[] decode = Base64.decode(URLDecoder.decode(str2, C.UTF8_NAME), 2);
            if (!a(iVar, a2, new String(decode))) {
                if (!f9268b && iVar == null) {
                    throw new AssertionError();
                }
                fileOutputStream = iVar.getContext().getApplicationContext().openFileOutput(a2, 0);
                fileOutputStream.write(decode);
            }
        } finally {
            try {
            } finally {
            }
        }
    }
}
