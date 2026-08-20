package com.appodeal.ads;

import android.view.View;
/* loaded from: classes.dex */
public final class e2 implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g2 f6642a;

    public e2(g2 g2Var) {
        this.f6642a = g2Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g2 g2Var;
        boolean z;
        if (this.f6642a.c()) {
            g2 g2Var2 = this.f6642a;
            if (g2Var2.l) {
                g2Var2.f6683g.setVolume(1.0f, 1.0f);
                g2Var = this.f6642a;
                z = false;
            } else {
                g2Var2.f6683g.setVolume(0.0f, 0.0f);
                g2Var = this.f6642a;
                z = true;
            }
            g2Var.l = z;
            this.f6642a.g();
        }
    }
}
