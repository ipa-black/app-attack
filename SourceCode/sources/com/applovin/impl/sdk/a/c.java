package com.applovin.impl.sdk.a;

import android.webkit.WebView;
import com.applovin.impl.sdk.v;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
/* loaded from: classes.dex */
public class c extends b {
    public c(com.applovin.impl.sdk.ad.a aVar) {
        super(aVar);
    }

    @Override // com.applovin.impl.sdk.a.b
    protected AdSessionConfiguration a() {
        try {
            return AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.LOADED, Owner.NATIVE, Owner.NONE, false);
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
        try {
            return AdSessionContext.createHtmlAdSessionContext(this.f5438b.ao().d(), webView, this.f5437a.getOpenMeasurementContentUrl(), this.f5437a.getOpenMeasurementCustomReferenceData());
        } catch (Throwable th) {
            v vVar = this.f5439c;
            if (v.a()) {
                this.f5439c.b(this.f5440d, "Failed to create ad session context", th);
            }
            return null;
        }
    }
}
