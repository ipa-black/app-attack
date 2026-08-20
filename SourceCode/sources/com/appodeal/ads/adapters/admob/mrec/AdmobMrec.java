package com.appodeal.ads.adapters.admob.mrec;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
/* loaded from: classes2.dex */
public class AdmobMrec extends UnifiedAdmobMrec<AdView, AdRequest> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.appodeal.ads.adapters.admob.mrec.UnifiedAdmobMrec
    public AdView createAdView(Context context) {
        return new AdView(context);
    }
}
