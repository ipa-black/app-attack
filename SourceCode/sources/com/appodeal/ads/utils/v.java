package com.appodeal.ads.utils;
/* loaded from: classes2.dex */
public final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final String f7831a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7832b;

    public v(String str, String str2) {
        this.f7831a = str;
        this.f7832b = str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            r0 = 0
            java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
            java.lang.String r2 = r5.f7832b     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
            java.net.URLConnection r1 = r1.openConnection()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
            java.net.HttpURLConnection r1 = (java.net.HttpURLConnection) r1     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
            r0 = 20000(0x4e20, float:2.8026E-41)
            r1.setConnectTimeout(r0)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            r1.setReadTimeout(r0)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            java.lang.String r0 = "Content-Type"
            java.lang.String r2 = "application/json; charset=UTF-8"
            r1.setRequestProperty(r0, r2)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            r0 = 1
            r1.setDoOutput(r0)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            java.lang.String r0 = "POST"
            r1.setRequestMethod(r0)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            java.io.DataOutputStream r0 = new java.io.DataOutputStream     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            java.io.OutputStream r2 = r1.getOutputStream()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            r0.<init>(r2)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            java.lang.String r2 = r5.f7831a     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            byte[] r2 = r2.getBytes(r3)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            r0.write(r2)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            r0.flush()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            r0.close()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            java.io.InputStream r0 = r1.getInputStream()     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            com.appodeal.ads.n5.a(r0)     // Catch: java.lang.Exception -> L48 java.lang.Throwable -> L5c
            goto L58
        L48:
            r0 = move-exception
            goto L53
        L4a:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L5d
        L4f:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L53:
            com.appodeal.ads.utils.Log.log(r0)     // Catch: java.lang.Throwable -> L5c
            if (r1 == 0) goto L5b
        L58:
            r1.disconnect()
        L5b:
            return
        L5c:
            r0 = move-exception
        L5d:
            if (r1 == 0) goto L62
            r1.disconnect()
        L62:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.utils.v.run():void");
    }
}
