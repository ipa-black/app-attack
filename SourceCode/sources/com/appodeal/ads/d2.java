package com.appodeal.ads;

import android.net.Uri;
import com.appodeal.ads.utils.n;
import com.explorestack.iab.vast.VastRequest;
/* loaded from: classes.dex */
public final class d2 implements n.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g2 f6626a;

    public d2(g2 g2Var) {
        this.f6626a = g2Var;
    }

    @Override // com.appodeal.ads.utils.n.b
    public final void a(Uri uri, VastRequest vastRequest) {
        g2 g2Var = this.f6626a;
        g2Var.t = vastRequest;
        l2 l2Var = g2Var.f6677a;
        l2Var.r = vastRequest;
        l2Var.q = uri;
        g2Var.e();
    }

    @Override // com.appodeal.ads.utils.n.b
    public final void a() {
        g2 g2Var = this.f6626a;
        g2Var.w = 1;
        g2Var.h();
        this.f6626a.q = false;
    }
}
