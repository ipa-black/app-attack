package com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.zc;
/* compiled from: NetClient.java */
/* loaded from: classes2.dex */
public class fl extends zc {
    public Tgh Sf;
    public Qhi hm;

    public fl(zc.Qhi qhi) {
        super(qhi);
        this.Sf = new Tgh();
        this.hm = new Qhi(this.Sf.cJ());
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.zc
    public com.bytedance.sdk.component.cJ.Qhi.fl Qhi() {
        return this.Sf;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.zc
    public com.bytedance.sdk.component.cJ.Qhi.cJ Qhi(iMK imk) {
        imk.Qhi(this);
        if (imk == null || imk.cJ() == null || imk.cJ().Qhi() == null || TextUtils.isEmpty(imk.cJ().Qhi().toString())) {
            return null;
        }
        if (Qhi.Qhi != null && Qhi.Qhi.cJ() && this.hm.fl() && !"setting".equals(imk.Tgh())) {
            cJ cJVar = new cJ(imk, this.hm);
            this.hm.ac().add(cJVar);
            return cJVar;
        }
        cJ cJVar2 = new cJ(imk, this.Sf);
        this.Sf.ac().add(cJVar2);
        return cJVar2;
    }
}
