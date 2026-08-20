package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.bxS;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.component.reward.zc;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.qMt;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.tP;
import com.bytedance.sdk.openadsdk.core.video.cJ.Qhi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* compiled from: RewardVideoLoadManager.java */
/* loaded from: classes2.dex */
public class ABk {
    private static volatile ABk Qhi;
    private final Context cJ;
    private com.bytedance.sdk.component.Sf.hm fl;
    private final AtomicBoolean ac = new AtomicBoolean(false);
    private final List<cJ> CJ = Collections.synchronizedList(new ArrayList());
    private final bxS.Qhi Tgh = new bxS.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.ABk.7
        @Override // com.bytedance.sdk.component.utils.bxS.Qhi
        public void Qhi(Context context, Intent intent, boolean z, int i) {
            if (z) {
                if (ABk.this.fl == null) {
                    ABk.this.fl = new com.bytedance.sdk.openadsdk.component.reward.cJ("net connect task", ABk.this.CJ);
                }
                com.bytedance.sdk.component.utils.Sf.Qhi().post(ABk.this.fl);
            }
        }
    };

    public static ABk Qhi(Context context) {
        if (Qhi == null) {
            synchronized (ABk.class) {
                if (Qhi == null) {
                    Qhi = new ABk(context);
                }
            }
        }
        return Qhi;
    }

    private ABk(Context context) {
        this.cJ = context == null ? HzH.Qhi() : context.getApplicationContext();
        cJ();
    }

    public void Qhi(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getCodeId()) || !TextUtils.isEmpty(adSlot.getBidAdm()) || zc.Qhi(this.cJ).Qhi(adSlot.getCodeId(), false) != null) {
            return;
        }
        Qhi(adSlot, true, null);
    }

    public void Qhi(String str, tP tPVar) {
        zc.Qhi(this.cJ).Qhi(str, tPVar);
    }

    public void Qhi() {
        try {
            zc.Qhi(this.cJ).Qhi();
        } catch (Throwable unused) {
        }
    }

    public void Qhi(AdSlot adSlot, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        cJ(adSlot, pAGRewardedAdLoadListener);
    }

    private void cJ(AdSlot adSlot, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        com.bytedance.sdk.openadsdk.core.model.Qhi Qhi2;
        if (TextUtils.isEmpty(adSlot.getBidAdm()) && (Qhi2 = zc.Qhi(this.cJ).Qhi(adSlot.getCodeId(), true)) != null && Qhi2.CJ()) {
            hpZ hpz = new hpZ(this.cJ, Qhi2, adSlot);
            if (!Qhi2.Tgh() && !com.bytedance.sdk.openadsdk.core.model.bxS.Gm(Qhi2.fl())) {
                hpz.cJ();
            }
            if (pAGRewardedAdLoadListener != null) {
                if (!Qhi2.Tgh() && HzH.CJ().MQ() == 0) {
                    Qhi(adSlot, Qhi2, pAGRewardedAdLoadListener, (PAGRewardedAd) hpz.Qhi(), true);
                }
                ac acVar = new ac(new Qhi(this.cJ, adSlot, Qhi2, pAGRewardedAdLoadListener, true), Qhi2);
                for (int i = 0; i < Qhi2.ac().size(); i++) {
                    Qhi(Qhi2.ac().get(i), adSlot, acVar, hpz, Qhi2.Tgh());
                    if (Qhi2.Gm()) {
                        break;
                    }
                }
            }
            for (int i2 = 0; i2 < Qhi2.ac().size(); i2++) {
                com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(Qhi2.ac().get(i2), new Qhi.InterfaceC0235Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.ABk.1
                });
            }
            return;
        }
        Qhi(adSlot, false, pAGRewardedAdLoadListener);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (com.bytedance.sdk.openadsdk.core.HzH.CJ().MQ() != 1) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Qhi(com.bytedance.sdk.openadsdk.core.model.tP r4, com.bytedance.sdk.openadsdk.AdSlot r5, final com.bytedance.sdk.openadsdk.component.reward.ABk.ac r6, final com.bytedance.sdk.openadsdk.component.reward.hpZ r7, final boolean r8) {
        /*
            r3 = this;
            r0 = 0
            if (r6 == 0) goto L11
            r1 = 1
            if (r8 != 0) goto L12
            com.bytedance.sdk.openadsdk.core.settings.ROR r2 = com.bytedance.sdk.openadsdk.core.HzH.CJ()
            int r2 = r2.MQ()
            if (r2 != r1) goto L11
            goto L12
        L11:
            r1 = r0
        L12:
            boolean r2 = com.bytedance.sdk.openadsdk.core.model.bxS.Gm(r4)
            if (r2 != 0) goto L3b
            int r1 = r4.zTC()
            com.bykv.vk.openvk.component.video.api.Qhi.cJ r1 = com.bytedance.sdk.openadsdk.CacheDirFactory.getICacheDir(r1)
            java.lang.String r1 = r1.Qhi()
            com.bytedance.sdk.openadsdk.core.video.Qhi.cJ r1 = com.bytedance.sdk.openadsdk.core.model.tP.Qhi(r1, r4)
            java.lang.String r2 = "material_meta"
            r1.Qhi(r2, r4)
            java.lang.String r4 = "ad_slot"
            r1.Qhi(r4, r5)
            com.bytedance.sdk.openadsdk.component.reward.ABk$2 r4 = new com.bytedance.sdk.openadsdk.component.reward.ABk$2
            r4.<init>()
            com.bytedance.sdk.openadsdk.core.video.CJ.fl.Qhi(r1, r4)
            goto L3c
        L3b:
            r0 = r1
        L3c:
            if (r0 == 0) goto L45
            com.bytedance.sdk.openadsdk.component.reward.hm r4 = r7.Qhi()
            r6.onAdLoaded(r4)
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.ABk.Qhi(com.bytedance.sdk.openadsdk.core.model.tP, com.bytedance.sdk.openadsdk.AdSlot, com.bytedance.sdk.openadsdk.component.reward.ABk$ac, com.bytedance.sdk.openadsdk.component.reward.hpZ, boolean):void");
    }

    private void Qhi(final AdSlot adSlot, final boolean z, final PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        if (com.bytedance.sdk.component.utils.ABk.CJ()) {
            com.bykv.vk.openvk.component.video.api.Tgh.cJ.Qhi(adSlot.getBidAdm());
        }
        final long currentTimeMillis = System.currentTimeMillis();
        qMt qmt = new qMt();
        qmt.cJ = z ? 2 : 1;
        if (HzH.CJ().zc(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            qmt.Sf = 2;
        }
        HzH.ac().Qhi(adSlot, qmt, 7, new tP.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.ABk.3
            @Override // com.bytedance.sdk.openadsdk.core.tP.Qhi
            public void Qhi(int i, String str) {
                PAGRewardedAdLoadListener pAGRewardedAdLoadListener2;
                if (z || (pAGRewardedAdLoadListener2 = pAGRewardedAdLoadListener) == null) {
                    return;
                }
                pAGRewardedAdLoadListener2.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.tP.Qhi
            public void Qhi(com.bytedance.sdk.openadsdk.core.model.Qhi qhi, com.bytedance.sdk.openadsdk.core.model.cJ cJVar) {
                PAGRewardedAdLoadListener pAGRewardedAdLoadListener2;
                if (qhi.ac() != null && !qhi.ac().isEmpty()) {
                    hpZ hpz = new hpZ(ABk.this.cJ, qhi, adSlot);
                    if (!z) {
                        if (!TextUtils.isEmpty(adSlot.getBidAdm())) {
                            com.bytedance.sdk.openadsdk.Gm.ac.Qhi(qhi.fl(), System.currentTimeMillis() - currentTimeMillis);
                        }
                        if (!qhi.Tgh() && pAGRewardedAdLoadListener != null && HzH.CJ().MQ() == 0) {
                            ABk.this.Qhi(adSlot, qhi, pAGRewardedAdLoadListener, (PAGRewardedAd) hpz.Qhi(), false);
                        }
                    }
                    ac acVar = new ac(new Qhi(ABk.this.cJ, adSlot, qhi, pAGRewardedAdLoadListener, false), qhi);
                    for (int i = 0; i < qhi.ac().size(); i++) {
                        ABk.this.Qhi(qhi, qhi.ac().get(i), hpz, adSlot, z, acVar, qhi.Tgh());
                        if (qhi.Gm()) {
                            return;
                        }
                    }
                } else if (!z && (pAGRewardedAdLoadListener2 = pAGRewardedAdLoadListener) != null) {
                    pAGRewardedAdLoadListener2.onError(-3, com.bytedance.sdk.openadsdk.core.Sf.Qhi(-3));
                    cJVar.Qhi(-3);
                    com.bytedance.sdk.openadsdk.core.model.cJ.Qhi(cJVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final com.bytedance.sdk.openadsdk.core.model.Qhi qhi, com.bytedance.sdk.openadsdk.core.model.tP tPVar, final hpZ hpz, final AdSlot adSlot, final boolean z, final ac acVar, final boolean z2) {
        com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(tPVar, new Qhi.InterfaceC0235Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.ABk.4
        });
        boolean z3 = true;
        if (z && !com.bytedance.sdk.openadsdk.core.model.bxS.Gm(tPVar) && HzH.CJ().Eh(adSlot.getCodeId()).CJ == 1 && !com.bytedance.sdk.component.utils.hpZ.CJ(this.cJ)) {
            Qhi(new cJ(tPVar, adSlot, qhi));
            return;
        }
        boolean z4 = false;
        if (acVar == null || (!z2 && HzH.CJ().MQ() != 1)) {
            z3 = false;
        }
        if (!com.bytedance.sdk.openadsdk.core.model.bxS.Gm(tPVar)) {
            if (tPVar.FQ() != null) {
                com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi2 = com.bytedance.sdk.openadsdk.core.model.tP.Qhi(CacheDirFactory.getICacheDir(tPVar.zTC()).Qhi(), tPVar);
                Qhi2.Qhi("material_meta", tPVar);
                Qhi2.Qhi("ad_slot", adSlot);
                com.bytedance.sdk.openadsdk.core.video.CJ.fl.Qhi(Qhi2, new com.bykv.vk.openvk.component.video.api.fl.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.ABk.5
                    @Override // com.bykv.vk.openvk.component.video.api.fl.Qhi.InterfaceC0167Qhi
                    public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar2, int i) {
                        hpz.cJ();
                        if (z) {
                            zc.Qhi(ABk.this.cJ).Qhi(adSlot, qhi);
                        } else if (acVar != null) {
                            if (z2 || HzH.CJ().MQ() == 1) {
                                acVar.onAdLoaded(hpz.Qhi());
                            }
                        }
                    }

                    @Override // com.bykv.vk.openvk.component.video.api.fl.Qhi.InterfaceC0167Qhi
                    public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar2, int i, String str) {
                        if (acVar != null) {
                            if (z2 || HzH.CJ().MQ() == 1) {
                                acVar.onError(i, str);
                            }
                        }
                    }
                });
            } else {
                z4 = z3;
            }
            z3 = z4;
        } else if (z) {
            zc.Qhi(this.cJ).Qhi(adSlot, qhi);
        }
        if (z3) {
            acVar.onAdLoaded(hpz.Qhi());
        }
    }

    /* compiled from: RewardVideoLoadManager.java */
    /* renamed from: com.bytedance.sdk.openadsdk.component.reward.ABk$6  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass6 implements zc.Qhi<Object> {
        final /* synthetic */ com.bytedance.sdk.openadsdk.core.model.Qhi CJ;
        final /* synthetic */ boolean Qhi;
        final /* synthetic */ boolean Tgh;
        final /* synthetic */ AdSlot ac;
        final /* synthetic */ hpZ cJ;
        final /* synthetic */ ac fl;

        AnonymousClass6(boolean z, hpZ hpz, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Qhi qhi, ac acVar, boolean z2) {
            this.Qhi = z;
            this.cJ = hpz;
            this.ac = adSlot;
            this.CJ = qhi;
            this.fl = acVar;
            this.Tgh = z2;
        }

        @Override // com.bytedance.sdk.openadsdk.component.reward.zc.Qhi
        public void Qhi(boolean z, Object obj) {
            if (z) {
                this.cJ.cJ();
            }
            if (this.Qhi) {
                if (z) {
                    zc.Qhi(ABk.this.cJ).Qhi(this.ac, this.CJ);
                }
            } else if (z) {
                if (this.fl != null) {
                    if (this.Tgh || HzH.CJ().MQ() == 1) {
                        this.fl.onAdLoaded(this.cJ.Qhi());
                    }
                }
            } else if (this.fl != null) {
                if (this.Tgh || HzH.CJ().MQ() == 1) {
                    this.fl.onError(-1, "");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Qhi qhi, PAGRewardedAdLoadListener pAGRewardedAdLoadListener, PAGRewardedAd pAGRewardedAd, boolean z) {
        if (pAGRewardedAdLoadListener != null) {
            pAGRewardedAdLoadListener.onAdLoaded(pAGRewardedAd);
        }
        int cJ2 = Tgh.cJ();
        if (!z) {
            if (cJ2 == 2) {
                zc.Qhi(this.cJ).Qhi(adSlot, qhi);
                cJ(adSlot);
            }
        } else if (cJ2 == 2) {
            cJ(adSlot);
        } else if (cJ2 == 1) {
            zc.Qhi(this.cJ).Qhi(adSlot.getCodeId(), (com.bytedance.sdk.openadsdk.core.model.tP) null);
        }
    }

    private void cJ(AdSlot adSlot) {
        if (Tgh.cJ() != 2) {
            return;
        }
        zc.Qhi(this.cJ).Qhi(adSlot.getCodeId());
    }

    private void Qhi(cJ cJVar) {
        if (cJVar == null) {
            return;
        }
        if (this.CJ.size() > 0) {
            this.CJ.remove(0);
        }
        this.CJ.add(cJVar);
    }

    private void cJ() {
        if (this.ac.get()) {
            return;
        }
        this.ac.set(true);
        bxS.Qhi(this.Tgh, this.cJ);
    }

    private void ac() {
        if (this.ac.get()) {
            this.ac.set(false);
            try {
                bxS.Qhi(this.Tgh);
            } catch (Exception unused) {
            }
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.fl != null) {
            try {
                com.bytedance.sdk.component.utils.Sf.Qhi().removeCallbacks(this.fl);
            } catch (Exception unused) {
            }
            this.fl = null;
        }
        ac();
    }

    /* compiled from: RewardVideoLoadManager.java */
    /* loaded from: classes2.dex */
    public static class cJ extends com.bytedance.sdk.component.Sf.hm {
        final com.bytedance.sdk.openadsdk.core.model.tP Qhi;
        final com.bytedance.sdk.openadsdk.core.model.Qhi ac;
        final AdSlot cJ;

        cJ(com.bytedance.sdk.openadsdk.core.model.tP tPVar, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Qhi qhi) {
            super("Reward Task");
            this.Qhi = tPVar;
            this.cJ = adSlot;
            this.ac = qhi;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.Qhi == null || this.Qhi.FQ() == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi = com.bytedance.sdk.openadsdk.core.model.tP.Qhi(CacheDirFactory.getICacheDir(this.Qhi.zTC()).Qhi(), this.Qhi);
            Qhi.Qhi("material_meta", this.Qhi);
            Qhi.Qhi("ad_slot", this.cJ);
            com.bytedance.sdk.openadsdk.core.video.CJ.fl.Qhi(Qhi, new com.bykv.vk.openvk.component.video.api.fl.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.ABk.cJ.1
                @Override // com.bykv.vk.openvk.component.video.api.fl.Qhi.InterfaceC0167Qhi
                public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar, int i, String str) {
                }

                @Override // com.bykv.vk.openvk.component.video.api.fl.Qhi.InterfaceC0167Qhi
                public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar, int i) {
                    zc.Qhi(HzH.Qhi()).Qhi(cJ.this.cJ, cJ.this.ac);
                }
            });
        }

        /* compiled from: RewardVideoLoadManager.java */
        /* renamed from: com.bytedance.sdk.openadsdk.component.reward.ABk$cJ$2  reason: invalid class name */
        /* loaded from: classes2.dex */
        class AnonymousClass2 implements zc.Qhi<Object> {
            AnonymousClass2() {
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.zc.Qhi
            public void Qhi(boolean z, Object obj) {
                if (z) {
                    zc.Qhi(HzH.Qhi()).Qhi(cJ.this.cJ, cJ.this.ac);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardVideoLoadManager.java */
    /* loaded from: classes2.dex */
    public static class Qhi implements PAGRewardedAdLoadListener {
        private final PAGRewardedAdLoadListener CJ;
        private final Context Qhi;
        private final com.bytedance.sdk.openadsdk.core.model.Qhi ac;
        private final AdSlot cJ;
        private final boolean fl;

        public Qhi(Context context, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Qhi qhi, PAGRewardedAdLoadListener pAGRewardedAdLoadListener, boolean z) {
            this.Qhi = context;
            this.cJ = adSlot;
            this.ac = qhi;
            this.CJ = pAGRewardedAdLoadListener;
            this.fl = z;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.fl
        public void onError(int i, String str) {
            PAGRewardedAdLoadListener pAGRewardedAdLoadListener = this.CJ;
            if (pAGRewardedAdLoadListener != null) {
                pAGRewardedAdLoadListener.onError(i, str);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        /* renamed from: Qhi */
        public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
            ABk.Qhi(this.Qhi).Qhi(this.cJ, this.ac, this.CJ, pAGRewardedAd, this.fl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardVideoLoadManager.java */
    /* loaded from: classes2.dex */
    public static class ac implements PAGRewardedAdLoadListener {
        private final com.bytedance.sdk.openadsdk.core.model.Qhi CJ;
        private final PAGRewardedAdLoadListener Qhi;
        private final AtomicInteger ac;
        private final AtomicBoolean cJ;

        private ac(PAGRewardedAdLoadListener pAGRewardedAdLoadListener, com.bytedance.sdk.openadsdk.core.model.Qhi qhi) {
            this.cJ = new AtomicBoolean(false);
            this.Qhi = pAGRewardedAdLoadListener;
            this.CJ = qhi;
            this.ac = new AtomicInteger(Qhi());
        }

        private int Qhi() {
            if (this.CJ.CJ()) {
                int i = 0;
                for (int i2 = 0; i2 < this.CJ.ac().size(); i2++) {
                    com.bytedance.sdk.openadsdk.core.model.tP tPVar = this.CJ.ac().get(i2);
                    if (tPVar != null && !com.bytedance.sdk.openadsdk.core.model.bxS.Gm(tPVar) && tPVar.FQ() != null) {
                        i++;
                    }
                }
                return i;
            }
            return 0;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.fl
        public void onError(int i, String str) {
            if (this.ac.decrementAndGet() > 0 || this.Qhi == null || !this.cJ.compareAndSet(false, true)) {
                return;
            }
            this.Qhi.onError(i, str);
            com.bytedance.sdk.openadsdk.Gm.ac.Qhi("choose_ad_load_error", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.ABk.ac.1
                @Override // com.bytedance.sdk.openadsdk.Gm.cJ
                public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("req_id", ac.this.CJ.Qhi());
                    return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("choose_ad_load_error").cJ(jSONObject.toString());
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        /* renamed from: Qhi */
        public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
            this.ac.decrementAndGet();
            if (this.Qhi == null || !this.cJ.compareAndSet(false, true)) {
                return;
            }
            this.Qhi.onAdLoaded(pAGRewardedAd);
        }
    }
}
