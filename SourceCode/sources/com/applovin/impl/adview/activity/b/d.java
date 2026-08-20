package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.graphics.PointF;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
public class d extends f {
    private final com.applovin.impl.b.a F;
    private final Set<k> G;

    public d(com.applovin.impl.sdk.ad.e eVar, final Activity activity, final n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.G = hashSet;
        com.applovin.impl.b.a aVar = (com.applovin.impl.b.a) eVar;
        this.F = aVar;
        if (aVar.aQ()) {
            this.A = new ImageView(activity);
            this.A.setScaleType(ImageView.ScaleType.FIT_XY);
            this.A.setClickable(true);
            this.A.setVisibility(8);
            this.A.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.activity.b.d.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Uri b2 = d.this.F.aP().b();
                    if (b2 != null) {
                        v vVar = d.this.f4301c;
                        if (v.a()) {
                            d.this.f4301c.b("AppLovinFullscreenActivity", "Industry Icon clicked, opening URL: " + b2);
                        }
                        d.this.a(a.c.INDUSTRY_ICON_CLICK);
                        Utils.openUri(activity, b2, nVar);
                    }
                }
            });
        }
        hashSet.addAll(aVar.a(a.c.VIDEO, l.f4575a));
        a(a.c.IMPRESSION);
        a(a.c.VIDEO, "creativeView");
        aVar.o().d();
    }

    private void C() {
        if (!r() || this.G.isEmpty()) {
            return;
        }
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.d("AppLovinFullscreenActivity", "Firing " + this.G.size() + " un-fired video progress trackers when video was completed.");
        }
        a(this.G);
    }

    private boolean D() {
        return this.A != null && this.F.aQ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a.c cVar) {
        a(cVar, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void a(a.c cVar, com.applovin.impl.b.f fVar) {
        a(cVar, "", fVar);
    }

    private void a(a.c cVar, String str) {
        a(cVar, str, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void a(a.c cVar, String str, com.applovin.impl.b.f fVar) {
        a(this.F.a(cVar, str), fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Set<k> set) {
        a(set, com.applovin.impl.b.f.UNSPECIFIED);
    }

    private void a(Set<k> set, com.applovin.impl.b.f fVar) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.u.getCurrentPosition());
        o aN = this.F.aN();
        Uri a2 = aN != null ? aN.a() : null;
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Firing " + set.size() + " tracker(s): " + set);
        }
        m.a(set, seconds, a2, fVar, this.f4300b);
    }

    @Override // com.applovin.impl.adview.activity.b.f
    public void A() {
        C();
        if (!m.c(this.F)) {
            v vVar = this.f4301c;
            if (v.a()) {
                this.f4301c.b("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
            }
            h();
        } else if (this.E) {
        } else {
            a(a.c.COMPANION, "creativeView");
            this.F.o().i();
            this.F.o().a(this.f4304f, Collections.singletonList(new com.applovin.impl.sdk.a.d(this.f4304f, FriendlyObstructionPurpose.CLOSE_AD, "close button")));
            super.A();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.f
    public void a(PointF pointF) {
        a(a.c.VIDEO_CLICK);
        this.F.o().o();
        super.a(pointF);
    }

    @Override // com.applovin.impl.adview.activity.b.f, com.applovin.impl.adview.activity.b.a
    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        if (D()) {
            a(a.c.INDUSTRY_ICON_IMPRESSION);
            Utils.setImageUrl(this.F.aP().a().toString(), this.A, this.f4300b);
            this.A.setVisibility(0);
        }
        this.B.a("PROGRESS_TRACKING", TimeUnit.SECONDS.toMillis(1L), new j.a() { // from class: com.applovin.impl.adview.activity.b.d.2
            @Override // com.applovin.impl.adview.j.a
            public void a() {
                long seconds = TimeUnit.MILLISECONDS.toSeconds(d.this.D - (d.this.u.getDuration() - d.this.u.getCurrentPosition()));
                int B = d.this.B();
                HashSet hashSet = new HashSet();
                for (k kVar : new HashSet(d.this.G)) {
                    if (kVar.a(seconds, B)) {
                        hashSet.add(kVar);
                        d.this.G.remove(kVar);
                    }
                }
                d.this.a(hashSet);
                if (B >= 25 && B < 50) {
                    d.this.F.o().f();
                } else if (B >= 50 && B < 75) {
                    d.this.F.o().g();
                } else if (B >= 75) {
                    d.this.F.o().h();
                }
            }

            @Override // com.applovin.impl.adview.j.a
            public boolean b() {
                return !d.this.E;
            }
        });
        ArrayList arrayList = new ArrayList();
        if (this.v != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.v, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        if (this.w != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.w, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        if (this.z != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.z, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        if (this.x != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.x, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        if (this.y != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(this.y, FriendlyObstructionPurpose.VIDEO_CONTROLS, "generic webview overlay containing HTML controls"));
        }
        this.F.o().a(this.u, arrayList);
    }

    @Override // com.applovin.impl.adview.activity.b.f
    public void c() {
        a(a.c.VIDEO, "skip");
        this.F.o().n();
        super.c();
    }

    @Override // com.applovin.impl.adview.activity.b.f
    protected void c(long j) {
        super.c(j);
        this.F.o().a((float) TimeUnit.MILLISECONDS.toSeconds(j), Utils.isVideoMutedInitially(this.f4300b));
    }

    @Override // com.applovin.impl.adview.activity.b.f
    public void c(String str) {
        a(a.c.ERROR, com.applovin.impl.b.f.MEDIA_FILE_ERROR);
        this.F.o().a(str);
        super.c(str);
    }

    @Override // com.applovin.impl.adview.activity.b.f, com.applovin.impl.adview.activity.b.a
    public void d() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.b.f, com.applovin.impl.adview.activity.b.a
    public void e() {
        this.B.c();
        super.e();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void f() {
        super.f();
        a(this.E ? a.c.COMPANION : a.c.VIDEO, "resume");
        this.F.o().k();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void g() {
        super.g();
        a(this.E ? a.c.COMPANION : a.c.VIDEO, "pause");
        this.F.o().j();
    }

    @Override // com.applovin.impl.adview.activity.b.f, com.applovin.impl.adview.activity.b.a
    public void h() {
        if (this.F != null) {
            a(a.c.VIDEO, "close");
            a(a.c.COMPANION, "close");
        }
        super.h();
    }

    @Override // com.applovin.impl.adview.activity.b.f, com.applovin.impl.adview.activity.b.a
    protected void u() {
        long ae;
        int t;
        long j = 0;
        if (this.F.ad() >= 0 || this.F.ae() >= 0) {
            if (this.F.ad() >= 0) {
                ae = this.F.ad();
            } else {
                com.applovin.impl.b.a aVar = this.F;
                com.applovin.impl.b.n aM = aVar.aM();
                if (aM != null && aM.b() > 0) {
                    j = TimeUnit.SECONDS.toMillis(aM.b());
                } else if (this.D > 0) {
                    j = this.D;
                }
                if (aVar.af() && (t = (int) aVar.t()) > 0) {
                    j += TimeUnit.SECONDS.toMillis(t);
                }
                ae = (long) (j * (this.F.ae() / 100.0d));
            }
            b(ae);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.f
    protected void x() {
        super.x();
        com.applovin.impl.b.a aVar = this.F;
        if (aVar != null) {
            aVar.o().l();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.f
    protected void y() {
        super.y();
        com.applovin.impl.b.a aVar = this.F;
        if (aVar != null) {
            aVar.o().m();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.f
    public void z() {
        super.z();
        a(a.c.VIDEO, this.C ? "mute" : "unmute");
        this.F.o().a(this.C);
    }
}
