package com.ironsource.mediationsdk.a;

import com.ironsource.mediationsdk.a.b;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.o;
/* loaded from: classes3.dex */
public final class d extends b {
    private static d w;
    private String x;

    private d() {
        this.r = "ironbeast";
        this.q = 2;
        this.s = IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
        this.x = "";
    }

    public static synchronized d e() {
        d dVar;
        synchronized (d.class) {
            if (w == null) {
                d dVar2 = new d();
                w = dVar2;
                dVar2.a();
            }
            dVar = w;
        }
        return dVar;
    }

    @Override // com.ironsource.mediationsdk.a.b
    protected final void b() {
        this.t.add(2001);
        this.t.add(2002);
        this.t.add(2003);
        this.t.add(2004);
        this.t.add(Integer.valueOf((int) IronSourceConstants.IS_INSTANCE_LOAD_FAILED));
        this.t.add(Integer.valueOf((int) IronSourceConstants.IS_INSTANCE_LOAD_NO_FILL));
        this.t.add(Integer.valueOf((int) IronSourceConstants.IS_INSTANCE_READY_TRUE));
        this.t.add(Integer.valueOf((int) IronSourceConstants.IS_INSTANCE_READY_FALSE));
        this.t.add(3001);
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_CALLBACK_LOAD_ERROR));
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_RELOAD));
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_RELOAD_FAILED));
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_CALLBACK_RELOAD_SUCCESS));
        this.t.add(3002);
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_INSTANCE_RELOAD));
        this.t.add(3005);
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_INSTANCE_LOAD_ERROR));
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_INSTANCE_RELOAD_SUCCESS));
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_INSTANCE_RELOAD_ERROR));
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_INSTANCE_UNEXPECTED_LOAD_SUCCESS));
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_INSTANCE_UNEXPECTED_RELOAD_SUCCESS));
        this.t.add(Integer.valueOf((int) IronSourceConstants.BN_INSTANCE_SHOW));
    }

    @Override // com.ironsource.mediationsdk.a.b
    protected final boolean c(c cVar) {
        return false;
    }

    @Override // com.ironsource.mediationsdk.a.b
    protected final String d(int i) {
        return this.x;
    }

    @Override // com.ironsource.mediationsdk.a.b
    protected final boolean d(c cVar) {
        int a2 = cVar.a();
        return a2 == 2204 || a2 == 2004 || a2 == 2005 || a2 == 2301 || a2 == 2300 || a2 == 3009;
    }

    @Override // com.ironsource.mediationsdk.a.b
    protected final int e(c cVar) {
        return o.a().b(e(cVar.a()) == b.a.BANNER.f10932f ? 3 : 2);
    }
}
