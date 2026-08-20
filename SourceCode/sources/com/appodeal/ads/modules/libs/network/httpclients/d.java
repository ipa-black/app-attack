package com.appodeal.ads.modules.libs.network.httpclients;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class d {
    public static Object a(c rawRequest) {
        URLConnection connection;
        HttpURLConnection httpURLConnection;
        Intrinsics.checkNotNullParameter(rawRequest, "rawRequest");
        try {
            connection = new URL(rawRequest.d()).openConnection();
            try {
                Intrinsics.checkNotNullExpressionValue(connection, "connection");
                Object a2 = com.appodeal.ads.modules.libs.network.httpclients.ext.b.a(connection, rawRequest);
                httpURLConnection = connection instanceof HttpURLConnection ? (HttpURLConnection) connection : null;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return a2;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = connection instanceof HttpURLConnection ? connection : null;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            connection = null;
        }
    }
}
