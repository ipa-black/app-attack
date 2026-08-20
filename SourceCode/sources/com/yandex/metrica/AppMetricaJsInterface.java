package com.yandex.metrica;

import android.webkit.JavascriptInterface;
import com.yandex.metrica.impl.ob.Uf;
/* loaded from: classes3.dex */
public class AppMetricaJsInterface {

    /* renamed from: a  reason: collision with root package name */
    private final Uf f12295a;

    public AppMetricaJsInterface(Uf uf) {
        this.f12295a = uf;
    }

    @JavascriptInterface
    public void reportEvent(String str, String str2) {
        this.f12295a.c(str, str2);
    }
}
