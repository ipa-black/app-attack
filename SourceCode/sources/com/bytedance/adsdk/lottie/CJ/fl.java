package com.bytedance.adsdk.lottie.CJ;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* compiled from: DefaultLottieNetworkFetcher.java */
/* loaded from: classes2.dex */
public class fl implements hm {
    @Override // com.bytedance.adsdk.lottie.CJ.hm
    public ROR Qhi(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
        httpURLConnection.connect();
        return new ac(httpURLConnection);
    }
}
