package com.appodeal.ads;

import android.net.Uri;
import android.text.TextUtils;
import com.appodeal.ads.utils.m;
import java.io.File;
/* loaded from: classes.dex */
public final class q2 implements m.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l2 f7300a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ s2 f7301b;

    public q2(s2 s2Var, l2 l2Var) {
        this.f7301b = s2Var;
        this.f7300a = l2Var;
    }

    @Override // com.appodeal.ads.utils.m.b
    public final void a() {
        s2 s2Var;
        s2Var.t--;
        this.f7301b.m();
    }

    @Override // com.appodeal.ads.utils.m.b
    public final void a(Uri uri) {
        s2 s2Var;
        l2 l2Var = this.f7300a;
        l2Var.q = uri;
        if (TextUtils.isEmpty(l2Var.l) && uri != null && new File(uri.getPath()).exists()) {
            this.f7300a.l = n5.a(uri);
        }
        s2Var.t--;
        this.f7301b.m();
    }
}
