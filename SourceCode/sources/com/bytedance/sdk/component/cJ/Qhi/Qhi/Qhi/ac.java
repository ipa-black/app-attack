package com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi;

import com.bytedance.sdk.component.cJ.Qhi.hm;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import java.io.IOException;
import java.util.List;
/* compiled from: NetChain.java */
/* loaded from: classes2.dex */
public class ac implements hm.Qhi {
    List<com.bytedance.sdk.component.cJ.Qhi.hm> Qhi;
    int ac = 0;
    iMK cJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(List<com.bytedance.sdk.component.cJ.Qhi.hm> list, iMK imk) {
        this.Qhi = list;
        this.cJ = imk;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hm.Qhi
    public iMK Qhi() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hm.Qhi
    public hpZ Qhi(iMK imk) throws IOException {
        this.cJ = imk;
        int i = this.ac + 1;
        this.ac = i;
        if (i >= this.Qhi.size()) {
            return null;
        }
        return this.Qhi.get(this.ac).Qhi(this);
    }
}
