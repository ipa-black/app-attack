package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.graphics.PointF;
import android.net.Uri;
import android.view.ViewGroup;
import com.applovin.impl.adview.j;
import com.applovin.impl.b.a;
import com.applovin.impl.b.k;
import com.applovin.impl.b.l;
import com.applovin.impl.b.m;
import com.applovin.impl.b.o;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class c extends e {
    private final com.applovin.impl.b.a H;
    private final Set<k> I;

    public c(com.applovin.impl.sdk.ad.e eVar, Activity activity, n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.I = hashSet;
        com.applovin.impl.b.a aVar = (com.applovin.impl.b.a) eVar;
        this.H = aVar;
        hashSet.addAll(aVar.a(a.c.VIDEO, l.f4575a));
        a(a.c.IMPRESSION);
        a(a.c.VIDEO, "creativeView");
        aVar.o().d();
    }

    private void G() {
        if (!r() || this.I.isEmpty()) {
            return;
        }
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.d("AppLovinFullscreenActivity", "Firing " + this.I.size() + " un-fired video progress trackers when video was completed.");
        }
        a(this.I);
    }

    private void a(a.c cVar) {
        a(cVar, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void a(a.c cVar, com.applovin.impl.b.f fVar) {
        a(cVar, "", fVar);
    }

    private void a(a.c cVar, String str) {
        a(cVar, str, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void a(a.c cVar, String str, com.applovin.impl.b.f fVar) {
        a(this.H.a(cVar, str), fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Set<k> set) {
        a(set, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void a(Set<k> set, com.applovin.impl.b.f fVar) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.v.I());
        o aN = this.H.aN();
        Uri a2 = aN != null ? aN.a() : null;
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Firing " + set.size() + " tracker(s): " + set);
        }
        m.a(set, seconds, a2, fVar, this.f4300b);
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void A() {
        G();
        if (!m.c(this.H)) {
            v vVar = this.f4301c;
            if (v.a()) {
                this.f4301c.b("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
            }
            h();
        } else if (this.F) {
        } else {
            a(a.c.COMPANION, "creativeView");
            this.H.o().i();
            this.H.o().a(this.f4304f, Collections.singletonList(new com.applovin.impl.sdk.a.d(this.f4304f, FriendlyObstructionPurpose.CLOSE_AD, "close button")));
            super.A();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void a(PointF pointF) {
        a(a.c.VIDEO_CLICK);
        this.H.o().o();
        super.a(pointF);
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        this.B.a("PROGRESS_TRACKING", TimeUnit.SECONDS.toMillis(1L), new j.a() { // from class: com.applovin.impl.adview.activity.b.c.1
            @Override // com.applovin.impl.adview.j.a
            public void a() {
                long seconds = TimeUnit.MILLISECONDS.toSeconds(c.this.D - (c.this.v.H() - c.this.v.I()));
                int F = c.this.F();
                HashSet hashSet = new HashSet();
                for (k kVar : new HashSet(c.this.I)) {
                    if (kVar.a(seconds, F)) {
                        hashSet.add(kVar);
                        c.this.I.remove(kVar);
                    }
                }
                c.this.a(hashSet);
                if (F >= 25 && F < 50) {
                    c.this.H.o().f();
                } else if (F >= 50 && F < 75) {
                    c.this.H.o().g();
                } else if (F >= 75) {
                    c.this.H.o().h();
                }
            }

            @Override // com.applovin.impl.adview.j.a
            public boolean b() {
                return !c.this.F;
            }
        });
        ArrayList arrayList = new ArrayList();
        if (this.w != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.w, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        if (this.x != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.x, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        if (this.A != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.A, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        if (this.y != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.y, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        if (this.z != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.z, FriendlyObstructionPurpose.VIDEO_CONTROLS, "generic webview overlay containing HTML controls"));
        }
        this.H.o().a(this.u, arrayList);
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void c() {
        a(a.c.VIDEO, "skip");
        this.H.o().n();
        super.c();
    }

    @Override // com.applovin.impl.adview.activity.b.e
    protected void c(long j) {
        super.c(j);
        this.H.o().a((float) TimeUnit.MILLISECONDS.toSeconds(j), Utils.isVideoMutedInitially(this.f4300b));
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void c(String str) {
        a(a.c.ERROR, com.applovin.impl.b.f.MEDIA_FILE_ERROR);
        this.H.o().a(str);
        super.c(str);
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    public void d() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    public void e() {
        this.B.c();
        super.e();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void f() {
        super.f();
        a(this.F ? a.c.COMPANION : a.c.VIDEO, "resume");
        this.H.o().k();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void g() {
        super.g();
        a(this.F ? a.c.COMPANION : a.c.VIDEO, "pause");
        this.H.o().j();
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    public void h() {
        if (this.H != null) {
            a(a.c.VIDEO, "close");
            a(a.c.COMPANION, "close");
        }
        super.h();
    }

    @Override // com.applovin.impl.adview.activity.b.e, com.applovin.impl.adview.activity.b.a
    protected void u() {
        long ae;
        int t;
        long j = 0;
        if (this.H.ad() >= 0 || this.H.ae() >= 0) {
            if (this.H.ad() >= 0) {
                ae = this.H.ad();
            } else {
                com.applovin.impl.b.a aVar = this.H;
                com.applovin.impl.b.n aM = aVar.aM();
                if (aM != null && aM.b() > 0) {
                    j = TimeUnit.SECONDS.toMillis(aM.b());
                } else if (this.D > 0) {
                    j = this.D;
                }
                if (aVar.af() && (t = (int) aVar.t()) > 0) {
                    j += TimeUnit.SECONDS.toMillis(t);
                }
                ae = (long) (j * (this.H.ae() / 100.0d));
            }
            b(ae);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.e
    protected void x() {
        super.x();
        com.applovin.impl.b.a aVar = this.H;
        if (aVar != null) {
            aVar.o().l();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.e
    protected void y() {
        super.y();
        com.applovin.impl.b.a aVar = this.H;
        if (aVar != null) {
            aVar.o().m();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.e
    public void z() {
        super.z();
        a(a.c.VIDEO, this.C ? "mute" : "unmute");
        this.H.o().a(this.C);
    }
}
