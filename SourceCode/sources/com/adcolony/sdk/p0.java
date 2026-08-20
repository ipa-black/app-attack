package com.adcolony.sdk;

import android.util.Log;
import android.webkit.WebView;
import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iab.omid.library.adcolony.adsession.AdEvents;
import com.iab.omid.library.adcolony.adsession.AdSession;
import com.iab.omid.library.adcolony.adsession.AdSessionConfiguration;
import com.iab.omid.library.adcolony.adsession.AdSessionContext;
import com.iab.omid.library.adcolony.adsession.CreativeType;
import com.iab.omid.library.adcolony.adsession.ErrorType;
import com.iab.omid.library.adcolony.adsession.ImpressionType;
import com.iab.omid.library.adcolony.adsession.Owner;
import com.iab.omid.library.adcolony.adsession.VerificationScriptResource;
import com.iab.omid.library.adcolony.adsession.media.InteractionType;
import com.iab.omid.library.adcolony.adsession.media.MediaEvents;
import com.iab.omid.library.adcolony.adsession.media.Position;
import com.iab.omid.library.adcolony.adsession.media.VastProperties;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p0 {

    /* renamed from: a  reason: collision with root package name */
    private AdSession f471a;

    /* renamed from: b  reason: collision with root package name */
    private AdEvents f472b;

    /* renamed from: c  reason: collision with root package name */
    private MediaEvents f473c;

    /* renamed from: e  reason: collision with root package name */
    private int f475e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f477g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f478h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private String n;
    private String o;

    /* renamed from: d  reason: collision with root package name */
    private List<VerificationScriptResource> f474d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private String f476f = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f479a;

        a(String str) {
            this.f479a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            f1 b2 = c0.b();
            f1 b3 = c0.b();
            c0.b(b3, "session_type", p0.this.f475e);
            c0.a(b3, "session_id", p0.this.f476f);
            c0.a(b3, "event", this.f479a);
            c0.a(b2, SessionDescription.ATTR_TYPE, "iab_hook");
            c0.a(b2, "message", b3.toString());
            new h0("CustomMessage.controller_send", 0, b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements AdColonyCustomMessageListener {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f482a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f483b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ float f484c;

            a(String str, String str2, float f2) {
                this.f482a = str;
                this.f483b = str2;
                this.f484c = f2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f482a.equals(p0.this.o)) {
                    p0.this.a(this.f483b, this.f484c);
                    return;
                }
                AdColonyAdView adColonyAdView = com.adcolony.sdk.a.b().c().d().get(this.f482a);
                p0 omidManager = adColonyAdView != null ? adColonyAdView.getOmidManager() : null;
                if (omidManager != null) {
                    omidManager.a(this.f483b, this.f484c);
                }
            }
        }

        b() {
        }

        @Override // com.adcolony.sdk.AdColonyCustomMessageListener
        public void onAdColonyCustomMessage(AdColonyCustomMessage adColonyCustomMessage) {
            f1 b2 = c0.b(adColonyCustomMessage.getMessage());
            String h2 = c0.h(b2, "event_type");
            float floatValue = BigDecimal.valueOf(c0.c(b2, "duration")).floatValue();
            boolean b3 = c0.b(b2, "replay");
            boolean equals = c0.h(b2, "skip_type").equals("dec");
            String h3 = c0.h(b2, "asi");
            if (h2.equals("skip") && equals) {
                p0.this.k = true;
            } else if (b3 && (h2.equals(TtmlNode.START) || h2.equals("first_quartile") || h2.equals("midpoint") || h2.equals("third_quartile") || h2.equals("complete"))) {
            } else {
                z0.b(new a(h3, h2, floatValue));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(f1 f1Var, String str) {
        VerificationScriptResource createVerificationScriptResourceWithoutParameters;
        this.f475e = -1;
        this.n = "";
        this.o = "";
        this.f475e = a(f1Var);
        this.j = c0.b(f1Var, "skippable");
        this.l = c0.d(f1Var, "skip_offset");
        this.m = c0.d(f1Var, "video_duration");
        e1 a2 = c0.a(f1Var, "js_resources");
        e1 a3 = c0.a(f1Var, "verification_params");
        e1 a4 = c0.a(f1Var, "vendor_keys");
        this.o = str;
        for (int i = 0; i < a2.b(); i++) {
            try {
                String b2 = c0.b(a3, i);
                String b3 = c0.b(a4, i);
                URL url = new URL(c0.b(a2, i));
                if (!b2.equals("") && !b3.equals("")) {
                    createVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithParameters(b3, url, b2);
                } else {
                    createVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url);
                }
                this.f474d.add(createVerificationScriptResourceWithoutParameters);
            } catch (MalformedURLException unused) {
                new e0.a().a("Invalid js resource url passed to Omid").a(e0.i);
            }
        }
        try {
            this.n = com.adcolony.sdk.a.b().p().a(c0.h(f1Var, "filepath"), true).toString();
        } catch (IOException unused2) {
            new e0.a().a("Error loading IAB JS Client").a(e0.i);
        }
    }

    private void e() {
        AdColony.addCustomMessageListener(new b(), "viewability_ad_event");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f475e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.f478h = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        AdColony.removeCustomMessageListener("viewability_ad_event");
        this.f471a.finish();
        b("end_session");
        this.f471a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSession c() {
        return this.f471a;
    }

    private int a(f1 f1Var) {
        if (this.f475e == -1) {
            int d2 = c0.d(f1Var, "ad_unit_type");
            String h2 = c0.h(f1Var, "ad_type");
            if (d2 == 0) {
                return 0;
            }
            if (d2 == 1) {
                if (h2.equals("video")) {
                    return 0;
                }
                if (h2.equals("display")) {
                    return 1;
                }
                if (h2.equals("banner_display") || h2.equals("interstitial_display")) {
                    return 2;
                }
            }
        }
        return this.f475e;
    }

    private void b(String str) {
        if (z0.a(new a(str))) {
            return;
        }
        new e0.a().a("Executing ADCOmidManager.sendIabCustomMessage failed").a(e0.i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        VastProperties createVastPropertiesForNonSkippableMedia;
        if (this.i || this.f475e < 0 || this.f471a == null) {
            return;
        }
        b(cVar);
        e();
        this.f473c = this.f475e != 0 ? null : MediaEvents.createMediaEvents(this.f471a);
        try {
            this.f471a.start();
            this.f472b = AdEvents.createAdEvents(this.f471a);
            b("start_session");
            if (this.f473c != null) {
                Position position = Position.PREROLL;
                if (this.j) {
                    createVastPropertiesForNonSkippableMedia = VastProperties.createVastPropertiesForSkippableMedia(this.l, true, position);
                } else {
                    createVastPropertiesForNonSkippableMedia = VastProperties.createVastPropertiesForNonSkippableMedia(true, position);
                }
                this.f472b.loaded(createVastPropertiesForNonSkippableMedia);
            } else {
                this.f472b.loaded();
            }
            this.i = true;
        } catch (NullPointerException e2) {
            this.f471a.error(ErrorType.GENERIC, "Exception occurred on AdSession.start: " + Log.getStackTraceString(e2));
            b();
            new e0.a().a("Exception in ADCOmidManager on AdSession.start: ").a(Log.getStackTraceString(e2)).a(" Ad with adSessionId: " + this.o + ".").a(e0.i);
        }
    }

    private void b(c cVar) {
        b("register_ad_view");
        b1 b1Var = com.adcolony.sdk.a.b().B().get(Integer.valueOf(cVar.k()));
        if (b1Var == null && !cVar.n().isEmpty()) {
            b1Var = cVar.n().entrySet().iterator().next().getValue();
        }
        AdSession adSession = this.f471a;
        if (adSession != null && b1Var != null) {
            adSession.registerAdView(b1Var);
            if (b1Var instanceof l0) {
                ((l0) b1Var).p();
            }
        } else if (adSession != null) {
            adSession.registerAdView(cVar);
            cVar.a(this.f471a);
            b("register_obstructions");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() throws IllegalArgumentException {
        a((WebView) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(WebView webView) throws IllegalArgumentException {
        String str;
        List<VerificationScriptResource> list;
        if (this.f475e < 0 || (str = this.n) == null || str.equals("") || (list = this.f474d) == null) {
            return;
        }
        if (!list.isEmpty() || d() == 2) {
            k b2 = com.adcolony.sdk.a.b();
            Owner owner = Owner.NATIVE;
            ImpressionType impressionType = ImpressionType.BEGIN_TO_RENDER;
            int d2 = d();
            if (d2 == 0) {
                AdSession createAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(CreativeType.VIDEO, impressionType, owner, owner, false), AdSessionContext.createNativeAdSessionContext(b2.t(), this.n, this.f474d, null, null));
                this.f471a = createAdSession;
                this.f476f = createAdSession.getAdSessionId();
                b("inject_javascript");
            } else if (d2 == 1) {
                AdSession createAdSession2 = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(CreativeType.NATIVE_DISPLAY, impressionType, owner, null, false), AdSessionContext.createNativeAdSessionContext(b2.t(), this.n, this.f474d, null, null));
                this.f471a = createAdSession2;
                this.f476f = createAdSession2.getAdSessionId();
                b("inject_javascript");
            } else if (d2 != 2) {
            } else {
                AdSession createAdSession3 = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, impressionType, owner, null, false), AdSessionContext.createHtmlAdSessionContext(b2.t(), webView, "", null));
                this.f471a = createAdSession3;
                this.f476f = createAdSession3.getAdSessionId();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        a(str, 0.0f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    void a(String str, float f2) {
        char c2;
        if (!com.adcolony.sdk.a.c() || this.f471a == null) {
            return;
        }
        if (this.f473c != null || str.equals(TtmlNode.START) || str.equals("skip") || str.equals("continue") || str.equals("cancel")) {
            try {
                switch (str.hashCode()) {
                    case -1941887438:
                        if (str.equals("first_quartile")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1710060637:
                        if (str.equals("buffer_start")) {
                            c2 = '\f';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1638835128:
                        if (str.equals("midpoint")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1367724422:
                        if (str.equals("cancel")) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -934426579:
                        if (str.equals("resume")) {
                            c2 = 11;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -651914917:
                        if (str.equals("third_quartile")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -599445191:
                        if (str.equals("complete")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -567202649:
                        if (str.equals("continue")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -342650039:
                        if (str.equals("sound_mute")) {
                            c2 = '\b';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3532159:
                        if (str.equals("skip")) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 106440182:
                        if (str.equals("pause")) {
                            c2 = '\n';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 109757538:
                        if (str.equals(TtmlNode.START)) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 583742045:
                        if (str.equals("in_video_engagement")) {
                            c2 = 14;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 823102269:
                        if (str.equals("html5_interaction")) {
                            c2 = 15;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1648173410:
                        if (str.equals("sound_unmute")) {
                            c2 = '\t';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1906584668:
                        if (str.equals("buffer_end")) {
                            c2 = '\r';
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        this.f472b.impressionOccurred();
                        MediaEvents mediaEvents = this.f473c;
                        if (mediaEvents != null) {
                            if (f2 <= 0.0f) {
                                f2 = this.m;
                            }
                            mediaEvents.start(f2, 1.0f);
                        }
                        b(str);
                        return;
                    case 1:
                        this.f473c.firstQuartile();
                        b(str);
                        return;
                    case 2:
                        this.f473c.midpoint();
                        b(str);
                        return;
                    case 3:
                        this.f473c.thirdQuartile();
                        b(str);
                        return;
                    case 4:
                        this.k = true;
                        this.f473c.complete();
                        b(str);
                        return;
                    case 5:
                        b(str);
                        b();
                        return;
                    case 6:
                    case 7:
                        MediaEvents mediaEvents2 = this.f473c;
                        if (mediaEvents2 != null) {
                            mediaEvents2.skipped();
                        }
                        b(str);
                        b();
                        return;
                    case '\b':
                        this.f473c.volumeChange(0.0f);
                        b(str);
                        return;
                    case '\t':
                        this.f473c.volumeChange(1.0f);
                        b(str);
                        return;
                    case '\n':
                        if (this.f477g || this.f478h || this.k) {
                            return;
                        }
                        this.f473c.pause();
                        b(str);
                        this.f477g = true;
                        this.f478h = false;
                        return;
                    case 11:
                        if (!this.f477g || this.k) {
                            return;
                        }
                        this.f473c.resume();
                        b(str);
                        this.f477g = false;
                        return;
                    case '\f':
                        this.f473c.bufferStart();
                        b(str);
                        return;
                    case '\r':
                        this.f473c.bufferFinish();
                        b(str);
                        return;
                    case 14:
                    case 15:
                        this.f473c.adUserInteraction(InteractionType.CLICK);
                        b(str);
                        if (!this.f478h || this.f477g || this.k) {
                            return;
                        }
                        this.f473c.pause();
                        b("pause");
                        this.f477g = true;
                        this.f478h = false;
                        return;
                    default:
                        return;
                }
            } catch (IllegalArgumentException | IllegalStateException e2) {
                new e0.a().a("Recording IAB event for ").a(str).a(" caused " + e2.getClass()).a(e0.f296g);
            }
        }
    }
}
