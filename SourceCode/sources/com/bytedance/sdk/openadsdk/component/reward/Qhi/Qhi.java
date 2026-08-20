package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.component.reward.top.TopProxyLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.ROR;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: RewardFullContext.java */
/* loaded from: classes2.dex */
public class Qhi {
    public final boolean CJ;
    public final Sf CQU;
    public final fl Dww;
    public boolean EGK;
    public final WAv Eh;
    public final Activity FQ;
    private long Gy;
    public float Hf;
    public final ABk Jma;
    public String MND;
    public int NBs;
    public final ROR NFd;
    public final com.bytedance.sdk.openadsdk.core.video.ac.cJ PAe;
    private long PER;
    public final int Qhi;
    public final boolean ROR;
    public com.bytedance.sdk.openadsdk.component.reward.cJ.cJ ReL;
    public TopProxyLayout Ri;
    public final int Tgh;
    public com.bytedance.sdk.openadsdk.activity.ROR Ura;
    public boolean VnT;
    public int YB;
    public final hm aP;
    public final boolean ac;
    public final pA bxS;
    public final tP cJ;
    public boolean cjC;
    public int dI;
    public boolean dIT;
    public boolean dVA;
    public final com.bytedance.sdk.openadsdk.component.reward.view.Tgh es;
    public final String fl;
    public com.bytedance.sdk.openadsdk.utils.zc gga;
    public final Context ip;
    public final boolean jPH;
    public final zc js;
    public com.bytedance.sdk.openadsdk.WAv.hm lB;
    public final hpZ lG;
    public com.bytedance.sdk.openadsdk.common.ROR oU;
    public boolean ots;
    public final com.bytedance.sdk.openadsdk.component.reward.view.ac pM;
    public boolean pv;
    public final ac sDy;
    public final CQU xyz;
    public final RewardFullBaseLayout yN;
    public boolean zjb;
    public final Tgh zn;
    public int Sf = 0;
    public int hm = 0;
    public final AtomicBoolean WAv = new AtomicBoolean(false);
    public final AtomicBoolean Gm = new AtomicBoolean(false);
    public final AtomicBoolean zc = new AtomicBoolean(false);
    public final AtomicBoolean ABk = new AtomicBoolean(false);
    public final AtomicBoolean iMK = new AtomicBoolean(false);
    public final AtomicBoolean pA = new AtomicBoolean(false);
    public final AtomicBoolean hpZ = new AtomicBoolean(false);
    public final AtomicBoolean HzH = new AtomicBoolean(false);
    public final AtomicBoolean kYc = new AtomicBoolean(false);
    public final AtomicBoolean tP = new AtomicBoolean(false);
    public final AtomicBoolean MQ = new AtomicBoolean(false);
    public final AtomicBoolean qMt = new AtomicBoolean(false);
    public final AtomicBoolean EBS = new AtomicBoolean(false);
    public boolean Qe = false;
    public int Dq = 1;
    public long HLI = 0;

    public Qhi(Activity activity, CQU cqu, tP tPVar, com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar, int i) {
        com.bytedance.sdk.openadsdk.component.reward.view.Tgh tgh;
        this.FQ = activity;
        this.PAe = cJVar;
        Context Qhi = com.bytedance.sdk.openadsdk.core.HzH.Qhi();
        this.ip = Qhi;
        this.cJ = tPVar;
        this.Qhi = i;
        this.jPH = i == 0 || i == 2;
        this.EGK = i == 0 || i == 1;
        this.xyz = cqu;
        boolean z = tPVar.lB().getDurationSlotType() == 7;
        this.CJ = z;
        this.fl = z ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.pv = tPVar.Qhi();
        this.ROR = com.bytedance.sdk.openadsdk.core.model.HzH.hm(tPVar);
        int Hy = tPVar.Hy();
        this.Tgh = Hy;
        this.dIT = com.bytedance.sdk.openadsdk.core.HzH.CJ().HzH(String.valueOf(Hy));
        this.ac = com.bytedance.sdk.openadsdk.core.settings.HzH.YD().iMK(String.valueOf(Hy));
        this.Eh = i == 2 ? new Gm(this) : new WAv(this);
        if (i == 2) {
            tgh = new com.bytedance.sdk.openadsdk.component.reward.view.ROR(this);
        } else {
            tgh = tPVar.Qhi() ? new com.bytedance.sdk.openadsdk.component.reward.view.Tgh(this) : new com.bytedance.sdk.openadsdk.component.reward.view.fl(this);
        }
        this.es = tgh;
        this.yN = new RewardFullBaseLayout(this);
        this.bxS = new pA(this);
        this.Dww = new fl(this);
        this.CQU = new Sf(this);
        this.pM = new com.bytedance.sdk.openadsdk.component.reward.view.ac(this);
        this.lG = new hpZ(this);
        this.Jma = new ABk(this);
        this.js = new zc(this);
        this.zn = new Tgh(this);
        this.aP = new hm(this);
        this.NFd = new ROR(this);
        this.sDy = new ac(this);
        this.lB = new com.bytedance.sdk.openadsdk.WAv.hm(Qhi);
        this.gga = com.bytedance.sdk.openadsdk.utils.ROR.Qhi(activity, new ROR.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi.1
            @Override // com.bytedance.sdk.openadsdk.utils.ROR.Qhi
            public View Qhi() {
                if (Qhi.this.es != null) {
                    return Qhi.this.es.WAv();
                }
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.utils.ROR.Qhi
            public void cJ() {
                if (Qhi.this.js != null) {
                    Qhi.this.js.Tgh();
                }
            }
        });
    }

    public void Qhi(boolean z) {
        this.zjb = z;
        this.js.CJ(z);
    }

    public void Qhi() {
        this.PER = SystemClock.elapsedRealtime();
    }

    public void cJ() {
        if (this.PER <= 0) {
            this.PER = SystemClock.elapsedRealtime();
        }
        this.Gy += SystemClock.elapsedRealtime() - this.PER;
    }

    public long ac() {
        return this.Gy + (SystemClock.elapsedRealtime() - this.PER);
    }
}
