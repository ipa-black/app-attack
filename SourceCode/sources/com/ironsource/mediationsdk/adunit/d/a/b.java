package com.ironsource.mediationsdk.adunit.d.a;

import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.ironsource.mediationsdk.H;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.ironsource.mediationsdk.adunit.c.a.c;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.f;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class b<Listener extends com.ironsource.mediationsdk.adunit.c.a.c> extends a<Listener> implements AdapterAdRewardListener {

    /* renamed from: g  reason: collision with root package name */
    private f f11042g;

    public b(com.ironsource.mediationsdk.adunit.d.a aVar, BaseAdInteractionAdapter<?, AdapterAdRewardListener> baseAdInteractionAdapter, com.ironsource.mediationsdk.model.a aVar2, Listener listener) {
        super(aVar, baseAdInteractionAdapter, aVar2, listener);
    }

    @Override // com.ironsource.mediationsdk.adunit.d.a.a, com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdClosed() {
        this.f11042g = new f();
        super.onAdClosed();
    }

    @Override // com.ironsource.mediationsdk.adunit.d.a.a, com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdOpened() {
        this.f11042g = null;
        super.onAdOpened();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener
    public void onAdRewarded() {
        if (this.f11047e == null) {
            IronLog.INTERNAL.verbose(c("placement is null "));
            if (this.f11045c != null) {
                this.f11045c.f10984e.l("mCurrentPlacement is null");
                return;
            }
            return;
        }
        IronLog.INTERNAL.verbose(c("placement name = " + q()));
        if (this.f11045c != null) {
            HashMap hashMap = new HashMap();
            if (H.a().n != null) {
                for (String str : H.a().n.keySet()) {
                    hashMap.put(ContentMetadata.KEY_CUSTOM_PREFIX + str, H.a().n.get(str));
                }
            }
            long currentTimeMillis = System.currentTimeMillis();
            this.f11045c.f10983d.a(q(), this.f11047e.getRewardName(), this.f11047e.getRewardAmount(), currentTimeMillis, IronSourceUtils.getTransId(currentTimeMillis, k()), f.a(this.f11042g), hashMap, H.a().m);
        }
        ((com.ironsource.mediationsdk.adunit.c.a.c) this.f11044b).a((b<?>) this, this.f11047e);
    }
}
