package com.applovin.impl.sdk.utils;

import android.os.Bundle;
import com.applovin.adview.AppLovinAdView;
import com.appodeal.ads.modules.common.internal.LogConstants;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f6177a = new StringBuilder();

    public l a() {
        this.f6177a.append("\n========================================");
        return this;
    }

    public l a(Bundle bundle) {
        if (bundle == null) {
            return this;
        }
        for (String str : bundle.keySet()) {
            a(str, bundle.get(str));
        }
        return this;
    }

    public l a(AppLovinAdView appLovinAdView) {
        return a("Size", appLovinAdView.getSize().getWidth() + "x" + appLovinAdView.getSize().getHeight()).a("Alpha", Float.valueOf(appLovinAdView.getAlpha())).a("Visibility", r.b(appLovinAdView.getVisibility()));
    }

    public l a(com.applovin.impl.mediation.a.a aVar) {
        return a(LogConstants.KEY_NETWORK, aVar.S()).a("Adapter Version", aVar.h()).a("Format", aVar.getFormat() != null ? aVar.getFormat().getLabel() : LogConstants.KEY_UNKNOWN).a("Ad Unit ID", aVar.getAdUnitId()).a("Placement", aVar.getPlacement()).a("Network Placement", aVar.p()).a("Serve ID", aVar.f()).a("Creative ID", StringUtils.isValidString(aVar.getCreativeId()) ? aVar.getCreativeId() : "None").a("Ad Review Creative ID", StringUtils.isValidString(aVar.getAdReviewCreativeId()) ? aVar.getAdReviewCreativeId() : "None").a("DSP Name", StringUtils.isValidString(aVar.getDspName()) ? aVar.getDspName() : "None").a("DSP ID", StringUtils.isValidString(aVar.getDspId()) ? aVar.getDspId() : "None").a("Server Parameters", aVar.ab());
    }

    public l a(com.applovin.impl.sdk.ad.e eVar) {
        boolean z = eVar instanceof com.applovin.impl.b.a;
        a("Format", eVar.getAdZone().b() != null ? eVar.getAdZone().b().getLabel() : null).a("Ad ID", Long.valueOf(eVar.getAdIdNumber())).a("Zone ID", eVar.getAdZone().a()).a("Source", eVar.getSource()).a("Ad Class", z ? "VastAd" : "AdServerAd");
        String dspName = eVar.getDspName();
        if (StringUtils.isValidString(dspName)) {
            a("DSP Name", dspName);
        }
        if (z) {
            a("VAST DSP", ((com.applovin.impl.b.a) eVar).n());
        }
        return this;
    }

    public l a(com.applovin.impl.sdk.n nVar) {
        return a("Muted", Boolean.valueOf(nVar.q().isMuted()));
    }

    public l a(String str) {
        this.f6177a.append("\n").append(str);
        return this;
    }

    public l a(String str, Object obj) {
        return a(str, obj, "");
    }

    public l a(String str, Object obj, String str2) {
        this.f6177a.append("\n").append(str).append(": ").append(obj).append(str2);
        return this;
    }

    public l b(com.applovin.impl.sdk.ad.e eVar) {
        a("Target", eVar.p()).a("close_style", eVar.v()).a("close_delay_graphic", Long.valueOf(eVar.t()), "s");
        if (eVar instanceof com.applovin.impl.sdk.ad.a) {
            com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) eVar;
            a("HTML", aVar.b().substring(0, Math.min(aVar.b().length(), 64)));
        }
        if (eVar.hasVideoUrl()) {
            a("close_delay", Long.valueOf(eVar.r()), "s").a("skip_style", eVar.x()).a("Streaming", Boolean.valueOf(eVar.f())).a("Video Location", eVar.d()).a("video_button_properties", eVar.D());
        }
        return this;
    }

    public l b(String str) {
        this.f6177a.append(str);
        return this;
    }

    public String toString() {
        return this.f6177a.toString();
    }
}
