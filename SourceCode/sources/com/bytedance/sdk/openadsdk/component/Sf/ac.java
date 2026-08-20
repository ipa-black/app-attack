package com.bytedance.sdk.openadsdk.component.Sf;

import android.content.Context;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.core.cJ.Qhi;
import com.bytedance.sdk.openadsdk.core.model.tP;
/* compiled from: TTAppOpenVideoManager.java */
/* loaded from: classes2.dex */
public class ac implements Qhi.InterfaceC0224Qhi {
    private cJ CJ;
    private Context Qhi;
    private tP ac;
    private FrameLayout cJ;

    public ac(Context context) {
        this.Qhi = context.getApplicationContext();
    }

    public void Qhi(FrameLayout frameLayout, tP tPVar) {
        this.cJ = frameLayout;
        this.ac = tPVar;
        this.CJ = new cJ(this.Qhi, this.cJ, this.ac);
    }

    public boolean Qhi() {
        com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi = tP.Qhi(CacheDirFactory.getICacheDir(0).cJ(), this.ac);
        Qhi.cJ(this.ac.HLI());
        Qhi.Qhi(this.cJ.getWidth());
        Qhi.cJ(this.cJ.getHeight());
        Qhi.ac(this.ac.EGK());
        Qhi.Qhi(0L);
        Qhi.Qhi(true);
        return this.CJ.Qhi(Qhi);
    }

    public boolean cJ() {
        cJ cJVar = this.CJ;
        return (cJVar == null || cJVar.zc() == null || !this.CJ.zc().Tgh()) ? false : true;
    }

    public boolean ac() {
        cJ cJVar = this.CJ;
        return (cJVar == null || cJVar.zc() == null || !this.CJ.zc().ROR()) ? false : true;
    }

    public void Qhi(fl.Qhi qhi) {
        cJ cJVar = this.CJ;
        if (cJVar != null) {
            cJVar.Qhi(qhi);
        }
    }

    public void CJ() {
        try {
            if (cJ()) {
                this.CJ.Qhi();
            }
        } catch (Throwable th) {
            ABk.Qhi("TTAppOpenVideoManager", "open_ad", "AppOpenVideoManager onPause throw Exception :" + th.getMessage());
        }
    }

    public void fl() {
        cJ cJVar = this.CJ;
        if (cJVar != null) {
            cJVar.cJ();
        }
    }

    public void Tgh() {
        cJ cJVar = this.CJ;
        if (cJVar == null) {
            return;
        }
        this.Qhi = null;
        cJVar.ac();
        this.CJ = null;
    }

    public long ROR() {
        cJ cJVar = this.CJ;
        if (cJVar != null) {
            return cJVar.fl();
        }
        return 0L;
    }

    public long Sf() {
        cJ cJVar = this.CJ;
        if (cJVar != null) {
            return cJVar.Tgh();
        }
        return 0L;
    }

    public long hm() {
        cJ cJVar = this.CJ;
        if (cJVar != null) {
            return cJVar.Sf() + this.CJ.Tgh();
        }
        return 0L;
    }

    public void Qhi(int i) {
        if (this.CJ != null) {
            hpZ.Qhi qhi = new hpZ.Qhi();
            qhi.Qhi(ROR());
            qhi.ac(hm());
            qhi.cJ(Sf());
            qhi.ac(i);
            qhi.CJ(this.CJ.ROR());
            this.CJ.Qhi(qhi);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi.InterfaceC0224Qhi
    public long getVideoProgress() {
        return ROR();
    }
}
