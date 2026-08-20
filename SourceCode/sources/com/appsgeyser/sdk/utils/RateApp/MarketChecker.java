package com.appsgeyser.sdk.utils.RateApp;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public class MarketChecker {
    private static MarketChecker instance;
    private final String GP_URL = "https://play.google.com/store/apps/details?id=";
    private final String LOG_TAG = "MarketChecker";
    private final Runnable checkJob = new Runnable() { // from class: com.appsgeyser.sdk.utils.RateApp.MarketChecker$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            MarketChecker.this.m250lambda$new$0$comappsgeysersdkutilsRateAppMarketChecker();
        }
    };
    private OnReceiveListener listener;
    private String packageId;

    /* loaded from: classes2.dex */
    public interface OnReceiveListener {
        void onReceive(boolean z);
    }

    private MarketChecker() {
    }

    public static MarketChecker getInstance() {
        MarketChecker marketChecker = instance;
        return marketChecker != null ? marketChecker : new MarketChecker();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-appsgeyser-sdk-utils-RateApp-MarketChecker  reason: not valid java name */
    public /* synthetic */ void m250lambda$new$0$comappsgeysersdkutilsRateAppMarketChecker() {
        final int resultCode = getResultCode();
        if (this.listener != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appsgeyser.sdk.utils.RateApp.MarketChecker.1
                @Override // java.lang.Runnable
                public void run() {
                    MarketChecker.this.listener.onReceive(resultCode == 200);
                }
            });
        }
    }

    public void chekIsAppOnMarket(String str, OnReceiveListener onReceiveListener) {
        this.listener = onReceiveListener;
        this.packageId = str;
        new Thread(this.checkJob).start();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
        if (r0 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
        if (r0 != null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002a, code lost:
        r0.disconnect();
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getResultCode() {
        /*
            r6 = this;
            java.lang.String r0 = "https://play.google.com/store/apps/details?id="
            r1 = 0
            r2 = 0
            java.net.URL r3 = new java.net.URL     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            java.lang.String r0 = r6.packageId     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            java.net.URLConnection r0 = r3.openConnection()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            javax.net.ssl.HttpsURLConnection r0 = (javax.net.ssl.HttpsURLConnection) r0     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            r0.setUseCaches(r1)     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L44
            r0.connect()     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L44
            int r1 = r0.getResponseCode()     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L44
            if (r0 == 0) goto L43
        L2a:
            r0.disconnect()
            goto L43
        L2e:
            r2 = move-exception
            goto L36
        L30:
            r1 = move-exception
            goto L46
        L32:
            r0 = move-exception
            r5 = r2
            r2 = r0
            r0 = r5
        L36:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L44
            java.lang.String r3 = "MarketChecker"
            java.lang.String r4 = "Error while connecting with Google Play"
            android.util.Log.e(r3, r4, r2)     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L43
            goto L2a
        L43:
            return r1
        L44:
            r1 = move-exception
            r2 = r0
        L46:
            if (r2 == 0) goto L4b
            r2.disconnect()
        L4b:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsgeyser.sdk.utils.RateApp.MarketChecker.getResultCode():int");
    }
}
