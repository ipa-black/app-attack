package com.iab.omid.library.appodeal.publisher;

import android.os.Handler;
import android.webkit.WebView;
import com.google.android.exoplayer2.ExoPlayer;
import com.iab.omid.library.appodeal.adsession.AdSessionContext;
import com.iab.omid.library.appodeal.adsession.VerificationScriptResource;
import com.iab.omid.library.appodeal.b.e;
import com.iab.omid.library.appodeal.d.d;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: a  reason: collision with root package name */
    private WebView f10209a;

    /* renamed from: b  reason: collision with root package name */
    private Long f10210b = null;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, VerificationScriptResource> f10211c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10212d;

    public b(Map<String, VerificationScriptResource> map, String str) {
        this.f10211c = map;
        this.f10212d = str;
    }

    @Override // com.iab.omid.library.appodeal.publisher.AdSessionStatePublisher
    public void a() {
        super.a();
        j();
    }

    @Override // com.iab.omid.library.appodeal.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.appodeal.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            com.iab.omid.library.appodeal.d.b.a(jSONObject, str, injectedResourcesMap.get(str));
        }
        a(aVar, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.appodeal.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.appodeal.publisher.b.1

            /* renamed from: b  reason: collision with root package name */
            private final WebView f10214b;

            {
                this.f10214b = b.this.f10209a;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f10214b.destroy();
            }
        }, Math.max(4000 - (this.f10210b == null ? 4000L : TimeUnit.MILLISECONDS.convert(d.a() - this.f10210b.longValue(), TimeUnit.NANOSECONDS)), (long) ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS));
        this.f10209a = null;
    }

    void j() {
        WebView webView = new WebView(com.iab.omid.library.appodeal.b.d.a().b());
        this.f10209a = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.f10209a);
        e.a().a(this.f10209a, this.f10212d);
        for (String str : this.f10211c.keySet()) {
            e.a().a(this.f10209a, this.f10211c.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f10210b = Long.valueOf(d.a());
    }
}
