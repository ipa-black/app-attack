package com.applovin.impl.sdk.a;

import android.view.View;
import android.webkit.WebView;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.AdEvents;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.ErrorType;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    protected final AppLovinAdBase f5437a;

    /* renamed from: b  reason: collision with root package name */
    protected final n f5438b;

    /* renamed from: c  reason: collision with root package name */
    protected final v f5439c;

    /* renamed from: d  reason: collision with root package name */
    protected final String f5440d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f5441e;

    /* renamed from: f  reason: collision with root package name */
    protected AdSession f5442f;

    /* renamed from: g  reason: collision with root package name */
    protected AdEvents f5443g;

    public b(AppLovinAdBase appLovinAdBase) {
        this.f5437a = appLovinAdBase;
        this.f5438b = appLovinAdBase.getSdk();
        this.f5439c = appLovinAdBase.getSdk().D();
        String str = "AdEventTracker:" + appLovinAdBase.getAdIdNumber();
        this.f5440d = StringUtils.isValidString(appLovinAdBase.getDspName()) ? str + ":" + appLovinAdBase.getDspName() : str;
    }

    protected abstract AdSessionConfiguration a();

    protected abstract AdSessionContext a(WebView webView);

    public void a(View view) {
        a(view, Collections.emptyList());
    }

    public void a(final View view, final List<d> list) {
        a("update main view: " + view, new Runnable() { // from class: com.applovin.impl.sdk.a.b.4
            @Override // java.lang.Runnable
            public void run() {
                b.this.f5442f.registerAdView(view);
                b.this.f5442f.removeAllFriendlyObstructions();
                for (d dVar : list) {
                    if (dVar.a() != null) {
                        try {
                            b.this.f5442f.addFriendlyObstruction(dVar.a(), dVar.b(), dVar.c());
                        } catch (Throwable th) {
                            v vVar = b.this.f5439c;
                            if (v.a()) {
                                b.this.f5439c.b(b.this.f5440d, "Failed to add friendly obstruction (" + dVar + ")", th);
                            }
                        }
                    }
                }
            }
        });
    }

    protected void a(AdSession adSession) {
    }

    public void a(final String str) {
        a("track error", new Runnable() { // from class: com.applovin.impl.sdk.a.b.5
            @Override // java.lang.Runnable
            public void run() {
                b.this.f5442f.error(ErrorType.VIDEO, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final String str, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.b.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (b.this.f5441e) {
                        v vVar = b.this.f5439c;
                        if (v.a()) {
                            b.this.f5439c.b(b.this.f5440d, "Running operation: " + str);
                        }
                        runnable.run();
                        return;
                    }
                    v vVar2 = b.this.f5439c;
                    if (v.a()) {
                        b.this.f5439c.e(b.this.f5440d, "Failed to run operation: " + str);
                    }
                } catch (Throwable th) {
                    v vVar3 = b.this.f5439c;
                    if (v.a()) {
                        b.this.f5439c.b(b.this.f5440d, "Failed to run operation: " + str, th);
                    }
                }
            }
        });
    }

    public void b() {
        b(null);
    }

    public void b(final WebView webView) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                AdSessionContext a2;
                if (!b.this.f5437a.isOpenMeasurementEnabled()) {
                    v vVar = b.this.f5439c;
                    if (v.a()) {
                        b.this.f5439c.c(b.this.f5440d, "Skip starting session - Open Measurement disabled");
                    }
                } else if (b.this.f5442f != null) {
                    v vVar2 = b.this.f5439c;
                    if (v.a()) {
                        b.this.f5439c.d(b.this.f5440d, "Attempting to start session again for ad: " + b.this.f5437a);
                    }
                } else {
                    v vVar3 = b.this.f5439c;
                    if (v.a()) {
                        b.this.f5439c.b(b.this.f5440d, "Starting session");
                    }
                    AdSessionConfiguration a3 = b.this.a();
                    if (a3 == null || (a2 = b.this.a(webView)) == null) {
                        return;
                    }
                    try {
                        b.this.f5442f = AdSession.createAdSession(a3, a2);
                        try {
                            b bVar = b.this;
                            bVar.f5443g = AdEvents.createAdEvents(bVar.f5442f);
                            b bVar2 = b.this;
                            bVar2.a(bVar2.f5442f);
                            b.this.f5442f.start();
                            b.this.f5441e = true;
                            v vVar4 = b.this.f5439c;
                            if (v.a()) {
                                b.this.f5439c.b(b.this.f5440d, "Session started");
                            }
                        } catch (Throwable th) {
                            v vVar5 = b.this.f5439c;
                            if (v.a()) {
                                b.this.f5439c.b(b.this.f5440d, "Failed to create ad events", th);
                            }
                        }
                    } catch (Throwable th2) {
                        v vVar6 = b.this.f5439c;
                        if (v.a()) {
                            b.this.f5439c.b(b.this.f5440d, "Failed to create session", th2);
                        }
                    }
                }
            }
        });
    }

    public void c() {
        a("track loaded", new Runnable() { // from class: com.applovin.impl.sdk.a.b.2
            @Override // java.lang.Runnable
            public void run() {
                b.this.f5443g.loaded();
            }
        });
    }

    public void d() {
        a("track impression event", new Runnable() { // from class: com.applovin.impl.sdk.a.b.3
            @Override // java.lang.Runnable
            public void run() {
                b.this.f5443g.impressionOccurred();
            }
        });
    }

    public void e() {
        a("stop session", new Runnable() { // from class: com.applovin.impl.sdk.a.b.6
            @Override // java.lang.Runnable
            public void run() {
                b.this.f5441e = false;
                b.this.f5442f.finish();
                b.this.f5442f = null;
                b.this.f5443g = null;
            }
        });
    }
}
