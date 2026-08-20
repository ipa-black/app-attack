package com.yandex.metrica;

import android.webkit.JavascriptInterface;
import com.yandex.metrica.impl.ob.Uf;
/* loaded from: classes3.dex */
public class AppMetricaInitializerJsInterface {

    /* renamed from: a  reason: collision with root package name */
    private final Uf f12294a;

    public AppMetricaInitializerJsInterface(Uf uf) {
        this.f12294a = uf;
    }

    @JavascriptInterface
    public void init(String str) {
        this.f12294a.c(str);
    }
}
