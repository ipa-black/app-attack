package com.bytedance.adsdk.ugeno.component.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FlexLine.java */
/* loaded from: classes2.dex */
public class ac {
    int ABk;
    float Gm;
    boolean HzH;
    int ROR;
    int Sf;
    int Tgh;
    float WAv;
    int fl;
    int hm;
    int hpZ;
    boolean kYc;
    int pA;
    int zc;
    int Qhi = Integer.MAX_VALUE;
    int cJ = Integer.MAX_VALUE;
    int ac = Integer.MIN_VALUE;
    int CJ = Integer.MIN_VALUE;
    List<Integer> iMK = new ArrayList();

    public int Qhi() {
        return this.ROR;
    }

    public int cJ() {
        return this.Sf - this.hm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(View view, int i, int i2, int i3, int i4) {
        cJ cJVar = (cJ) view.getLayoutParams();
        this.Qhi = Math.min(this.Qhi, (view.getLeft() - cJVar.ABk()) - i);
        this.cJ = Math.min(this.cJ, (view.getTop() - cJVar.iMK()) - i2);
        this.ac = Math.max(this.ac, view.getRight() + cJVar.pA() + i3);
        this.CJ = Math.max(this.CJ, view.getBottom() + cJVar.hpZ() + i4);
    }
}
