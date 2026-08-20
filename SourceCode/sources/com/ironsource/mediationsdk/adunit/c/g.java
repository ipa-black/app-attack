package com.ironsource.mediationsdk.adunit.c;

import com.ironsource.mediationsdk.C1347d;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.ironsource.mediationsdk.adunit.c.b.a;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.List;
import java.util.Set;
/* loaded from: classes3.dex */
public final class g extends d<com.ironsource.mediationsdk.adunit.d.b, BaseAdInteractionAdapter<?, AdapterAdInteractionListener>> {
    public g(List<NetworkSettings> list, com.ironsource.mediationsdk.model.h hVar, String str, Set<ImpressionDataListener> set, IronSourceSegment ironSourceSegment) {
        super(new a(IronSource.AD_UNIT.INTERSTITIAL, str, list, hVar.i, hVar.f11261c, hVar.f11263e, hVar.f11264f, -1, new com.ironsource.mediationsdk.adunit.c.b.a(a.EnumC0323a.MANUAL, hVar.i.k, hVar.i.j)), set, ironSourceSegment);
    }

    private static BaseAdInteractionAdapter<?, AdapterAdInteractionListener> b(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        BaseAdAdapter<?, ?> b2 = C1347d.a().b(networkSettings, ad_unit);
        if (b2 == null || !(b2 instanceof BaseAdInteractionAdapter)) {
            return null;
        }
        try {
            return (BaseAdInteractionAdapter) b2;
        } catch (Exception e2) {
            IronLog.INTERNAL.error("exception creating adapter - " + e2.getMessage());
            return null;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.e
    protected final /* synthetic */ BaseAdAdapter a(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        return b(networkSettings, ad_unit);
    }

    @Override // com.ironsource.mediationsdk.adunit.c.e
    protected final /* synthetic */ com.ironsource.mediationsdk.adunit.d.a.c a(NetworkSettings networkSettings, BaseAdAdapter baseAdAdapter, int i, String str) {
        return new com.ironsource.mediationsdk.adunit.d.b(new com.ironsource.mediationsdk.adunit.d.a(IronSource.AD_UNIT.INTERSTITIAL, this.m.f10996b, i, this.f11023h, str, this.f11021f, this.f11022g, networkSettings, this.m.f11001g), (BaseAdInteractionAdapter) baseAdAdapter, this);
    }
}
