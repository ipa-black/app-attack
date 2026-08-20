package com.ironsource.mediationsdk.adunit.c;

import com.ironsource.mediationsdk.C1347d;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.ironsource.mediationsdk.adunit.c.b.a;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.model.o;
import java.util.List;
import java.util.Set;
/* loaded from: classes3.dex */
public final class h extends f<com.ironsource.mediationsdk.adunit.d.c> {
    public h(List<NetworkSettings> list, o oVar, String str, boolean z, Set<ImpressionDataListener> set, IronSourceSegment ironSourceSegment) {
        super(new a(IronSource.AD_UNIT.REWARDED_VIDEO, str, list, oVar.l, oVar.f11301c, oVar.f11303e, oVar.j, oVar.i, new com.ironsource.mediationsdk.adunit.c.b.a(z ? a.EnumC0323a.MANUAL : oVar.l.n ? a.EnumC0323a.AUTOMATIC_LOAD_WHILE_SHOW : a.EnumC0323a.AUTOMATIC_LOAD_AFTER_CLOSE, oVar.l.k, oVar.l.j)), set, ironSourceSegment);
    }

    private static BaseAdInteractionAdapter<?, AdapterAdRewardListener> b(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
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
        return new com.ironsource.mediationsdk.adunit.d.c(new com.ironsource.mediationsdk.adunit.d.a(IronSource.AD_UNIT.REWARDED_VIDEO, this.m.f10996b, i, this.f11023h, str, this.f11021f, this.f11022g, networkSettings, this.m.f11001g), (BaseAdInteractionAdapter) baseAdAdapter, this);
    }
}
