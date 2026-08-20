package com.yandex.metrica.impl.ob;

import android.webkit.WebView;
import com.yandex.metrica.AppMetricaInitializerJsInterface;
import com.yandex.metrica.AppMetricaJsInterface;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class D2 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC1719mm<C1470cm>> f12777a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private C1470cm f12778b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements InterfaceC1719mm<C1470cm> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12779a;

        a(D2 d2, String str) {
            this.f12779a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(C1470cm c1470cm) {
            C1470cm c1470cm2 = c1470cm;
            if (c1470cm2.isEnabled()) {
                c1470cm2.w(this.f12779a);
            }
        }
    }

    public void a(WebView webView, Uf uf) {
        if (A2.a(17)) {
            try {
                if (webView.getSettings().getJavaScriptEnabled()) {
                    webView.addJavascriptInterface(new AppMetricaJsInterface(uf), "AppMetrica");
                    webView.addJavascriptInterface(new AppMetricaInitializerJsInterface(uf), "AppMetricaInitializer");
                    C2 c2 = new C2(this, "WebView interface setup is successful.");
                    synchronized (this) {
                        C1470cm c1470cm = this.f12778b;
                        if (c1470cm == null) {
                            this.f12777a.add(c2);
                        } else {
                            c2.b(c1470cm);
                        }
                    }
                    return;
                }
                a("WebView interface setup failed because javascript is disabled for the WebView.");
                return;
            } catch (Throwable th) {
                E2 e2 = new E2(this, th, "WebView interface setup failed because of an exception.");
                synchronized (this) {
                    C1470cm c1470cm2 = this.f12778b;
                    if (c1470cm2 == null) {
                        this.f12777a.add(e2);
                        return;
                    } else {
                        e2.b(c1470cm2);
                        return;
                    }
                }
            }
        }
        a("WebView interface is not available on Android < 17.");
    }

    public void a(C1470cm c1470cm) {
        synchronized (this) {
            this.f12778b = c1470cm;
        }
        for (InterfaceC1719mm<C1470cm> interfaceC1719mm : this.f12777a) {
            interfaceC1719mm.b(c1470cm);
        }
        this.f12777a.clear();
    }

    private void a(String str) {
        a aVar = new a(this, str);
        synchronized (this) {
            C1470cm c1470cm = this.f12778b;
            if (c1470cm == null) {
                this.f12777a.add(aVar);
            } else {
                aVar.b(c1470cm);
            }
        }
    }
}
