package com.appodeal.ads;

import android.net.Uri;
import android.text.TextUtils;
import com.appodeal.ads.utils.n;
import com.explorestack.iab.vast.VastRequest;
import java.io.File;
/* loaded from: classes.dex */
public final class r2 implements n.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l2 f7355a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ s2 f7356b;

    public r2(s2 s2Var, l2 l2Var) {
        this.f7356b = s2Var;
        this.f7355a = l2Var;
    }

    @Override // com.appodeal.ads.utils.n.b
    public final void a() {
        s2 s2Var;
        s2Var.t--;
        this.f7356b.m();
    }

    @Override // com.appodeal.ads.utils.n.b
    public final void a(Uri uri, VastRequest vastRequest) {
        s2 s2Var;
        l2 l2Var = this.f7355a;
        l2Var.r = vastRequest;
        l2Var.q = uri;
        if (TextUtils.isEmpty(l2Var.l) && uri != null && new File(uri.getPath()).exists()) {
            this.f7355a.l = n5.a(uri);
        }
        s2Var.t--;
        this.f7356b.m();
    }
}
