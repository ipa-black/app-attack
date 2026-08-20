package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.app.Activity;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.kYc;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.ac.Qhi;
import com.bytedance.sdk.openadsdk.utils.js;
import com.explorestack.iab.vast.VastError;
import java.io.File;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: RewardFullVideoPlayerManager.java */
/* loaded from: classes2.dex */
public class pA {
    final boolean CJ;
    private long Gm;
    private final Qhi HzH;
    private com.bytedance.sdk.openadsdk.cJ.Sf MQ;
    private final Activity ROR;
    private final tP Sf;
    com.bykv.vk.openvk.component.video.api.CJ.fl Tgh;
    private final String WAv;
    boolean ac;
    private FrameLayout hm;
    private boolean hpZ;
    private String iMK;
    private boolean kYc;
    private Qhi.InterfaceC0234Qhi tP;
    private long zc;
    protected boolean Qhi = false;
    boolean cJ = false;
    protected boolean fl = false;
    private int ABk = -1;
    private HashSet<String> pA = new HashSet<>();

    public com.bytedance.sdk.openadsdk.cJ.Sf Qhi() {
        return this.MQ;
    }

    public pA(Qhi qhi) {
        this.HzH = qhi;
        this.ROR = qhi.FQ;
        this.Sf = qhi.cJ;
        this.CJ = qhi.CJ;
        this.WAv = qhi.fl;
    }

    public void Qhi(FrameLayout frameLayout, com.bytedance.sdk.openadsdk.cJ.Sf sf) {
        if (this.hpZ) {
            return;
        }
        this.hpZ = true;
        this.hm = frameLayout;
        this.MQ = sf;
        if (tP.fl(this.Sf)) {
            this.Tgh = new com.bytedance.sdk.openadsdk.core.video.ac.Qhi(this.ROR, this.hm, this.Sf, sf);
            CJ(this.kYc);
            Qhi.InterfaceC0234Qhi interfaceC0234Qhi = this.tP;
            if (interfaceC0234Qhi != null) {
                ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) this.Tgh).Qhi(interfaceC0234Qhi);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.ac acVar = new com.bytedance.sdk.openadsdk.component.reward.ac(this.Sf, sf);
        this.Tgh = acVar;
        Qhi.InterfaceC0234Qhi interfaceC0234Qhi2 = this.tP;
        if (interfaceC0234Qhi2 != null) {
            acVar.Qhi(interfaceC0234Qhi2);
        }
    }

    public boolean cJ() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        return (flVar == null || flVar.zc() == null || !this.Tgh.zc().Tgh()) ? false : true;
    }

    public com.bykv.vk.openvk.component.video.api.cJ.Qhi ac() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            if (flVar instanceof com.bytedance.sdk.openadsdk.component.reward.ac) {
                return ((com.bytedance.sdk.openadsdk.component.reward.ac) flVar).kYc();
            }
            return flVar.ABk();
        }
        return null;
    }

    public boolean CJ() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        return (flVar == null || flVar.zc() == null || !this.Tgh.zc().ROR()) ? false : true;
    }

    public boolean fl() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        return flVar != null && flVar.hpZ();
    }

    public void Qhi(long j, long j2) {
        this.zc = j;
        cJ(j, j2);
    }

    private void cJ(long j, long j2) {
        int abs = (int) Math.abs(this.ABk - j);
        int i = this.ABk;
        if (i < 0 || abs > 500 || i > j2 || abs >= 500 || this.pA.contains(this.iMK)) {
            return;
        }
        if (this.ABk > j) {
            com.bytedance.sdk.openadsdk.core.iMK.ac().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.pA.1
                @Override // java.lang.Runnable
                public void run() {
                    pA.this.pM();
                    pA.this.HzH.pM.Qhi(pA.this.ABk, pA.this.iMK);
                }
            }, abs);
        } else {
            pM();
            this.HzH.pM.Qhi(this.ABk, this.iMK);
        }
        this.pA.add(this.iMK);
    }

    public void Qhi(int i, String str) {
        this.ABk = i;
        this.iMK = str;
    }

    public boolean Tgh() {
        return this.Qhi;
    }

    public long ROR() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            return flVar.fl();
        }
        return this.Gm;
    }

    public long Sf() {
        return this.zc;
    }

    public long hm() {
        return this.Gm;
    }

    public void Qhi(long j) {
        this.Gm = j;
    }

    public void Qhi(boolean z) {
        this.Qhi = z;
    }

    public void WAv() {
        try {
            if (cJ()) {
                this.Tgh.Qhi();
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.cJ("RewardFullVideoPlayerManager onPause throw Exception :" + th.getMessage());
        }
    }

    public void Qhi(int i, int i2) {
        if (this.Tgh != null) {
            hpZ.Qhi qhi = new hpZ.Qhi();
            qhi.cJ(Gm());
            qhi.ac(tP());
            qhi.Qhi(ROR());
            qhi.Qhi(i);
            qhi.cJ(i2);
            com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.CJ(this.Tgh.ABk(), qhi);
        }
    }

    public long Gm() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            return flVar.Tgh();
        }
        return 0L;
    }

    private void Jma() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar == null || flVar.zc() == null) {
            return;
        }
        this.Gm = this.Tgh.fl();
        if (this.Tgh.zc().ac() || !this.Tgh.zc().cJ()) {
            this.Tgh.Qhi();
            this.Tgh.ac();
            this.Qhi = true;
        }
    }

    public void zc() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar == null) {
            return;
        }
        flVar.ac();
        this.Tgh = null;
    }

    public void ABk() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            flVar.CJ();
        }
    }

    public void iMK() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            flVar.cJ();
        }
    }

    public void pA() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            flVar.Qhi();
        }
    }

    public void Qhi(fl.Qhi qhi) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            flVar.Qhi(qhi);
        }
    }

    public void cJ(boolean z) {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            flVar.cJ(z);
        }
    }

    public long hpZ() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            return flVar.Sf();
        }
        return 0L;
    }

    public int HzH() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            return flVar.WAv();
        }
        return 0;
    }

    public int kYc() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            return flVar.ROR();
        }
        return 0;
    }

    public long tP() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            return flVar.Sf() + this.Tgh.Tgh();
        }
        return 0L;
    }

    public void Qhi(String str, boolean z) {
        if (this.Tgh != null) {
            long ROR = ROR();
            if (this.Sf.TGC()) {
                ROR = this.HzH.ac();
            }
            long j = ROR;
            JSONObject Qhi = js.Qhi(this.Sf, this.Tgh.Tgh(), this.Tgh.zc());
            try {
                Qhi.put("auto_click", z);
            } catch (Exception unused) {
            }
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.Sf, this.WAv, str, j, HzH(), Qhi, this.MQ);
            tP();
            HzH();
        }
        lB();
    }

    public long MQ() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            return flVar.Sf();
        }
        return 0L;
    }

    public boolean qMt() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar != null) {
            if (flVar.zc() != null) {
                com.bykv.vk.openvk.component.video.api.Qhi zc = this.Tgh.zc();
                if (zc.ROR() || zc.Sf()) {
                    com.bykv.vk.openvk.component.video.api.CJ.fl flVar2 = this.Tgh;
                    if (flVar2 instanceof com.bytedance.sdk.openadsdk.core.video.ac.Qhi) {
                        ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) flVar2).Jma();
                    }
                    return true;
                }
            } else if (Tgh()) {
                Qhi(false);
                com.bykv.vk.openvk.component.video.api.CJ.fl flVar3 = this.Tgh;
                if (flVar3 instanceof com.bytedance.sdk.openadsdk.core.video.ac.Qhi) {
                    ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) flVar3).Jma();
                }
                return true;
            }
        }
        return false;
    }

    public boolean EBS() {
        return this.Tgh != null;
    }

    public boolean bxS() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        return flVar != null && flVar.zc() == null;
    }

    public boolean Qhi(long j, boolean z, Map<String, Object> map, com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar) {
        boolean z2 = false;
        if (EBS()) {
            if (com.bytedance.sdk.openadsdk.core.model.HzH.ac(this.HzH.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.HzH.cJ)) {
                return true;
            }
            if (!z || !bxS()) {
                Qhi(cJVar);
            }
            try {
                z2 = Qhi(j, this.HzH.dIT);
            } catch (Exception e2) {
                Log.e("TTAD.RFVideoPlayerMag", "playVideo: ", e2);
            }
            if (z2 && !z) {
                this.HzH.aP.Qhi(map);
            }
            return z2;
        }
        return false;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar) {
        if (this.HzH.WAv.get() || !this.HzH.Qe || bxS.Gm(this.HzH.cJ)) {
            return;
        }
        if ((!tP.fl(this.HzH.cJ) && com.bytedance.sdk.openadsdk.core.HzH.CJ().ABk(String.valueOf(this.HzH.Tgh)) == 1 && this.HzH.pM.CJ()) || com.bytedance.sdk.openadsdk.core.model.HzH.ac(this.HzH.cJ) || com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.HzH.cJ) || this.fl || !cJVar.Tgh()) {
            return;
        }
        this.HzH.xyz.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
        Message obtain = Message.obtain();
        obtain.what = VastError.ERROR_CODE_GENERAL_WRAPPER;
        this.HzH.xyz.sendMessageDelayed(obtain, 5000L);
    }

    private boolean Qhi(long j, boolean z) {
        if (this.Tgh == null || this.Sf.FQ() == null) {
            return false;
        }
        String Qhi = CacheDirFactory.getICacheDir(this.Sf.zTC()).Qhi();
        File file = new File(Qhi, this.Sf.FQ().iMK());
        if (file.exists() && file.length() > 0) {
            this.cJ = true;
        }
        com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi2 = tP.Qhi(Qhi, this.Sf);
        Qhi2.cJ(this.Sf.HLI());
        Qhi2.Qhi(this.hm.getWidth());
        Qhi2.cJ(this.hm.getHeight());
        Qhi2.ac(this.Sf.EGK());
        Qhi2.Qhi(j);
        Qhi2.Qhi(z);
        if (this.HzH.cJ.Qhi() && !this.HzH.pM.Sf() && tP.fl(this.Sf)) {
            Qhi2.CJ = 1;
        }
        return this.Tgh.Qhi(Qhi2);
    }

    public void ac(boolean z) {
        this.ac = z;
    }

    public boolean Dww() {
        return this.ac;
    }

    public void CQU() {
        zc();
    }

    public void pM() {
        try {
            if (cJ()) {
                this.fl = true;
                pA();
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFVideoPlayerMag", "onPause throw Exception :" + e2.getMessage());
        }
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar) {
        try {
            this.fl = false;
            if (Tgh()) {
                Jma();
                cJ(cJVar);
            } else if (CJ()) {
                iMK();
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFVideoPlayerMag", "onContinue throw Exception :" + th.getMessage());
        }
    }

    public void Qhi(boolean z, com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar, boolean z2) {
        if (!z2 || z || this.fl) {
            return;
        }
        if (CJ()) {
            iMK();
            Log.i("TTAD.RFVideoPlayerMag", "resumeOrRestartVideo: continue play");
            return;
        }
        Jma();
        cJ(cJVar);
        Log.i("TTAD.RFVideoPlayerMag", "resumeOrRestartVideo: recreate video player & exec play");
    }

    public boolean Eh() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar == null || flVar.zc() == null) {
            return false;
        }
        return this.Tgh.zc().Qhi();
    }

    protected void cJ(com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar) {
        if (!qMt() || cJVar == null) {
            return;
        }
        cJVar.Qhi(hm(), true);
    }

    public double aP() {
        long CJ;
        kYc hm = this.Sf.hm();
        if (com.bytedance.sdk.openadsdk.core.model.HzH.ac(this.Sf) && hm != null) {
            CJ = hm.cJ();
        } else if (com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.Sf) && hm != null) {
            CJ = hm.CJ();
        } else {
            com.bykv.vk.openvk.component.video.api.ac.cJ FQ = this.Sf.FQ();
            if (FQ != null) {
                return FQ.Tgh() * FQ.EBS();
            }
            return 0.0d;
        }
        return CJ;
    }

    public void NFd() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar instanceof com.bytedance.sdk.openadsdk.core.video.ac.Qhi) {
            ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) flVar).lG();
        }
    }

    public View sDy() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar instanceof com.bytedance.sdk.openadsdk.core.video.ac.Qhi) {
            return (View) ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) flVar).js();
        }
        return null;
    }

    public void lB() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar instanceof com.bytedance.sdk.openadsdk.core.video.ac.Qhi) {
            ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) flVar).zn();
        }
    }

    public void lG() {
        com.bykv.vk.openvk.component.video.api.CJ.fl flVar = this.Tgh;
        if (flVar instanceof com.bytedance.sdk.openadsdk.core.video.ac.Qhi) {
            ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) flVar).es();
        }
    }

    public void CJ(boolean z) {
        this.kYc = z;
        if (this.Tgh instanceof com.bytedance.sdk.openadsdk.core.video.ac.Qhi) {
            if (z) {
                ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) this.Tgh).cJ(this.Sf.FQ().EBS());
                return;
            }
            this.Sf.FQ().WAv(1);
            ((com.bytedance.sdk.openadsdk.core.video.ac.Qhi) this.Tgh).cJ(1);
        }
    }

    public void Qhi(Qhi.InterfaceC0234Qhi interfaceC0234Qhi) {
        this.tP = interfaceC0234Qhi;
    }
}
