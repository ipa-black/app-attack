package com.appodeal.ads;

import android.net.Uri;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.m;
/* loaded from: classes.dex */
public final class c2 implements m.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g2 f6578a;

    public c2(g2 g2Var) {
        this.f6578a = g2Var;
    }

    @Override // com.appodeal.ads.utils.m.b
    public final void a(Uri uri) {
        Log.log(g2.x, "Video", "has been loaded");
        g2 g2Var = this.f6578a;
        g2Var.f6677a.q = uri;
        g2Var.e();
    }

    @Override // com.appodeal.ads.utils.m.b
    public final void a() {
        Log.log(g2.x, "Video", "hasn't been loaded");
        g2 g2Var = this.f6578a;
        g2Var.w = 1;
        g2Var.h();
        this.f6578a.q = false;
    }
}
