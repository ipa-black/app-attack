package com.ironsource.d;

import android.content.Context;
import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import antlr.Version;
import com.google.android.exoplayer2.C;
import com.ironsource.sdk.utils.SDKUtils;
import java.io.DataOutputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private com.ironsource.mediationsdk.adunit.a.a f10502a = new com.ironsource.mediationsdk.adunit.a.a();

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final String f10503a;

        /* renamed from: b  reason: collision with root package name */
        final String f10504b;

        /* renamed from: c  reason: collision with root package name */
        final String f10505c;

        /* renamed from: d  reason: collision with root package name */
        final int f10506d;

        /* renamed from: e  reason: collision with root package name */
        final int f10507e;

        /* renamed from: f  reason: collision with root package name */
        final String f10508f;

        /* renamed from: g  reason: collision with root package name */
        ArrayList<Pair<String, String>> f10509g;

        /* renamed from: com.ironsource.d.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0318a {

            /* renamed from: b  reason: collision with root package name */
            public String f10511b;

            /* renamed from: d  reason: collision with root package name */
            public String f10513d;

            /* renamed from: a  reason: collision with root package name */
            List<Pair<String, String>> f10510a = new ArrayList();

            /* renamed from: c  reason: collision with root package name */
            public String f10512c = ShareTarget.METHOD_POST;

            /* renamed from: e  reason: collision with root package name */
            int f10514e = 15000;

            /* renamed from: f  reason: collision with root package name */
            int f10515f = 15000;

            /* renamed from: g  reason: collision with root package name */
            String f10516g = C.UTF8_NAME;

            public final C0318a a(List<Pair<String, String>> list) {
                this.f10510a.addAll(list);
                return this;
            }

            public final a a() {
                return new a(this);
            }
        }

        public a(C0318a c0318a) {
            this.f10503a = c0318a.f10511b;
            this.f10504b = c0318a.f10512c;
            this.f10505c = c0318a.f10513d;
            this.f10509g = new ArrayList<>(c0318a.f10510a);
            this.f10506d = c0318a.f10514e;
            this.f10507e = c0318a.f10515f;
            this.f10508f = c0318a.f10516g;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ironsource.d.c a(com.ironsource.d.b.a r7) {
        /*
            java.lang.String r0 = r7.f10503a
            java.lang.String r1 = r7.f10505c
            if (r0 == 0) goto Lcc
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lcc
            if (r1 == 0) goto Lcc
            boolean r0 = r1.isEmpty()
            if (r0 != 0) goto Lcc
            com.ironsource.d.c r0 = new com.ironsource.d.c
            r0.<init>()
            r1 = 0
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            java.lang.String r3 = r7.f10503a     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            java.net.URLConnection r2 = r2.openConnection()     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            int r3 = r7.f10506d     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            r2.setConnectTimeout(r3)     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            int r3 = r7.f10507e     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            r2.setReadTimeout(r3)     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            java.lang.String r3 = r7.f10504b     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            r2.setRequestMethod(r3)     // Catch: java.lang.Throwable -> L7e java.io.IOException -> L81
            java.util.ArrayList<android.util.Pair<java.lang.String, java.lang.String>> r3 = r7.f10509g     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            a(r2, r3)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            java.lang.String r3 = "POST"
            java.lang.String r4 = r7.f10504b     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            if (r3 == 0) goto L5a
            java.lang.String r3 = r7.f10505c     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            java.lang.String r4 = r7.f10508f     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            byte[] r3 = r3.getBytes(r4)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            int r4 = r3.length     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            java.lang.String r5 = "Content-Length"
            java.lang.String r4 = java.lang.Integer.toString(r4)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            r2.setRequestProperty(r5, r4)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            a(r2, r3)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
        L5a:
            java.io.InputStream r1 = r2.getInputStream()     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            int r3 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            r0.f10517a = r3     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            if (r1 == 0) goto L6c
            byte[] r3 = com.ironsource.environment.a.AnonymousClass1.a(r1)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
            r0.f10518b = r3     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L79
        L6c:
            if (r1 == 0) goto L71
            r1.close()
        L71:
            if (r2 == 0) goto Lbb
            r2.disconnect()
            goto Lbb
        L77:
            r7 = move-exception
            goto Lc1
        L79:
            r3 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
            goto L83
        L7e:
            r7 = move-exception
            r2 = r1
            goto Lc1
        L81:
            r3 = move-exception
            r2 = r1
        L83:
            if (r1 == 0) goto Lbc
            int r4 = r1.getResponseCode()     // Catch: java.lang.Throwable -> Lbd
            r0.f10517a = r4     // Catch: java.lang.Throwable -> Lbd
            r5 = 400(0x190, float:5.6E-43)
            if (r4 < r5) goto Lbc
            java.lang.String r3 = "ISHttpService"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r5 = "Failed post to "
            r4.<init>(r5)     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r7 = r7.f10503a     // Catch: java.lang.Throwable -> Lbd
            java.lang.StringBuilder r7 = r4.append(r7)     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r4 = " StatusCode: "
            java.lang.StringBuilder r7 = r7.append(r4)     // Catch: java.lang.Throwable -> Lbd
            int r4 = r0.f10517a     // Catch: java.lang.Throwable -> Lbd
            java.lang.StringBuilder r7 = r7.append(r4)     // Catch: java.lang.Throwable -> Lbd
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Lbd
            android.util.Log.d(r3, r7)     // Catch: java.lang.Throwable -> Lbd
            if (r2 == 0) goto Lb6
            r2.close()
        Lb6:
            if (r1 == 0) goto Lbb
            r1.disconnect()
        Lbb:
            return r0
        Lbc:
            throw r3     // Catch: java.lang.Throwable -> Lbd
        Lbd:
            r7 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
        Lc1:
            if (r1 == 0) goto Lc6
            r1.close()
        Lc6:
            if (r2 == 0) goto Lcb
            r2.disconnect()
        Lcb:
            throw r7
        Lcc:
            java.security.InvalidParameterException r7 = new java.security.InvalidParameterException
            java.lang.String r0 = "not valid params"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.d.b.a(com.ironsource.d.b$a):com.ironsource.d.c");
    }

    public static c a(String str, String str2, List<Pair<String, String>> list) {
        a.C0318a c0318a = new a.C0318a();
        c0318a.f10511b = str;
        c0318a.f10513d = str2;
        c0318a.f10512c = ShareTarget.METHOD_POST;
        c0318a.a(list);
        return a(c0318a.a());
    }

    private static void a(HttpURLConnection httpURLConnection, List<Pair<String, String>> list) {
        for (Pair<String, String> pair : list) {
            httpURLConnection.setRequestProperty((String) pair.first, (String) pair.second);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        httpURLConnection.setDoOutput(true);
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        try {
            dataOutputStream.write(bArr);
            dataOutputStream.flush();
        } finally {
            dataOutputStream.close();
        }
    }

    public void a(int i) {
        com.ironsource.mediationsdk.adunit.a.a.a("itp", Integer.valueOf(i));
    }

    public void a(Context context) {
        com.ironsource.mediationsdk.adunit.a.a.a(context);
    }

    public void a(com.ironsource.c.b bVar) {
        try {
            HashMap hashMap = new HashMap();
            String str = com.ironsource.sdk.e.a.a.f11985a;
            Intrinsics.checkNotNullExpressionValue(str, "OMIDManager.OMID_LIB_VERSION");
            hashMap.put("omv", str);
            hashMap.put("ompv", Version.subversion);
            String sDKVersion = SDKUtils.getSDKVersion();
            Intrinsics.checkNotNullExpressionValue(sDKVersion, "SDKUtils.getSDKVersion()");
            hashMap.put("sdkv", sDKVersion);
            com.ironsource.mediationsdk.adunit.a.a.a(hashMap);
        } catch (Exception unused) {
        }
    }

    public void a(Boolean bool) {
        com.ironsource.mediationsdk.adunit.a.a.a("fs", bool);
    }

    public void a(String str) {
        com.ironsource.mediationsdk.adunit.a.a.a("apky", str);
    }

    public void a(JSONObject jSONObject) {
        com.ironsource.mediationsdk.adunit.a.a.a("md", (Object) jSONObject);
    }

    public void a(boolean z) {
        com.ironsource.mediationsdk.adunit.a.a.a("cnst", Boolean.valueOf(z));
    }

    public void b(String str) {
        com.ironsource.mediationsdk.adunit.a.a.a("medv", str);
    }

    public void b(JSONObject jSONObject) {
        com.ironsource.mediationsdk.adunit.a.a.a("tkgp", (Object) jSONObject);
    }

    public void b(boolean z) {
        com.ironsource.mediationsdk.adunit.a.a.a("gpi", Boolean.valueOf(z));
    }

    public void c(String str) {
        com.ironsource.mediationsdk.adunit.a.a.a("sid", str);
    }

    public void d(String str) {
        com.ironsource.mediationsdk.adunit.a.a.a("plugin", str);
    }

    public void e(String str) {
        com.ironsource.mediationsdk.adunit.a.a.a("usid", str);
    }

    public void f(String str) {
        com.ironsource.mediationsdk.adunit.a.a.a("audt", str);
    }
}
