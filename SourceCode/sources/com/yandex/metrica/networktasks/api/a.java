package com.yandex.metrica.networktasks.api;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.net.HttpHeaders;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
class a {
    public Response a(String str, String str2, SSLSocketFactory sSLSocketFactory) {
        Request.Builder withMethod = new Request.Builder(str2).withMethod(ShareTarget.METHOD_GET);
        if (!TextUtils.isEmpty(str)) {
            withMethod.addHeader(HttpHeaders.IF_NONE_MATCH, str);
        }
        NetworkClient.Builder withSslSocketFactory = new NetworkClient.Builder().withInstanceFollowRedirects(true).withSslSocketFactory(sSLSocketFactory);
        int i = com.yandex.metrica.networktasks.impl.a.f16279a;
        return withSslSocketFactory.withConnectTimeout(i).withReadTimeout(i).build().newCall(withMethod.build()).execute();
    }
}
