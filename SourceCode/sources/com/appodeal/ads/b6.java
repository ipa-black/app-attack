package com.appodeal.ads;

import android.app.Activity;
import com.appodeal.ads.r5;
import com.appodeal.ads.x5;
import com.appodeal.ads.z5;
/* loaded from: classes.dex */
public abstract class b6<AdObjectType extends r5<AdRequestType, ?, ?, ?>, AdRequestType extends z5<AdObjectType>> extends v2<AdObjectType, AdRequestType> {
    public b6(g<AdRequestType, AdObjectType, Object> gVar) {
        super(gVar);
    }

    @Override // com.appodeal.ads.b0
    public final void a(r rVar, l lVar, boolean z) {
        r5 r5Var = (r5) lVar;
        super.a((b6<AdObjectType, AdRequestType>) ((z5) rVar), (z5) r5Var, z);
        Activity b2 = n5.b();
        if (b2 != null) {
            x5<AdRequestType, AdObjectType> c2 = c();
            u<AdObjectType, AdRequestType, ?> uVar = (u<AdObjectType, AdRequestType, ?>) this.f6556a;
            x5.d a2 = c2.a(b2);
            if ((a2.f7951b == f0.VISIBLE || a2.f7950a != null) && uVar.k() && !r5Var.f() && c2.a((u<AdObjectType, u<AdObjectType, AdRequestType, ?>, ?>) uVar, (u<AdObjectType, AdRequestType, ?>) uVar.y) <= 0 && !com.appodeal.ads.utils.c.a(b2)) {
                c().a2(b2, new y5(this.f6556a.e(), c().b(b2), true, false), (u) ((u<AdObjectType, AdRequestType, ?>) this.f6556a));
            }
        }
    }

    public abstract x5<AdRequestType, AdObjectType> c();

    @Override // com.appodeal.ads.b0
    public final void h(r rVar, l lVar) {
        z5 z5Var = (z5) rVar;
        r5 r5Var = (r5) lVar;
        if (this.f6556a.k()) {
            this.f6556a.c(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext());
        }
    }

    @Override // com.appodeal.ads.b0
    public final boolean k(r rVar, l lVar, l2 l2Var) {
        r5 r5Var = (r5) lVar;
        return (((z5) rVar).z ^ true) && this.f6556a.q > 0;
    }

    @Override // com.appodeal.ads.b0
    public final boolean p(r rVar, l lVar) {
        r5 r5Var = (r5) lVar;
        if (super.p((z5) rVar, r5Var)) {
            x5<AdRequestType, AdObjectType> c2 = c();
            Activity b2 = n5.b();
            u<AdObjectType, AdRequestType, ?> uVar = (u<AdObjectType, AdRequestType, ?>) this.f6556a;
            x5.d a2 = c2.a(b2);
            if ((a2.f7951b != f0.VISIBLE && a2.f7950a == null) || !uVar.k() || r5Var.f() || c2.a((u<AdObjectType, u<AdObjectType, AdRequestType, ?>, ?>) uVar, (u<AdObjectType, AdRequestType, ?>) uVar.y) > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.appodeal.ads.v2
    public final void r(r rVar, l lVar) {
        z5 z5Var;
        AdRequestType adrequesttype = (AdRequestType) rVar;
        r5 r5Var = (r5) lVar;
        if (this.f6556a.k()) {
            if (!adrequesttype.f7340h && ((z5Var = (z5) this.f6556a.f()) == null || z5Var.b())) {
                this.f6556a.c(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext());
            }
            c().a(n5.b(), (u<AdObjectType, u<AdObjectType, AdRequestType, ?>, ?>) ((u<AdObjectType, AdRequestType, ?>) this.f6556a), (u<AdObjectType, AdRequestType, ?>) adrequesttype);
        }
    }
}
