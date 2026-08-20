package com.ironsource.mediationsdk.adunit.c;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.aa;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.ironsource.mediationsdk.adunit.d.a.b;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.Placement;
import java.util.Set;
/* loaded from: classes3.dex */
public abstract class f<Smash extends com.ironsource.mediationsdk.adunit.d.a.b<?>> extends d<Smash, BaseAdInteractionAdapter<?, AdapterAdRewardListener>> implements com.ironsource.mediationsdk.adunit.c.a.c {
    public f(a aVar, Set<ImpressionDataListener> set, IronSourceSegment ironSourceSegment) {
        super(aVar, set, ironSourceSegment);
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.c
    public final void a(com.ironsource.mediationsdk.adunit.d.a.b<?> bVar, Placement placement) {
        IronLog.INTERNAL.verbose(a(bVar.l()));
        b bVar2 = this.r;
        if (bVar2.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            aa.a().a(placement);
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + bVar2.f11003a);
        }
    }
}
