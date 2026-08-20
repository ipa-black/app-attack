package com.appodeal.ads;

import android.graphics.Bitmap;
import com.appodeal.ads.utils.l;
/* loaded from: classes.dex */
public final class o2 implements l.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l2 f7266a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ s2 f7267b;

    public o2(s2 s2Var, l2 l2Var) {
        this.f7267b = s2Var;
        this.f7266a = l2Var;
    }

    @Override // com.appodeal.ads.utils.l.b
    public final void a() {
        s2 s2Var;
        s2Var.t--;
        this.f7267b.m();
    }

    @Override // com.appodeal.ads.utils.l.b
    public final void a(Bitmap bitmap) {
        s2 s2Var;
        this.f7266a.k = bitmap;
        s2Var.t--;
        this.f7267b.m();
    }

    @Override // com.appodeal.ads.utils.l.b
    public final void a(String str) {
        s2 s2Var;
        this.f7266a.j = str;
        s2Var.t--;
        this.f7267b.m();
    }
}
