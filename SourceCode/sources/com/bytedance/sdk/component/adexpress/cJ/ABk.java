package com.bytedance.sdk.component.adexpress.cJ;

import com.bytedance.sdk.component.adexpress.cJ.Gm;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: RenderRealChain.java */
/* loaded from: classes2.dex */
public class ABk implements Gm.Qhi {
    private AtomicBoolean CJ = new AtomicBoolean(false);
    hpZ Qhi;
    private WAv ac;
    private List<Gm> cJ;

    public ABk(List<Gm> list, WAv wAv) {
        this.cJ = list;
        this.ac = wAv;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm.Qhi
    public void Qhi() {
        this.ac.CJ();
        Iterator<Gm> it = this.cJ.iterator();
        while (it.hasNext() && !it.next().Qhi(this)) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm.Qhi
    public void Qhi(Gm gm) {
        int indexOf = this.cJ.indexOf(gm);
        if (indexOf < 0) {
            return;
        }
        do {
            indexOf++;
            if (indexOf >= this.cJ.size()) {
                return;
            }
        } while (!this.cJ.get(indexOf).Qhi(this));
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm.Qhi
    public boolean cJ(Gm gm) {
        int indexOf = this.cJ.indexOf(gm);
        return indexOf < this.cJ.size() - 1 && indexOf >= 0;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm.Qhi
    public hpZ cJ() {
        return this.Qhi;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm.Qhi
    public void Qhi(hpZ hpz) {
        this.Qhi = hpz;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm.Qhi
    public void Qhi(boolean z) {
        this.CJ.getAndSet(z);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm.Qhi
    public boolean ac() {
        return this.CJ.get();
    }
}
