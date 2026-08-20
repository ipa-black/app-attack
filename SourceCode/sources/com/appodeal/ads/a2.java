package com.appodeal.ads;

import android.view.View;
/* loaded from: classes.dex */
public final class a2 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g2 f6428a;

    public a2(g2 g2Var) {
        this.f6428a = g2Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g2 g2Var = this.f6428a;
        g2Var.p = true;
        g2Var.f();
    }
}
