package com.ironsource.mediationsdk.adunit.c;

import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.B;
import com.ironsource.mediationsdk.C1351h;
import com.ironsource.mediationsdk.C1352i;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.aa;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.ironsource.mediationsdk.adunit.c.b.a;
import com.ironsource.mediationsdk.adunit.c.e;
import com.ironsource.mediationsdk.adunit.d.a.a;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.k;
import com.ironsource.mediationsdk.utils.o;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes3.dex */
public abstract class d<Smash extends com.ironsource.mediationsdk.adunit.d.a.a<?>, Adapter extends BaseAdInteractionAdapter<?, ? extends AdapterAdInteractionListener>> extends e<Smash, Adapter> implements com.ironsource.mediationsdk.adunit.c.a.a {
    public d(a aVar, Set<ImpressionDataListener> set, IronSourceSegment ironSourceSegment) {
        super(aVar, set, ironSourceSegment);
    }

    private void a(IronSourceError ironSourceError, String str) {
        this.q.f10983d.a(h(), ironSourceError.getErrorCode(), ironSourceError.getErrorMessage(), str);
        this.o.b();
        this.r.b(ironSourceError);
        if (this.m.f11002h.b()) {
            a(false, false);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.a
    public final void a(com.ironsource.mediationsdk.adunit.d.a.a<?> aVar) {
        IronLog.INTERNAL.verbose(a(aVar.l()));
        b bVar = this.r;
        if (bVar.f11003a == IronSource.AD_UNIT.INTERSTITIAL) {
            B.a().e();
        } else if (bVar.f11003a != IronSource.AD_UNIT.REWARDED_VIDEO) {
            IronLog.INTERNAL.warning("ad unit not supported - " + bVar.f11003a);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.a
    public final void a(IronSourceError ironSourceError, com.ironsource.mediationsdk.adunit.d.a.a<?> aVar) {
        IronLog.INTERNAL.verbose(a(aVar.l() + " - error = " + ironSourceError));
        this.f11018c.put(aVar.k(), C1352i.a.ISAuctionPerformanceFailedToShow);
        a(e.a.READY_TO_LOAD);
        a(ironSourceError, "");
    }

    public final void a(Placement placement) {
        com.ironsource.mediationsdk.adunit.d.a.a aVar;
        IronSourceError ironSourceError;
        String stringBuffer;
        IronLog.INTERNAL.verbose(a("state = " + this.n));
        synchronized (this.t) {
            this.j = placement;
            this.q.f10983d.a(h());
            int i = 510;
            aVar = null;
            if (this.n == e.a.SHOWING) {
                IronSource.AD_UNIT ad_unit = this.m.f10995a;
                if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
                    i = IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW;
                } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
                    i = 1022;
                } else {
                    IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
                }
                ironSourceError = new IronSourceError(i, "can't show ad while an ad is already showing");
            } else if (this.n != e.a.READY_TO_SHOW) {
                ironSourceError = new IronSourceError(509, "show called while no ads are available");
            } else if (placement == null) {
                IronSource.AD_UNIT ad_unit2 = this.m.f10995a;
                if (ad_unit2 == IronSource.AD_UNIT.INTERSTITIAL) {
                    i = 1020;
                } else if (ad_unit2 == IronSource.AD_UNIT.REWARDED_VIDEO) {
                    i = 1021;
                } else {
                    IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit2);
                }
                ironSourceError = new IronSourceError(i, "empty default placement");
            } else {
                ironSourceError = k.a(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName(), this.m.f10995a) ? new IronSourceError(IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT, "placement " + placement.getPlacementName() + " is capped") : null;
            }
            if (ironSourceError != null) {
                IronLog.API.error(a(ironSourceError.getErrorMessage()));
                stringBuffer = "";
            } else {
                StringBuffer stringBuffer2 = new StringBuffer();
                Iterator it = this.f11016a.a().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    com.ironsource.mediationsdk.adunit.d.a.a aVar2 = (com.ironsource.mediationsdk.adunit.d.a.a) it.next();
                    if (aVar2.a()) {
                        a(e.a.SHOWING);
                        aVar2.a(true);
                        aVar = aVar2;
                        break;
                    }
                    if (aVar2.g() != null) {
                        stringBuffer2.append(aVar2.k() + ":" + aVar2.g() + ",");
                    }
                    aVar2.a(false);
                    IronLog.INTERNAL.verbose(a(aVar2.l() + " - not ready to show"));
                }
                if (aVar == null) {
                    ironSourceError = ErrorBuilder.buildNoAdsToShowError(this.m.f10995a.toString());
                    stringBuffer = stringBuffer2.toString();
                }
            }
            a(ironSourceError, stringBuffer);
        }
        if (aVar != null) {
            Placement placement2 = this.j;
            if (this.m.f11002h.b()) {
                this.p.a();
            }
            aVar.a(placement2);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.a
    public final void b(com.ironsource.mediationsdk.adunit.d.a.a<?> aVar) {
        IronLog.INTERNAL.verbose(a(aVar.l()));
        this.f11016a.a(aVar);
        this.l.a(aVar);
        if (this.l.b(aVar)) {
            IronLog.INTERNAL.verbose(a(aVar.k() + " was session capped"));
            aVar.f();
            IronSourceUtils.sendAutomationLog(aVar.k() + " was session capped");
        }
        k.b(ContextProvider.getInstance().getApplicationContext(), h(), this.m.f10995a);
        if (k.a(ContextProvider.getInstance().getApplicationContext(), h(), this.m.f10995a)) {
            IronLog.INTERNAL.verbose(a("placement " + h() + " is capped"));
            this.q.f10983d.h(h());
        }
        b bVar = this.r;
        if (bVar.f11003a == IronSource.AD_UNIT.INTERSTITIAL) {
            B.a().c();
        } else if (bVar.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            aa.a().b();
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + bVar.f11003a);
        }
        if (this.m.f11002h.b()) {
            a(false, false);
        }
        o.a().a(this.m.f10995a);
        if (this.m.a()) {
            com.ironsource.mediationsdk.server.b bVar2 = this.f11017b.get(aVar.k());
            if (bVar2 != null) {
                C1351h.a(bVar2, aVar.i(), this.i, h());
                this.f11018c.put(aVar.k(), C1352i.a.ISAuctionPerformanceShowedSuccessfully);
                a(bVar2, h());
            } else {
                String k = aVar.k();
                String str = "showing instance missing from waterfall - " + k;
                IronLog.INTERNAL.verbose(a(str));
                this.q.f10984e.a(1011, str, k);
            }
        }
        c cVar = this.o;
        if (cVar.f11012a.f11004a == a.EnumC0323a.AUTOMATIC_LOAD_WHILE_SHOW) {
            cVar.a(cVar.f11012a.f11005b);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.e
    public final boolean b() {
        if (f()) {
            if (!this.k || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) {
                Iterator it = this.f11016a.a().iterator();
                while (it.hasNext()) {
                    if (((com.ironsource.mediationsdk.adunit.d.a.a) it.next()).a()) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.a
    public final String c() {
        StringBuilder sb = new StringBuilder();
        if (this.n == e.a.READY_TO_SHOW) {
            Iterator it = this.f11016a.a().iterator();
            while (it.hasNext()) {
                com.ironsource.mediationsdk.adunit.d.a.a aVar = (com.ironsource.mediationsdk.adunit.d.a.a) it.next();
                if (aVar.d()) {
                    sb.append(aVar.k() + ";");
                }
            }
        }
        return sb.toString();
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.a
    public final void c(com.ironsource.mediationsdk.adunit.d.a.a<?> aVar) {
        IronLog.INTERNAL.verbose(a(aVar.l()));
        if (this.n == e.a.SHOWING) {
            a(e.a.READY_TO_LOAD);
        }
        c cVar = this.o;
        if (cVar.f11012a.f11004a == a.EnumC0323a.AUTOMATIC_LOAD_AFTER_CLOSE) {
            cVar.a(cVar.f11012a.f11005b);
        }
        b bVar = this.r;
        if (bVar.f11003a == IronSource.AD_UNIT.INTERSTITIAL) {
            B.a().d();
        } else if (bVar.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            aa.a().c();
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + bVar.f11003a);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.a
    public final void d(com.ironsource.mediationsdk.adunit.d.a.a<?> aVar) {
        IronLog.INTERNAL.verbose(a(aVar.l()));
        b bVar = this.r;
        if (bVar.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            aa.a().d();
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + bVar.f11003a);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.a
    public final void e(com.ironsource.mediationsdk.adunit.d.a.a<?> aVar) {
        IronLog.INTERNAL.verbose(a(aVar.l()));
        b bVar = this.r;
        if (bVar.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            aa.a().e();
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + bVar.f11003a);
        }
    }
}
