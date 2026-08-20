package com.ironsource.mediationsdk.adunit.d;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
/* loaded from: classes3.dex */
public final class c extends com.ironsource.mediationsdk.adunit.d.a.b<com.ironsource.mediationsdk.adunit.c.a.c> implements RewardedVideoAdListener {
    public c(a aVar, BaseAdInteractionAdapter<?, AdapterAdRewardListener> baseAdInteractionAdapter, com.ironsource.mediationsdk.adunit.c.a.c cVar) {
        super(aVar, baseAdInteractionAdapter, new com.ironsource.mediationsdk.model.a(aVar.f11035c, aVar.f11035c.getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), cVar);
    }
}
