package com.criteo.publisher.model;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: DeviceInfo.java */
/* loaded from: classes2.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9179a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.e0.c f9180b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.h<String> f9181c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f9182d;

    public u(Context context, com.criteo.publisher.e0.c cVar) {
        com.criteo.publisher.logging.h.b(getClass());
        this.f9181c = new com.criteo.publisher.n0.h<>();
        this.f9182d = new AtomicBoolean(false);
        this.f9179a = context;
        this.f9180b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceInfo.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u.this.f9182d.compareAndSet(false, true)) {
                u.this.f9181c.a((com.criteo.publisher.n0.h) u.this.e());
            }
        }
    }

    public void d() {
        a(new a());
    }

    public Future<String> b() {
        d();
        return this.f9181c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceInfo.java */
    /* loaded from: classes2.dex */
    public class b extends com.criteo.publisher.x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Runnable f9184c;

        b(u uVar, Runnable runnable) {
            this.f9184c = runnable;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            this.f9184c.run();
        }
    }

    private void a(Runnable runnable) {
        this.f9180b.a(new b(this, runnable));
    }

    String e() {
        String str;
        try {
            str = c();
        } catch (Throwable unused) {
            str = null;
        }
        return TextUtils.isEmpty(str) ? a() : str;
    }

    private String c() {
        WebView webView = new WebView(this.f9179a);
        String userAgentString = webView.getSettings().getUserAgentString();
        webView.destroy();
        return userAgentString;
    }

    private String a() {
        String str;
        try {
            str = System.getProperty("http.agent");
        } catch (Throwable th) {
            com.criteo.publisher.n0.o.a(th);
            str = null;
        }
        return str != null ? str : "";
    }
}
