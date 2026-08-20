package com.iab.omid.library.ironsrc.publisher;

import android.os.Handler;
import android.webkit.WebView;
import com.google.android.exoplayer2.ExoPlayer;
import com.iab.omid.library.ironsrc.adsession.AdSessionContext;
import com.iab.omid.library.ironsrc.adsession.VerificationScriptResource;
import com.iab.omid.library.ironsrc.b.e;
import com.iab.omid.library.ironsrc.d.d;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b extends AdSessionStatePublisher {

    /* renamed from: a  reason: collision with root package name */
    private WebView f10432a;

    /* renamed from: b  reason: collision with root package name */
    private Long f10433b = null;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, VerificationScriptResource> f10434c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10435d;

    public b(Map<String, VerificationScriptResource> map, String str) {
        this.f10434c = map;
        this.f10435d = str;
    }

    @Override // com.iab.omid.library.ironsrc.publisher.AdSessionStatePublisher
    public void a() {
        super.a();
        j();
    }

    @Override // com.iab.omid.library.ironsrc.publisher.AdSessionStatePublisher
    public void a(com.iab.omid.library.ironsrc.adsession.a aVar, AdSessionContext adSessionContext) {
        JSONObject jSONObject = new JSONObject();
        Map<String, VerificationScriptResource> injectedResourcesMap = adSessionContext.getInjectedResourcesMap();
        for (String str : injectedResourcesMap.keySet()) {
            com.iab.omid.library.ironsrc.d.b.a(jSONObject, str, injectedResourcesMap.get(str));
        }
        a(aVar, adSessionContext, jSONObject);
    }

    @Override // com.iab.omid.library.ironsrc.publisher.AdSessionStatePublisher
    public void b() {
        super.b();
        new Handler().postDelayed(new Runnable() { // from class: com.iab.omid.library.ironsrc.publisher.b.1

            /* renamed from: b  reason: collision with root package name */
            private WebView f10437b;

            {
                this.f10437b = b.this.f10432a;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f10437b.destroy();
            }
        }, Math.max(4000 - (this.f10433b == null ? 4000L : TimeUnit.MILLISECONDS.convert(d.a() - this.f10433b.longValue(), TimeUnit.NANOSECONDS)), (long) ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS));
        this.f10432a = null;
    }

    void j() {
        WebView webView = new WebView(com.iab.omid.library.ironsrc.b.d.a().b());
        this.f10432a = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        a(this.f10432a);
        e.a().a(this.f10432a, this.f10435d);
        for (String str : this.f10434c.keySet()) {
            e.a().a(this.f10432a, this.f10434c.get(str).getResourceUrl().toExternalForm(), str);
        }
        this.f10433b = Long.valueOf(d.a());
    }
}
