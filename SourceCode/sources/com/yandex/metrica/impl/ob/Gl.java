package com.yandex.metrica.impl.ob;

import android.webkit.WebView;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes5.dex */
class Gl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Il f12990a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ WebView f12991b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ CountDownLatch f12992c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Gl(Hl hl, Il il, WebView webView, CountDownLatch countDownLatch) {
        this.f12990a = il;
        this.f12991b = webView;
        this.f12992c = countDownLatch;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f12990a.f13219h = this.f12991b.getUrl();
            this.f12990a.i = this.f12991b.getOriginalUrl();
            this.f12992c.countDown();
        } catch (Throwable unused) {
        }
    }
}
