package com.appodeal.ads.adapters.notsy.mrec;

import android.content.Context;
import com.appodeal.ads.adapters.admob.mrec.UnifiedAdmobMrec;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.admanager.AdManagerAdView;
/* loaded from: classes2.dex */
public final class a extends UnifiedAdmobMrec<AdManagerAdView, AdManagerAdRequest> {
    @Override // com.appodeal.ads.adapters.admob.mrec.UnifiedAdmobMrec
    public final AdManagerAdView createAdView(Context context) {
        return new AdManagerAdView(context);
    }
}
