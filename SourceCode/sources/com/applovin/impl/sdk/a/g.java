package com.applovin.impl.sdk.a;

import android.text.TextUtils;
import android.webkit.WebView;
import com.applovin.impl.b.h;
import com.applovin.impl.b.k;
import com.applovin.impl.b.m;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.adsession.media.InteractionType;
import com.iab.omid.library.applovin.adsession.media.MediaEvents;
import com.iab.omid.library.applovin.adsession.media.Position;
import com.iab.omid.library.applovin.adsession.media.VastProperties;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class g extends b {

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ boolean f5464h = true;
    private final com.applovin.impl.b.a i;
    private final AtomicBoolean j;
    private MediaEvents k;
    private final VastProperties l;
    private final AtomicBoolean m;
    private final AtomicBoolean n;
    private final AtomicBoolean o;
    private final AtomicBoolean p;

    public g(com.applovin.impl.b.a aVar) {
        super(aVar);
        this.j = new AtomicBoolean();
        this.m = new AtomicBoolean();
        this.n = new AtomicBoolean();
        this.o = new AtomicBoolean();
        this.p = new AtomicBoolean();
        this.i = aVar;
        this.l = aVar.i() == -1 ? VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE) : VastProperties.createVastPropertiesForSkippableMedia((float) aVar.i(), true, Position.STANDALONE);
    }

    @Override // com.applovin.impl.sdk.a.b
    protected AdSessionConfiguration a() {
        try {
            return AdSessionConfiguration.createAdSessionConfiguration(CreativeType.VIDEO, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NATIVE, false);
        } catch (Throwable th) {
            v vVar = this.f5439c;
            if (v.a()) {
                this.f5439c.b(this.f5440d, "Failed to create ad session configuration", th);
            }
            return null;
        }
    }

    @Override // com.applovin.impl.sdk.a.b
    protected AdSessionContext a(WebView webView) {
        com.applovin.impl.b.f fVar;
        Set<k> set;
        if (f5464h || this.i.aW() != null) {
            ArrayList arrayList = new ArrayList();
            for (com.applovin.impl.b.b bVar : this.i.aW().a()) {
                List<h> b2 = bVar.b();
                if (!b2.isEmpty()) {
                    ArrayList<h> arrayList2 = new ArrayList();
                    for (h hVar : b2) {
                        if ("omid".equalsIgnoreCase(hVar.a())) {
                            arrayList2.add(hVar);
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        set = bVar.d();
                        fVar = com.applovin.impl.b.f.API_FRAMEWORK_OR_LANGUAGE_TYPE_NOT_SUPPORTED;
                        m.a(set, fVar, this.f5438b);
                    } else {
                        ArrayList<URL> arrayList3 = new ArrayList();
                        for (h hVar2 : arrayList2) {
                            try {
                                arrayList3.add(new URL(hVar2.b()));
                            } catch (Throwable th) {
                                v vVar = this.f5439c;
                                if (v.a()) {
                                    this.f5439c.b(this.f5440d, "Failed to parse JavaScript resource url", th);
                                }
                            }
                        }
                        if (!arrayList3.isEmpty()) {
                            String c2 = bVar.c();
                            String a2 = bVar.a();
                            if (!StringUtils.isValidString(c2) || StringUtils.isValidString(a2)) {
                                for (URL url : arrayList3) {
                                    arrayList.add(StringUtils.isValidString(c2) ? VerificationScriptResource.createVerificationScriptResourceWithParameters(a2, url, c2) : VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url));
                                }
                            }
                        }
                    }
                }
                set = bVar.d();
                fVar = com.applovin.impl.b.f.FAILED_TO_LOAD_RESOURCE;
                m.a(set, fVar, this.f5438b);
            }
            String e2 = this.f5438b.ao().e();
            if (TextUtils.isEmpty(e2)) {
                v vVar2 = this.f5439c;
                if (v.a()) {
                    this.f5439c.e(this.f5440d, "JavaScript SDK content not loaded successfully");
                }
                return null;
            }
            try {
                return AdSessionContext.createNativeAdSessionContext(this.f5438b.ao().d(), e2, arrayList, this.i.getOpenMeasurementContentUrl(), this.i.getOpenMeasurementCustomReferenceData());
            } catch (Throwable th2) {
                v vVar3 = this.f5439c;
                if (v.a()) {
                    this.f5439c.b(this.f5440d, "Failed to create ad session context", th2);
                    return null;
                }
                return null;
            }
        }
        throw new AssertionError();
    }

    public void a(final float f2, final boolean z) {
        if (this.m.compareAndSet(false, true)) {
            a("track started", new Runnable() { // from class: com.applovin.impl.sdk.a.g.6
                @Override // java.lang.Runnable
                public void run() {
                    g.this.k.start(f2, z ? 0.0f : 1.0f);
                }
            });
        }
    }

    @Override // com.applovin.impl.sdk.a.b
    protected void a(AdSession adSession) {
        try {
            this.k = MediaEvents.createMediaEvents(adSession);
        } catch (Throwable th) {
            v vVar = this.f5439c;
            if (v.a()) {
                this.f5439c.b(this.f5440d, "Failed to create media events", th);
            }
        }
    }

    public void a(final boolean z) {
        a("track volume changed", new Runnable() { // from class: com.applovin.impl.sdk.a.g.3
            @Override // java.lang.Runnable
            public void run() {
                g.this.k.volumeChange(z ? 0.0f : 1.0f);
            }
        });
    }

    @Override // com.applovin.impl.sdk.a.b
    public void c() {
        a("track loaded", new Runnable() { // from class: com.applovin.impl.sdk.a.g.1
            @Override // java.lang.Runnable
            public void run() {
                g.this.f5443g.loaded(g.this.l);
            }
        });
    }

    public void f() {
        if (this.n.compareAndSet(false, true)) {
            a("track first quartile", new Runnable() { // from class: com.applovin.impl.sdk.a.g.7
                @Override // java.lang.Runnable
                public void run() {
                    g.this.k.firstQuartile();
                }
            });
        }
    }

    public void g() {
        if (this.o.compareAndSet(false, true)) {
            a("track midpoint", new Runnable() { // from class: com.applovin.impl.sdk.a.g.8
                @Override // java.lang.Runnable
                public void run() {
                    g.this.k.midpoint();
                }
            });
        }
    }

    public void h() {
        if (this.p.compareAndSet(false, true)) {
            a("track third quartile", new Runnable() { // from class: com.applovin.impl.sdk.a.g.9
                @Override // java.lang.Runnable
                public void run() {
                    g.this.k.thirdQuartile();
                }
            });
        }
    }

    public void i() {
        a("track completed", new Runnable() { // from class: com.applovin.impl.sdk.a.g.10
            @Override // java.lang.Runnable
            public void run() {
                g.this.k.complete();
            }
        });
    }

    public void j() {
        a("track paused", new Runnable() { // from class: com.applovin.impl.sdk.a.g.11
            @Override // java.lang.Runnable
            public void run() {
                g.this.k.pause();
            }
        });
    }

    public void k() {
        a("track resumed", new Runnable() { // from class: com.applovin.impl.sdk.a.g.12
            @Override // java.lang.Runnable
            public void run() {
                g.this.k.resume();
            }
        });
    }

    public void l() {
        if (this.j.compareAndSet(false, true)) {
            a("buffer started", new Runnable() { // from class: com.applovin.impl.sdk.a.g.13
                @Override // java.lang.Runnable
                public void run() {
                    g.this.k.bufferStart();
                }
            });
        }
    }

    public void m() {
        if (this.j.compareAndSet(true, false)) {
            a("buffer finished", new Runnable() { // from class: com.applovin.impl.sdk.a.g.2
                @Override // java.lang.Runnable
                public void run() {
                    g.this.k.bufferFinish();
                }
            });
        }
    }

    public void n() {
        a("track skipped", new Runnable() { // from class: com.applovin.impl.sdk.a.g.4
            @Override // java.lang.Runnable
            public void run() {
                g.this.k.skipped();
            }
        });
    }

    public void o() {
        a("track clicked", new Runnable() { // from class: com.applovin.impl.sdk.a.g.5
            @Override // java.lang.Runnable
            public void run() {
                g.this.k.adUserInteraction(InteractionType.CLICK);
            }
        });
    }
}
