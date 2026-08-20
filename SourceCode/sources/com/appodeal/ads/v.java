package com.appodeal.ads;

import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.networking.LoadingError;
/* loaded from: classes.dex */
public final class v extends o<r<Object>, l> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ l f7859d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ r f7860e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ u f7861f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(u uVar, r rVar, l lVar, int i, l lVar2, r rVar2) {
        super(rVar, lVar, i);
        this.f7861f = uVar;
        this.f7859d = lVar2;
        this.f7860e = rVar2;
    }

    @Override // com.appodeal.ads.o
    public final void a() {
        n0 k = q4.k();
        AdType adType = this.f7861f.f7691f;
        double ecpm = this.f7859d.f6826c.getEcpm();
        l lVar = this.f7859d;
        k.d(adType, ecpm, lVar.f6827d, lVar.f6826c.getAdUnitName());
        b0<AdObjectType, AdRequestType, ?> b0Var = this.f7861f.f7689d;
        r rVar = this.f7860e;
        l lVar2 = this.f7859d;
        b0Var.getClass();
        rVar.getClass();
        if (lVar2 != null && !TextUtils.isEmpty(lVar2.f6826c.getId())) {
            lVar2.f6826c.b(System.currentTimeMillis());
        }
        b0Var.f6556a.a(LogConstants.EVENT_LOAD_START, lVar2, (LoadingError) null);
    }
}
