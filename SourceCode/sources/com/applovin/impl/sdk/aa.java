package com.applovin.impl.sdk;

import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class aa {

    /* renamed from: a  reason: collision with root package name */
    private static WebView f5481a;

    /* renamed from: b  reason: collision with root package name */
    private static String f5482b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f5483c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicBoolean f5484d = new AtomicBoolean();

    static {
        if (b()) {
            f5482b = (String) com.applovin.impl.sdk.c.e.b(com.applovin.impl.sdk.c.d.D, "", n.Q());
            return;
        }
        f5482b = "";
        com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.D, (Object) null, n.Q());
        com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.E, (Object) null, n.Q());
    }

    public static String a() {
        String str;
        synchronized (f5483c) {
            str = f5482b;
        }
        return str;
    }

    public static void a(n nVar) {
    }

    public static void b(final n nVar) {
        if (b() || f5484d.getAndSet(true)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(com.applovin.impl.sdk.utils.h.b() ? new Runnable() { // from class: com.applovin.impl.sdk.aa.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    synchronized (aa.f5483c) {
                        String unused = aa.f5482b = WebSettings.getDefaultUserAgent(n.Q());
                        com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.D, aa.f5482b, n.Q());
                        com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.E, Build.VERSION.RELEASE, n.Q());
                    }
                } catch (Throwable th) {
                    n.this.D();
                    if (v.a()) {
                        n.this.D().b("WebViewDataCollector", "Failed to collect user agent", th);
                    }
                }
            }
        } : new Runnable() { // from class: com.applovin.impl.sdk.aa.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    aa.a(n.this);
                    synchronized (aa.f5483c) {
                        String unused = aa.f5482b = aa.f5481a.getSettings().getUserAgentString();
                        com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.D, aa.f5482b, n.Q());
                        com.applovin.impl.sdk.c.e.a(com.applovin.impl.sdk.c.d.E, Build.VERSION.RELEASE, n.Q());
                    }
                } catch (Throwable th) {
                    n.this.D();
                    if (v.a()) {
                        n.this.D().b("WebViewDataCollector", "Failed to collect user agent", th);
                    }
                }
            }
        });
    }

    public static boolean b() {
        boolean equals;
        synchronized (f5483c) {
            equals = Build.VERSION.RELEASE.equals((String) com.applovin.impl.sdk.c.e.b(com.applovin.impl.sdk.c.d.E, "", n.Q()));
        }
        return equals;
    }
}
