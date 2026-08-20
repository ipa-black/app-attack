package com.appodeal.ads;

import com.appodeal.ads.l;
import com.appodeal.ads.r;
/* loaded from: classes.dex */
public abstract class v2<AdObjectType extends l, AdRequestType extends r<AdObjectType>> extends b0<AdObjectType, AdRequestType, Object> {
    public v2(g<AdRequestType, AdObjectType, Object> gVar) {
        super(gVar);
    }

    @Override // com.appodeal.ads.b0
    public final void f(r rVar, l lVar, l2 l2Var) {
    }

    @Override // com.appodeal.ads.b0
    public final void g(r rVar, l lVar, l2 l2Var) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.appodeal.ads.b0
    public final void h(r rVar, l lVar, l2 l2Var) {
        r(rVar, lVar);
    }

    public abstract void r(AdRequestType adrequesttype, AdObjectType adobjecttype);
}
