package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.WAv.hm;
import com.bytedance.sdk.openadsdk.component.reward.ABk;
import com.bytedance.sdk.openadsdk.component.reward.top.TopProxyLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.MQ;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.settings.HzH;
import com.bytedance.sdk.openadsdk.layout.TTProgressIndicator;
import com.bytedance.sdk.openadsdk.utils.ROR;
import com.bytedance.sdk.openadsdk.utils.zc;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.material.badge.BadgeDrawable;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AdSceneManager.java */
/* loaded from: classes2.dex */
public class cJ {
    private static com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ ac;
    private static com.bytedance.sdk.openadsdk.apiImpl.CJ.ac cJ;
    private PAGFrameLayout ABk;
    private Runnable CQU;
    private int Dww;
    private boolean EBS;
    private ROR Gm;
    private int HzH;
    private TopProxyLayout MQ;
    public zc Qhi;
    private com.bytedance.sdk.openadsdk.apiImpl.CJ.ac ROR;
    private com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ Sf;
    private Activity WAv;
    private boolean bxS;
    private final tP fl;
    private boolean hm;
    private PAGTextView hpZ;
    private com.bytedance.sdk.openadsdk.activity.ac iMK;
    private Bundle kYc;
    private PAGFrameLayout pA;
    private final hm pM;
    private AbstractC0210cJ qMt;
    private TTProgressIndicator tP;
    private int zc;
    private final List<ROR> CJ = new ArrayList();
    private final Bundle Tgh = new Bundle();

    public cJ(Activity activity, tP tPVar) {
        com.bytedance.sdk.openadsdk.core.model.Qhi XJ;
        List<tP> ac2;
        this.fl = tPVar;
        this.WAv = activity;
        this.pM = new hm(activity.getApplicationContext());
        int i = 0;
        if ((tPVar instanceof MQ) && (XJ = ((MQ) tPVar).XJ()) != null) {
            boolean Gm = XJ.Gm();
            this.hm = Gm;
            if (Gm) {
                if (!HzH.YD().gT()) {
                    this.hm = false;
                }
                if (this.hm && (ac2 = XJ.ac()) != null) {
                    for (tP tPVar2 : ac2) {
                        this.CJ.add(Qhi(this, tPVar2, i));
                        this.Dww++;
                        i++;
                    }
                }
            }
        }
        if (this.CJ.isEmpty() && !bxS.Gm(tPVar)) {
            this.CJ.add(Qhi(this, tPVar, i));
            i++;
        }
        if (HzH.YD().iMK(String.valueOf(tPVar.Hy())) || bxS.Gm(tPVar)) {
            this.CJ.add(new com.bytedance.sdk.openadsdk.activity.ac(this, tPVar, i));
        } else if (Qhi()) {
            this.Qhi = com.bytedance.sdk.openadsdk.utils.ROR.Qhi(activity, new ROR.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.cJ.1
                @Override // com.bytedance.sdk.openadsdk.utils.ROR.Qhi
                public View Qhi() {
                    if (cJ.this.MQ != null) {
                        return cJ.this.MQ.getCloseButton();
                    }
                    return null;
                }

                @Override // com.bytedance.sdk.openadsdk.utils.ROR.Qhi
                public void cJ() {
                    if (cJ.this.MQ != null) {
                        cJ.this.MQ.ac();
                    }
                }
            });
        }
    }

    private static ROR Qhi(cJ cJVar, tP tPVar, int i) {
        boolean LpL = tPVar.LpL();
        AdSlot lB = tPVar.lB();
        if (lB != null) {
            LpL = lB.getDurationSlotType() == 7;
        }
        if (LpL) {
            return new Tgh(cJVar, tPVar, i);
        }
        return new com.bytedance.sdk.openadsdk.activity.fl(cJVar, tPVar, i);
    }

    public boolean Qhi() {
        return this.hm;
    }

    public void Qhi(TTAdActivity tTAdActivity, Bundle bundle, com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar, com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar) {
        this.kYc = bundle;
        this.HzH = 1;
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(tTAdActivity);
        this.ABk = pAGFrameLayout;
        pAGFrameLayout.setFitsSystemWindows(true);
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(tTAdActivity);
        this.pA = pAGFrameLayout2;
        this.ABk.addView(pAGFrameLayout2, new FrameLayout.LayoutParams(-1, -1));
        if (this.hm) {
            this.tP = new TTProgressIndicator(tTAdActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, zn.cJ(tTAdActivity, 2.0f));
            layoutParams.gravity = 80;
            this.ABk.addView(this.tP, layoutParams);
            PAGTextView pAGTextView = new PAGTextView(tTAdActivity);
            this.hpZ = pAGTextView;
            pAGTextView.setTextColor(-1);
            this.hpZ.setTextSize(15.0f);
            this.hpZ.setShadowLayer(1.0f, 0.0f, 1.0f, ViewCompat.MEASURED_STATE_MASK);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.topMargin = zn.cJ(tTAdActivity, 60.0f);
            layoutParams2.rightMargin = zn.cJ(tTAdActivity, 16.0f);
            layoutParams2.gravity = BadgeDrawable.TOP_END;
            this.ABk.addView(this.hpZ, layoutParams2);
            TopProxyLayout topProxyLayout = new TopProxyLayout(tTAdActivity);
            this.MQ = topProxyLayout;
            this.ABk.addView(topProxyLayout, new FrameLayout.LayoutParams(-1, -2));
            this.MQ.Qhi(this.fl);
            this.MQ.setShowDislike(true);
        }
        this.ROR = acVar;
        this.Sf = cJVar;
        if (acVar == null && bundle != null) {
            this.ROR = cJ;
            cJ = null;
        }
        if (cJVar == null && bundle != null) {
            this.Sf = ac;
            ac = null;
        }
        cJ(null, new fl(1));
    }

    private void cJ(ROR ror, fl flVar) {
        if (this.WAv == null) {
            return;
        }
        cJ();
        if (ror == null) {
            ROR ror2 = this.Gm;
            int i = ror2 != null ? ror2.hm + 1 : 0;
            if (i < this.CJ.size()) {
                ror = this.CJ.get(i);
            }
            if (ror == null) {
                Qhi(this.Gm);
                return;
            }
        }
        ROR ror3 = this.Gm;
        if (ror3 != null) {
            if (ror3 == ror) {
                return;
            }
            ror3.fl(this.WAv);
            this.Gm.ac(this.WAv);
            View Qhi2 = this.Gm.Qhi();
            if (Qhi2 != null) {
                this.pA.removeView(Qhi2);
            }
            this.Gm.pA();
            this.Gm.WAv = false;
        }
        ror.WAv = true;
        ror.Qhi(this.WAv, flVar);
        View Qhi3 = ror.Qhi();
        if (Qhi3 != null) {
            ViewParent parent = Qhi3.getParent();
            if (parent != null) {
                if (parent == this.pA) {
                    Qhi3.setVisibility(0);
                } else if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(Qhi3);
                }
            }
            if (Qhi3.getParent() == null) {
                this.pA.addView(Qhi3, new ViewGroup.LayoutParams(-1, -1));
            }
            if (this.WAv.getWindow().getContainer() == null) {
                this.WAv.setContentView(this.ABk);
            }
        }
        ROR ror4 = this.Gm;
        this.Gm = ror;
        Qhi(ror4, ror, flVar);
    }

    private void Qhi(ROR ror, ROR ror2, fl flVar) {
        if (this.hm) {
            boolean z = ror2 instanceof com.bytedance.sdk.openadsdk.activity.Qhi;
            if (z) {
                this.zc++;
                Qhi(0.0f);
                if (this.qMt == null) {
                    if (ror2 instanceof com.bytedance.sdk.openadsdk.activity.fl) {
                        this.qMt = new Qhi(this, this.fl, this.MQ);
                    } else {
                        this.qMt = new ac(this, this.fl, this.MQ);
                    }
                }
                int i = 0;
                for (int i2 = ror2.hm; i2 < this.CJ.size(); i2++) {
                    ROR ror3 = this.CJ.get(i2);
                    if (ror3 instanceof com.bytedance.sdk.openadsdk.activity.ac) {
                        break;
                    }
                    com.bykv.vk.openvk.component.video.api.ac.cJ FQ = ror3.Sf.FQ();
                    i = FQ != null ? (int) (i + FQ.Tgh()) : (int) (i + 10);
                }
                this.qMt.Qhi(i);
                zc zcVar = this.Qhi;
                if (zcVar != null && ror == null) {
                    zcVar.Qhi(i * 1000);
                }
            } else if (ror2 instanceof com.bytedance.sdk.openadsdk.activity.ac) {
                TTProgressIndicator tTProgressIndicator = this.tP;
                if (tTProgressIndicator != null) {
                    zn.ROR(tTProgressIndicator);
                    this.tP = null;
                }
                TopProxyLayout topProxyLayout = this.MQ;
                if (topProxyLayout != null) {
                    zn.ROR(topProxyLayout);
                    zn.ROR(this.MQ.getITopLayout());
                    this.MQ = null;
                }
                AbstractC0210cJ abstractC0210cJ = this.qMt;
                if (abstractC0210cJ != null) {
                    abstractC0210cJ.ac();
                }
                if (ror instanceof Tgh) {
                    ((Tgh) ror).EBS();
                }
                zc zcVar2 = this.Qhi;
                if (zcVar2 != null) {
                    zcVar2.ac();
                }
            }
            if (z) {
                this.hpZ.setText(this.WAv.getString(com.bytedance.sdk.component.utils.MQ.cJ(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), "tt_multiple_ad_indicator"), new Object[]{Integer.valueOf(ror2.hm + 1), Integer.valueOf(this.Dww)}));
            } else {
                this.hpZ.setVisibility(8);
            }
        }
        for (int i3 = ror != null ? ror.hm : 0; i3 < this.CJ.size(); i3++) {
            this.CJ.get(i3).Qhi(ror, ror2, flVar);
        }
        ror2.Qhi(this.WAv, this.kYc);
        int i4 = this.HzH;
        if (i4 == 2) {
            ror2.CJ(this.WAv);
        } else if (i4 == 3) {
            ror2.CJ(this.WAv);
            ror2.cJ(this.WAv);
        } else if (i4 == 4) {
            ror2.fl(this.WAv);
        } else if (i4 == 5) {
            ror2.ac(this.WAv);
        }
    }

    public void Qhi(TTAdActivity tTAdActivity) {
        this.HzH = 2;
        ROR ror = this.Gm;
        if (ror != null) {
            ror.CJ(tTAdActivity);
        }
    }

    public void cJ(TTAdActivity tTAdActivity) {
        this.HzH = 3;
        ROR ror = this.Gm;
        if (ror != null) {
            ror.cJ(tTAdActivity);
        }
        AbstractC0210cJ abstractC0210cJ = this.qMt;
        if (abstractC0210cJ != null) {
            abstractC0210cJ.cJ();
        }
        zc zcVar = this.Qhi;
        if (zcVar != null) {
            zcVar.Qhi();
        }
    }

    public void ac(TTAdActivity tTAdActivity) {
        this.HzH = 4;
        ROR ror = this.Gm;
        if (ror != null) {
            ror.fl(tTAdActivity);
        }
        AbstractC0210cJ abstractC0210cJ = this.qMt;
        if (abstractC0210cJ != null) {
            abstractC0210cJ.Qhi();
        }
        zc zcVar = this.Qhi;
        if (zcVar != null) {
            zcVar.cJ();
        }
    }

    public void CJ(TTAdActivity tTAdActivity) {
        this.HzH = 5;
        ROR ror = this.Gm;
        if (ror != null) {
            ror.ac(tTAdActivity);
        }
    }

    public void Qhi(TTAdActivity tTAdActivity, Bundle bundle) {
        com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar = this.ROR;
        if (acVar != null) {
            cJ = acVar;
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar = this.Sf;
        if (cJVar != null) {
            ac = cJVar;
        }
    }

    public void fl(TTAdActivity tTAdActivity) {
        this.HzH = 6;
        int cJ2 = cJ();
        for (ROR ror : this.CJ) {
            if (ror.hm >= cJ2) {
                ror.pA();
            }
        }
        ROR ror2 = this.Gm;
        if (ror2 != null) {
            ror2.pM();
        }
        ROR ror3 = this.Gm;
        if (ror3 != null && !ror3.tP()) {
            iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.cJ.2
                @Override // java.lang.Runnable
                public void run() {
                    if (cJ.this.fl.LpL()) {
                        ABk.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).Qhi(cJ.this.fl.lB());
                    } else {
                        com.bytedance.sdk.openadsdk.component.reward.Tgh.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).Qhi(cJ.this.fl.lB());
                    }
                }
            });
        }
        AbstractC0210cJ abstractC0210cJ = this.qMt;
        if (abstractC0210cJ != null) {
            abstractC0210cJ.ac();
        }
        zc zcVar = this.Qhi;
        if (zcVar != null) {
            zcVar.ac();
        }
        this.Gm = null;
        this.WAv = null;
    }

    public int cJ() {
        ROR ror = this.Gm;
        if (ror != null) {
            return ror.hm;
        }
        return -1;
    }

    public void Qhi(ROR ror, fl flVar) {
        ROR ror2 = this.Gm;
        if (ror2 == null || ror2 == ror) {
            cJ(null, flVar);
        }
    }

    public void Qhi(ROR ror) {
        if (ror instanceof Tgh) {
            ((Tgh) ror).EBS();
        }
        Activity activity = this.WAv;
        if (activity != null) {
            activity.finish();
        }
    }

    public Activity ac() {
        return this.WAv;
    }

    public void Qhi(ROR ror, boolean z, boolean z2, boolean z3, int i) {
        com.bytedance.sdk.openadsdk.activity.ac fl2;
        ROR ror2 = this.Gm;
        if ((ror2 == null || ror2 == ror) && (fl2 = fl()) != null) {
            fl flVar = new fl(i);
            flVar.Qhi.putBoolean("isSkip", z);
            flVar.Qhi.putBoolean("force", z2);
            flVar.Qhi.putBoolean("isFromLandingPage", z3);
            cJ(fl2, flVar);
        }
    }

    public void Qhi(Activity activity) {
        ROR ror = this.Gm;
        if (ror != null) {
            ror.Qhi(activity);
        }
    }

    public void CJ() {
        ROR ror = this.Gm;
        if (ror != null) {
            ror.HzH();
        }
    }

    public com.bytedance.sdk.openadsdk.activity.ac fl() {
        com.bytedance.sdk.openadsdk.activity.ac acVar = this.iMK;
        if (acVar != null) {
            return acVar;
        }
        ROR ror = this.Gm;
        int i = ror != null ? ror.hm : -1;
        int size = this.CJ.size() - 1;
        while (true) {
            if (size <= i) {
                break;
            }
            ROR ror2 = this.CJ.get(size);
            if (ror2 instanceof com.bytedance.sdk.openadsdk.activity.ac) {
                this.iMK = (com.bytedance.sdk.openadsdk.activity.ac) ror2;
                break;
            }
            size--;
        }
        return this.iMK;
    }

    public void Qhi(float f2) {
        TTProgressIndicator tTProgressIndicator = this.tP;
        if (tTProgressIndicator == null) {
            return;
        }
        tTProgressIndicator.setProgress(f2);
        int i = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        if (i == 0 && this.tP.getVisibility() == 0) {
            this.tP.setVisibility(4);
        } else if (i <= 0 || this.tP.getVisibility() == 0) {
        } else {
            this.tP.setVisibility(0);
        }
    }

    public int Tgh() {
        return this.zc;
    }

    public TopProxyLayout ROR() {
        return this.MQ;
    }

    public void Qhi(int i) {
        AbstractC0210cJ abstractC0210cJ = this.qMt;
        if (abstractC0210cJ == null) {
            return;
        }
        if (i == 2) {
            abstractC0210cJ.Qhi();
            zc zcVar = this.Qhi;
            if (zcVar != null) {
                zcVar.cJ();
            }
        } else if (i == 1) {
            abstractC0210cJ.cJ();
            zc zcVar2 = this.Qhi;
            if (zcVar2 != null) {
                zcVar2.Qhi();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ROR kYc() {
        return this.Gm;
    }

    public ROR Sf() {
        int i;
        ROR ror = this.Gm;
        if (ror != null && (i = ror.hm + 1) >= 0 && i < this.CJ.size()) {
            return this.CJ.get(i);
        }
        return null;
    }

    public Bundle hm() {
        return this.Tgh;
    }

    public void WAv() {
        com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar = this.ROR;
        if (acVar != null) {
            acVar.onAdClicked();
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar = this.Sf;
        if (cJVar != null) {
            cJVar.onAdClicked();
        }
    }

    public void Gm() {
        com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar = this.ROR;
        if (acVar != null) {
            acVar.cJ();
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar = this.Sf;
        if (cJVar != null) {
            cJVar.cJ();
        }
    }

    public void zc() {
        if (pA()) {
            return;
        }
        hpZ();
        com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar = this.ROR;
        if (acVar != null) {
            acVar.Qhi();
        } else {
            com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar = this.Sf;
            if (cJVar != null) {
                cJVar.Qhi();
            }
        }
        Runnable runnable = this.CQU;
        if (runnable != null) {
            runnable.run();
            this.CQU = null;
        }
    }

    public boolean ABk() {
        return this.bxS;
    }

    public void iMK() {
        this.bxS = true;
    }

    public void Qhi(final ROR ror, final boolean z, final int i, final String str, final int i2, final String str2) {
        Activity activity;
        if (!this.EBS) {
            this.CQU = new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.cJ.3
                @Override // java.lang.Runnable
                public void run() {
                    cJ.this.Qhi(ror, z, i, str, i2, str2);
                }
            };
        } else if (ABk()) {
        } else {
            iMK();
            if (this.ROR == null || (activity = this.WAv) == null) {
                return;
            }
            activity.runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.cJ.4
                @Override // java.lang.Runnable
                public void run() {
                    cJ.this.ROR.Qhi(z, i, str, i2, str2);
                }
            });
            if (Qhi()) {
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(System.currentTimeMillis(), ror.Sf, ror.b_(), z ? "reward_success" : "reward_fail");
            }
        }
    }

    public boolean pA() {
        return this.EBS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean tP() {
        if (this.CJ.isEmpty()) {
            return false;
        }
        List<ROR> list = this.CJ;
        return list.get(list.size() - 1) instanceof com.bytedance.sdk.openadsdk.activity.ac;
    }

    public void hpZ() {
        this.EBS = true;
    }

    /* compiled from: AdSceneManager.java */
    /* loaded from: classes2.dex */
    public static class fl {
        public boolean CJ;
        public final Bundle Qhi = new Bundle();
        public boolean ac;
        public final int cJ;

        public fl(int i) {
            this.cJ = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdSceneManager.java */
    /* renamed from: com.bytedance.sdk.openadsdk.activity.cJ$cJ  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC0210cJ implements Handler.Callback {
        protected int CJ;
        protected final cJ Qhi;
        private final TopProxyLayout ROR;
        private final Context Sf;
        private final Handler Tgh = new Handler(Looper.getMainLooper(), this);
        private boolean WAv;
        protected float ac;
        protected final tP cJ;
        protected int fl;
        private boolean hm;

        protected abstract int Qhi(tP tPVar);

        public AbstractC0210cJ(cJ cJVar, tP tPVar, TopProxyLayout topProxyLayout) {
            this.Qhi = cJVar;
            this.cJ = tPVar;
            this.ROR = topProxyLayout;
            this.Sf = topProxyLayout.getContext();
            this.CJ = Qhi(tPVar);
        }

        public void Qhi() {
            this.Tgh.removeMessages(this.fl);
        }

        public void cJ() {
            if (this.CJ < 0 || this.hm || this.WAv) {
                return;
            }
            this.Tgh.removeMessages(this.fl);
            this.Tgh.sendEmptyMessage(this.fl);
        }

        public void ac() {
            this.Tgh.removeMessages(this.fl);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                if (this.CJ > 0) {
                    TopProxyLayout topProxyLayout = this.ROR;
                    Context context = this.Sf;
                    int cJ = com.bytedance.sdk.component.utils.MQ.cJ(context, "tt_reward_full_skip");
                    int i = this.CJ;
                    this.CJ = i - 1;
                    topProxyLayout.setSkipText(context.getString(cJ, Integer.valueOf(i)));
                    if (this.CJ >= 0) {
                        this.Tgh.removeMessages(message.what);
                        this.Tgh.sendEmptyMessageDelayed(message.what, 1000L);
                    }
                } else {
                    CJ();
                }
            } else if (message.what == 2) {
                if (this.CJ > 0) {
                    TopProxyLayout topProxyLayout2 = this.ROR;
                    StringBuilder sb = new StringBuilder();
                    int i2 = this.CJ;
                    this.CJ = i2 - 1;
                    topProxyLayout2.setSkipText(sb.append(i2).append("s").toString());
                    if (this.CJ >= 0) {
                        this.Tgh.removeMessages(message.what);
                        this.Tgh.sendEmptyMessageDelayed(message.what, 1000L);
                    }
                } else {
                    CJ();
                }
            }
            return true;
        }

        private void CJ() {
            if (this.Qhi.tP()) {
                this.ROR.fl();
                this.hm = true;
                return;
            }
            this.WAv = true;
            this.ROR.Tgh();
        }

        public void Qhi(int i) {
            if (this.hm || this.WAv) {
                return;
            }
            float f2 = i;
            this.ac = f2;
            if (f2 > this.CJ) {
                if (this.fl == 0) {
                    this.fl = 2;
                }
            } else {
                this.fl = 2;
                this.CJ = (int) f2;
            }
            this.Tgh.removeCallbacksAndMessages(null);
            this.Tgh.sendEmptyMessage(this.fl);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdSceneManager.java */
    /* loaded from: classes2.dex */
    public static class ac extends AbstractC0210cJ {
        private int ROR;
        private boolean Sf;
        private final int Tgh;

        public ac(cJ cJVar, tP tPVar, TopProxyLayout topProxyLayout) {
            super(cJVar, tPVar, topProxyLayout);
            this.Tgh = com.bytedance.sdk.openadsdk.core.HzH.CJ().Eh(String.valueOf(tPVar.Hy())).Tgh;
        }

        @Override // com.bytedance.sdk.openadsdk.activity.cJ.AbstractC0210cJ
        protected int Qhi(tP tPVar) {
            return com.bytedance.sdk.openadsdk.core.HzH.CJ().Gm(String.valueOf(tPVar.Hy()));
        }

        @Override // com.bytedance.sdk.openadsdk.activity.cJ.AbstractC0210cJ
        public void Qhi(int i) {
            boolean z = this.fl == 0;
            int i2 = this.CJ;
            super.Qhi(i);
            if (z) {
                if (this.fl == 1) {
                    this.ROR = 3;
                } else {
                    this.ROR = (int) ((1.0f - (this.Tgh / 100.0f)) * this.ac);
                }
            } else if (this.ac < i2) {
                this.ROR = (int) ((1.0f - (this.Tgh / 100.0f)) * this.CJ);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.activity.cJ.AbstractC0210cJ, android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (!this.Sf && this.CJ <= this.ROR) {
                this.Sf = true;
                ROR kYc = this.Qhi.kYc();
                if (kYc instanceof Tgh) {
                    ((Tgh) kYc).EBS();
                }
            }
            super.handleMessage(message);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdSceneManager.java */
    /* loaded from: classes2.dex */
    public static class Qhi extends AbstractC0210cJ {
        public Qhi(cJ cJVar, tP tPVar, TopProxyLayout topProxyLayout) {
            super(cJVar, tPVar, topProxyLayout);
        }

        @Override // com.bytedance.sdk.openadsdk.activity.cJ.AbstractC0210cJ
        protected int Qhi(tP tPVar) {
            return com.bytedance.sdk.openadsdk.core.HzH.CJ().tP(String.valueOf(tPVar.Hy()));
        }
    }

    public hm HzH() {
        return this.pM;
    }

    public void Qhi(View view) {
        if (view.getParent() != null) {
            return;
        }
        view.setVisibility(4);
        this.pA.addView(view, 0);
    }
}
