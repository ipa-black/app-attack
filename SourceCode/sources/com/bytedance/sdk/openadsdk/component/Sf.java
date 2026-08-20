package com.bytedance.sdk.openadsdk.component;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.component.ROR;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.qMt;
import com.bytedance.sdk.openadsdk.core.tP;
import com.bytedance.sdk.openadsdk.utils.Jma;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: TTAppOpenAdLoadManager.java */
/* loaded from: classes2.dex */
public class Sf implements CQU.Qhi {
    private boolean Gm;
    private final Context Qhi;
    private PAGAppOpenAdLoadListener ROR;
    private int Sf;
    private AdSlot Tgh;
    private final ROR ac;
    private final tP<com.bytedance.sdk.openadsdk.cJ.Qhi> cJ;
    private final AtomicBoolean CJ = new AtomicBoolean(false);
    private int fl = 0;
    private volatile int hm = 0;
    private final com.bytedance.sdk.openadsdk.core.model.CQU WAv = new com.bytedance.sdk.openadsdk.core.model.CQU();

    public Sf(Context context) {
        if (context != null) {
            this.Qhi = context.getApplicationContext();
        } else {
            this.Qhi = HzH.Qhi();
        }
        this.cJ = HzH.ac();
        this.ac = ROR.Qhi(this.Qhi);
    }

    public static Sf Qhi(Context context) {
        return new Sf(context);
    }

    public void Qhi(AdSlot adSlot, com.bytedance.sdk.openadsdk.common.fl flVar, int i) {
        if (flVar == null) {
            return;
        }
        if (i <= 0) {
            i = IronSourceConstants.BN_AUCTION_REQUEST;
        }
        this.Tgh = adSlot;
        this.WAv.Qhi = !TextUtils.isEmpty(adSlot.getBidAdm());
        if (flVar instanceof PAGAppOpenAdLoadListener) {
            this.ROR = (PAGAppOpenAdLoadListener) flVar;
        }
        this.fl = Qhi(this.Tgh);
        this.Sf = i;
        this.WAv.Qhi(Jma.Qhi());
        if (this.WAv.Qhi || com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CQU(this.Tgh.getCodeId()) == 0) {
            cJ(this.Tgh);
        }
        if (this.WAv.Qhi) {
            return;
        }
        new CQU(iMK.cJ().getLooper(), this).sendEmptyMessageDelayed(1, i);
        Qhi();
    }

    private void cJ(final AdSlot adSlot) {
        final Jma Qhi = Jma.Qhi();
        this.hm = 1;
        qMt qmt = new qMt();
        qmt.WAv = this.WAv;
        qmt.CJ = 1;
        qmt.Sf = 2;
        this.cJ.Qhi(adSlot, qmt, 3, new tP.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.Sf.1
            @Override // com.bytedance.sdk.openadsdk.core.tP.Qhi
            public void Qhi(int i, String str) {
                Sf.this.hm = 3;
                Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(2, 100, i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.core.tP.Qhi
            public void Qhi(com.bytedance.sdk.openadsdk.core.model.Qhi qhi, com.bytedance.sdk.openadsdk.core.model.cJ cJVar) {
                Sf.this.hm = 2;
                if (qhi == null || qhi.ac() == null || qhi.ac().size() == 0) {
                    Sf.this.hm = 3;
                    Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(2, 100, 20001, com.bytedance.sdk.openadsdk.core.Sf.Qhi(20001)));
                    cJVar.Qhi(-3);
                    com.bytedance.sdk.openadsdk.core.model.cJ.Qhi(cJVar);
                    return;
                }
                final com.bytedance.sdk.openadsdk.core.model.tP tPVar = qhi.ac().get(0);
                long iMK = tPVar.iMK();
                Sf.this.WAv.cJ = iMK;
                if (tPVar.czB()) {
                    Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 100, tPVar));
                    return;
                }
                if (com.bytedance.sdk.openadsdk.core.model.tP.fl(tPVar)) {
                    int zc = HzH.CJ().zc();
                    if (zc == 1 || zc == 3) {
                        Sf.this.WAv.cJ = -1L;
                        Sf.this.WAv.Qhi(3);
                        Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 100, tPVar));
                        Sf.this.Qhi(tPVar, adSlot, false);
                        return;
                    }
                    Sf sf = Sf.this;
                    sf.Qhi(tPVar, adSlot, !sf.WAv.Qhi);
                } else if (HzH.CJ().Gm() == 1) {
                    Sf.this.WAv.cJ = -1L;
                    Sf.this.WAv.Qhi(3);
                    Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 100, tPVar));
                    Sf.this.Qhi(tPVar, false);
                    return;
                } else {
                    Sf sf2 = Sf.this;
                    sf2.Qhi(tPVar, !sf2.WAv.Qhi);
                }
                if (Sf.this.WAv.Qhi) {
                    com.bytedance.sdk.openadsdk.Gm.ac.Qhi(tPVar, Qhi.ac());
                    new Object[]{"onAdLoad: invoke callback after ", Long.valueOf(iMK), "ms for bidding"};
                    if (iMK == 0) {
                        Sf.this.WAv.Qhi(2);
                        Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 100, tPVar));
                        return;
                    }
                    iMK.cJ().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.Sf.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Sf.this.WAv.Qhi(2);
                            Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 100, tPVar));
                        }
                    }, iMK);
                }
            }
        });
    }

    private void Qhi() {
        lG.cJ(new hm("tryGetAppOpenAdFromCache") { // from class: com.bytedance.sdk.openadsdk.component.Sf.2
            @Override // java.lang.Runnable
            public void run() {
                int zc;
                com.bytedance.sdk.openadsdk.core.model.tP fl = Sf.this.ac.fl(Sf.this.fl);
                if (fl == null) {
                    Sf.this.Qhi(false);
                    return;
                }
                boolean fl2 = com.bytedance.sdk.openadsdk.core.model.tP.fl(fl);
                if (fl.czB()) {
                    Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 101, fl));
                } else if (!fl2 && HzH.CJ().Gm() == 1) {
                    Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 101, fl));
                } else if (!fl2 || ((zc = HzH.CJ().zc()) != 2 && zc != 3)) {
                    if (Sf.this.ac.cJ(Sf.this.fl) || Sf.this.ac.CJ(Sf.this.fl)) {
                        if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CQU(Sf.this.Tgh.getCodeId()) == 0) {
                            Sf.this.ac.ROR(Sf.this.fl);
                        }
                        if (!fl2) {
                            if (Sf.this.ac.cJ(fl)) {
                                Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 101, fl));
                                return;
                            }
                            Sf.this.Qhi(false);
                            com.bytedance.sdk.openadsdk.component.CJ.cJ.cJ(fl);
                            return;
                        } else if (TextUtils.isEmpty(Sf.this.ac.Qhi(fl))) {
                            Sf.this.Qhi(false);
                            com.bytedance.sdk.openadsdk.component.CJ.cJ.cJ(fl);
                            return;
                        } else {
                            Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 101, fl));
                            return;
                        }
                    }
                    Sf.this.Qhi(true);
                } else {
                    Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 101, fl));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(boolean z) {
        if (z) {
            this.ac.ROR(this.fl);
        }
        if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CQU(this.Tgh.getCodeId()) == 1) {
            cJ(this.Tgh);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final com.bytedance.sdk.openadsdk.core.model.tP tPVar, AdSlot adSlot, final boolean z) {
        this.ac.Qhi(tPVar, adSlot, this.WAv, new ROR.ac() { // from class: com.bytedance.sdk.openadsdk.component.Sf.3
            @Override // com.bytedance.sdk.openadsdk.component.ROR.ac
            public void Qhi() {
                Log.d("TTAppOpenAdLoadManager", "preLoadSuccess: video load success");
                if (z) {
                    Sf.this.hm = 4;
                    com.bytedance.sdk.openadsdk.component.fl.cJ cJVar = new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 100, tPVar);
                    cJVar.Qhi(true);
                    Sf.this.Qhi(cJVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.ROR.ac
            public void Qhi(int i, String str) {
                if (z) {
                    Sf.this.hm = 5;
                    Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(2, 100, 10003, com.bytedance.sdk.openadsdk.core.Sf.Qhi(10003)));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final com.bytedance.sdk.openadsdk.core.model.tP tPVar, final boolean z) {
        this.ac.Qhi(tPVar, this.WAv, new ROR.cJ() { // from class: com.bytedance.sdk.openadsdk.component.Sf.4
            @Override // com.bytedance.sdk.openadsdk.component.ROR.cJ
            public void Qhi(com.bytedance.sdk.openadsdk.iMK.Qhi.cJ cJVar) {
                Log.d("TTAppOpenAdLoadManager", "preLoadSuccess: image load success");
                if (z) {
                    Sf.this.hm = 4;
                    com.bytedance.sdk.openadsdk.component.fl.cJ cJVar2 = new com.bytedance.sdk.openadsdk.component.fl.cJ(1, 100, tPVar);
                    cJVar2.Qhi(true);
                    Sf.this.Qhi(cJVar2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.component.ROR.cJ
            public void Qhi() {
                Log.d("TTAppOpenAdLoadManager", "preLoadFail: image load fail");
                if (z) {
                    Sf.this.hm = 5;
                    Sf.this.Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(2, 100, 10003, com.bytedance.sdk.openadsdk.core.Sf.Qhi(10003)));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(com.bytedance.sdk.openadsdk.component.fl.cJ cJVar) {
        int cJ = cJVar.cJ();
        int ac = cJVar.ac();
        if (this.CJ.get()) {
            if (cJ == 1 && ac == 100 && cJVar.Qhi()) {
                ROR.Qhi(HzH.Qhi()).Qhi(new com.bytedance.sdk.openadsdk.component.fl.Qhi(this.fl, cJVar.CJ()));
                if (this.Gm) {
                    return;
                }
                com.bytedance.sdk.openadsdk.component.CJ.cJ.Qhi(cJVar.CJ(), 1, this.WAv);
            }
        } else if (cJ != 1) {
            if (cJ == 2 || cJ == 3) {
                PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener = this.ROR;
                if (pAGAppOpenAdLoadListener != null) {
                    pAGAppOpenAdLoadListener.onError(cJVar.fl(), cJVar.Tgh());
                }
                this.CJ.set(true);
                if (cJ == 3) {
                    com.bytedance.sdk.openadsdk.component.CJ.cJ.Qhi(this.hm, this.Sf);
                }
            }
        } else {
            if (this.ROR != null) {
                this.ROR.onAdLoaded(new fl(this.Qhi, cJVar.CJ(), ac == 101, this.Tgh));
            }
            this.CJ.set(true);
            if (ac == 101) {
                com.bytedance.sdk.openadsdk.component.CJ.cJ.Qhi(cJVar.CJ(), this.WAv.Qhi().ac());
            } else if (ac == 100) {
                com.bytedance.sdk.openadsdk.component.CJ.cJ.Qhi(cJVar.CJ(), 0, this.WAv);
                this.Gm = true;
                if (this.WAv.Qhi) {
                    return;
                }
                if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CQU(this.Tgh.getCodeId()) == 0) {
                    this.ac.Qhi(this.Tgh);
                } else {
                    this.ac.Qhi(new com.bytedance.sdk.openadsdk.component.fl.Qhi(this.fl, cJVar.CJ()));
                }
            }
        }
    }

    public int Qhi(AdSlot adSlot) {
        try {
            return Integer.parseInt(adSlot.getCodeId());
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        if (message.what != 1 || this.CJ.get()) {
            return;
        }
        Qhi(new com.bytedance.sdk.openadsdk.component.fl.cJ(3, 102, 10002, com.bytedance.sdk.openadsdk.core.Sf.Qhi(10002)));
    }
}
