package com.iab.omid.library.bytedance2.publisher;

import android.os.Handler;
import android.webkit.WebView;
import com.google.android.exoplayer2.ExoPlayer;
import com.iab.omid.library.bytedance2.adsession.AdSessionContext;
import com.iab.omid.library.bytedance2.adsession.VerificationScriptResource;
import com.iab.omid.library.bytedance2.internal.g;
import com.iab.omid.library.bytedance2.utils.c;
import com.iab.omid.library.bytedance2.utils.f;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: f  reason: collision with root package name */
    private WebView f10317f;

    /* renamed from: g  reason: collision with root package name */
    private Long f10318g = null;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f10319h;
    private final String i;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final WebView f10320a;

        a() {
            this.f10320a = b.this.f10317f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f10320a.destroy();
        }
    }

    public b(Map<String, VerificationScriptResource> map, String str) {
        this.f10319h = map;
        this.i = str;
    }

    @Override // com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.bytedance2.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            c.a(jSONObject, str, injectedResourcesMap.get(str).toJsonObject());
        }
        a(aVar, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new a(), Math.max(4000 - (this.f10318g == null ? 4000L : TimeUnit.MILLISECONDS.convert(f.b() - this.f10318g.longValue(), TimeUnit.NANOSECONDS)), (long) ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS));
        this.f10317f = null;
    }

    @Override // com.iab.omid.library.bytedance2.publisher.AdSessionStatePublisher
    public void i() {
        super.i();
        j();
    }

    void j() {
        WebView webView = new WebView(com.iab.omid.library.bytedance2.internal.f.b().a());
        this.f10317f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f10317f.getSettings().setAllowContentAccess(false);
        this.f10317f.getSettings().setAllowFileAccess(false);
        a(this.f10317f);
        g.a().c(this.f10317f, this.i);
        for (String str : this.f10319h.keySet()) {
            g.a().a(this.f10317f, this.f10319h.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f10318g = Long.valueOf(f.b());
    }
}
