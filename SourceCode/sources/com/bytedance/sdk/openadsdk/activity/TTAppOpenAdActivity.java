package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.Dww;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.bxS;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.Jma;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import io.bidmachine.utils.IabUtils;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TTAppOpenAdActivity extends TTBaseActivity implements CQU.Qhi {
    private static com.bytedance.sdk.openadsdk.apiImpl.ac.cJ Sf;
    private int CQU;
    private IListenerManager EBS;
    private FrameLayout Eh;
    private TTAdDislikeDialog Gm;
    private float HzH;
    private String MQ;
    private com.bytedance.sdk.openadsdk.component.ac NFd;
    private com.bytedance.sdk.openadsdk.component.Tgh.cJ WAv;
    private boolean aP;
    private com.bytedance.sdk.openadsdk.apiImpl.ac.cJ bxS;
    private float hpZ;
    private boolean kYc;
    private Sf pA;
    private int pM;
    private tP qMt;
    private AdSlot sDy;
    private int tP;
    private TTAdDislikeToast zc;
    protected final AtomicBoolean Qhi = new AtomicBoolean(false);
    protected final CQU cJ = new CQU(Looper.getMainLooper(), this);
    final AtomicBoolean ac = new AtomicBoolean(false);
    final AtomicBoolean CJ = new AtomicBoolean(false);
    private final com.bytedance.sdk.openadsdk.component.Sf.Qhi hm = new com.bytedance.sdk.openadsdk.component.Sf.Qhi();
    protected boolean fl = false;
    private final AtomicBoolean ABk = new AtomicBoolean(false);
    private Jma iMK = Jma.cJ();
    private final AtomicBoolean Dww = new AtomicBoolean(false);
    long Tgh = 0;
    private volatile boolean lB = false;
    private final com.bytedance.sdk.openadsdk.component.Qhi lG = new com.bytedance.sdk.openadsdk.component.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.1
        @Override // com.bytedance.sdk.openadsdk.component.Qhi, com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
        public void cJ(long j, int i) {
            new Object[]{"open_ad", "onError() called with: totalPlayTime = [" + j + "], percent = [" + i + "]"};
            TTAppOpenAdActivity.this.tP();
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi, com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
        public void Qhi() {
            new Object[]{"open_ad", "onTimeOut"};
            TTAppOpenAdActivity.this.tP();
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi, com.bykv.vk.openvk.component.video.api.CJ.fl.Qhi
        public void Qhi(long j, long j2) {
            TTAppOpenAdActivity.this.hm.Qhi(j);
            if (!TTAppOpenAdActivity.this.fl && TTAppOpenAdActivity.this.NFd != null && TTAppOpenAdActivity.this.NFd.fl() != null && TTAppOpenAdActivity.this.NFd.fl().cJ()) {
                TTAppOpenAdActivity.this.NFd.fl().CJ();
            }
            TTAppOpenAdActivity.this.zc();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi, com.bytedance.sdk.openadsdk.component.Tgh.Qhi
        public void Qhi(View view) {
            TTAppOpenAdActivity.this.MQ();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi, com.bytedance.sdk.openadsdk.component.Tgh.Qhi
        public void cJ(View view) {
            TTAppOpenAdActivity.this.Qhi();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi, com.bytedance.sdk.openadsdk.component.Tgh.Qhi
        public void cJ() {
            TTAppOpenAdActivity.this.lB = true;
            new Object[]{"open_ad", "onCountDownFinish() called"};
            if (com.bytedance.sdk.openadsdk.HzH.Qhi.Qhi("splash_auto_close_switch", 0) == 0) {
                if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                    TTAppOpenAdActivity.this.Qhi("onAdTimeOver");
                } else if (TTAppOpenAdActivity.this.bxS != null) {
                    TTAppOpenAdActivity.this.bxS.ac();
                }
                TTAppOpenAdActivity.this.finish();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi, com.bytedance.sdk.openadsdk.component.Tgh.Qhi
        public void Qhi(int i, int i2, boolean z) {
            if (TTAppOpenAdActivity.this.NFd != null) {
                TTAppOpenAdActivity.this.NFd.Qhi(i, i2, z);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi
        public void ac() {
            TTAppOpenAdActivity.this.Tgh();
            TTAppOpenAdActivity.this.iMK.CJ();
            TTAppOpenAdActivity.this.hpZ();
            if (TTAppOpenAdActivity.this.kYc) {
                TTAppOpenAdActivity.this.Gm();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi
        public void CJ() {
            TTAppOpenAdActivity.this.finish();
        }

        @Override // com.bytedance.sdk.openadsdk.component.Qhi
        public void fl() {
            TTAppOpenAdActivity.this.kYc();
        }
    };
    private final Runnable Jma = new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.5
        @Override // java.lang.Runnable
        public void run() {
            if (TTAppOpenAdActivity.this.ABk.get()) {
                return;
            }
            if (TTAppOpenAdActivity.this.qMt != null && TTAppOpenAdActivity.this.qMt.IC() && TTAppOpenAdActivity.this.qMt.cJP() != null && TTAppOpenAdActivity.this.qMt.cJP().Qhi() != null) {
                TTAppOpenAdActivity.this.qMt.cJP().Qhi().Qhi(0L);
            }
            TTAppOpenAdActivity.this.pA = new Sf();
            TTAppOpenAdActivity.this.pA.Qhi(System.currentTimeMillis(), 1.0f);
            TTAppOpenAdActivity.this.iMK.CJ();
            if (TTAppOpenAdActivity.this.WAv != null) {
                TTAppOpenAdActivity.this.WAv.cJ();
            }
            TTAppOpenAdActivity.this.HzH();
            View findViewById = TTAppOpenAdActivity.this.findViewById(16908290);
            JSONObject jSONObject = new JSONObject();
            if (findViewById != null) {
                try {
                    jSONObject.put(IabUtils.KEY_WIDTH, findViewById.getWidth());
                    jSONObject.put(IabUtils.KEY_HEIGHT, findViewById.getHeight());
                    jSONObject.put("alpha", findViewById.getAlpha());
                } catch (JSONException e2) {
                    Log.e("TTAppOpenAdActivity", "run: ", e2);
                    TTAppOpenAdActivity.this.finish();
                    return;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("root_view", jSONObject.toString());
            jSONObject2.put("ad_root", TTAppOpenAdActivity.this.CQU);
            jSONObject2.put("openad_creative_type", TTAppOpenAdActivity.this.kYc ? "video_normal_ad" : "image_normal_ad");
            if (com.bytedance.sdk.openadsdk.component.view.Qhi.ac() == null) {
                jSONObject2.put("appicon_acquirefail", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            }
            if (TTAppOpenAdActivity.this.aP || TTAppOpenAdActivity.this.qMt.gT()) {
                jSONObject2.put("dynamic_show_type", TTAppOpenAdActivity.this.pA());
                TTAppOpenAdActivity.this.Qhi(jSONObject2);
            }
            jSONObject2.put("is_icon_only", TTAppOpenAdActivity.this.qMt.czB() ? 1 : 0);
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(TTAppOpenAdActivity.this.qMt, "open_ad", jSONObject2);
            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(TTAppOpenAdActivity.this.findViewById(16908290), TTAppOpenAdActivity.this.qMt, new Tgh.Qhi(TTAppOpenAdActivity.this.pA()));
            TTAppOpenAdActivity.this.ABk.set(true);
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        HzH.cJ(getApplicationContext());
        if (!cJ(bundle)) {
            finish();
        } else if (!iMK.fl()) {
            finish();
        } else {
            if (bundle != null) {
                com.bytedance.sdk.openadsdk.cJ.ac.fl(this.qMt, "open_ad", (JSONObject) null);
            }
            this.kYc = tP.fl(this.qMt);
            new Object[]{"open_ad", "onCreate: isVideo is " + this.kYc};
            if (this.kYc) {
                this.hm.Qhi((float) this.qMt.FQ().Tgh());
            } else {
                this.hm.Qhi(HzH.CJ().bxS(String.valueOf(this.tP)));
            }
            com.bytedance.sdk.openadsdk.component.Tgh.cJ cJVar = new com.bytedance.sdk.openadsdk.component.Tgh.cJ(this.hm);
            this.WAv = cJVar;
            cJVar.Qhi(this.lG);
            ROR();
            FrameLayout frameLayout = new FrameLayout(this);
            this.Eh = frameLayout;
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            try {
                setContentView(this.Eh);
                this.Eh.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            int CQU = TTAppOpenAdActivity.this.qMt.CQU();
                            TTAppOpenAdActivity tTAppOpenAdActivity = TTAppOpenAdActivity.this;
                            tTAppOpenAdActivity.aP = tTAppOpenAdActivity.qMt != null && TTAppOpenAdActivity.this.qMt.EBS() == 2 && (CQU == 3 || CQU == 7);
                            if (TTAppOpenAdActivity.this.aP) {
                                TTAppOpenAdActivity tTAppOpenAdActivity2 = TTAppOpenAdActivity.this;
                                TTAppOpenAdActivity tTAppOpenAdActivity3 = TTAppOpenAdActivity.this;
                                tTAppOpenAdActivity2.NFd = new com.bytedance.sdk.openadsdk.component.cJ(tTAppOpenAdActivity3, tTAppOpenAdActivity3.qMt, TTAppOpenAdActivity.this.Eh, TTAppOpenAdActivity.this.lG, TTAppOpenAdActivity.this.pM, TTAppOpenAdActivity.this.kYc, TTAppOpenAdActivity.this.hm);
                            } else {
                                TTAppOpenAdActivity tTAppOpenAdActivity4 = TTAppOpenAdActivity.this;
                                TTAppOpenAdActivity tTAppOpenAdActivity5 = TTAppOpenAdActivity.this;
                                tTAppOpenAdActivity4.NFd = new com.bytedance.sdk.openadsdk.component.ac(tTAppOpenAdActivity5, tTAppOpenAdActivity5.qMt, TTAppOpenAdActivity.this.Eh, TTAppOpenAdActivity.this.lG, TTAppOpenAdActivity.this.pM, TTAppOpenAdActivity.this.kYc, TTAppOpenAdActivity.this.hm);
                                TTAppOpenAdActivity.this.NFd.Qhi(TTAppOpenAdActivity.this.HzH, TTAppOpenAdActivity.this.hpZ);
                            }
                            TTAppOpenAdActivity.this.NFd.Qhi((ViewGroup) TTAppOpenAdActivity.this.Eh);
                            TTAppOpenAdActivity.this.NFd.Qhi();
                            TTAppOpenAdActivity.this.NFd.cJ();
                        } catch (Throwable th) {
                            TTAppOpenAdActivity.this.finish();
                            ABk.Qhi("TTAppOpenAdActivity", th.getMessage());
                        }
                    }
                });
                try {
                    final View decorView = getWindow().getDecorView();
                    if (Build.VERSION.SDK_INT >= 35) {
                        decorView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.3
                            @Override // android.view.View.OnApplyWindowInsetsListener
                            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                                List<Rect> boundingRects;
                                try {
                                    DisplayCutout displayCutout = windowInsets.getDisplayCutout();
                                    if (displayCutout != null && (boundingRects = displayCutout.getBoundingRects()) != null && !boundingRects.isEmpty()) {
                                        decorView.setPadding(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
                                    }
                                } catch (Throwable unused) {
                                }
                                return windowInsets;
                            }
                        });
                    }
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                com.bytedance.sdk.openadsdk.Gm.ac.cJ();
                finish();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Tgh() {
        Log.d("TTAppOpenAdActivity", "startCountDownTimer() called");
        this.WAv.cJ(HzH.CJ().EBS(String.valueOf(this.tP)));
        this.WAv.Qhi(this.hm.Qhi());
    }

    private void ROR() {
        if (26 == Build.VERSION.SDK_INT) {
            if (getResources().getConfiguration().orientation == 1) {
                this.pM = 1;
            } else {
                this.pM = 2;
            }
        } else {
            this.pM = this.qMt.SL();
        }
        Sf();
    }

    private void Sf() {
        int min;
        int max;
        new Object[]{"open_ad", "changeScreenOrientation: mOrientation=" + this.pM};
        if (Build.VERSION.SDK_INT != 26) {
            if (Build.VERSION.SDK_INT == 27) {
                try {
                    hm();
                } catch (Throwable th) {
                    ABk.Qhi("TTAppOpenAdActivity", th.getMessage());
                    return;
                }
            } else {
                hm();
            }
        }
        Pair<Integer, Integer> Sf2 = zn.Sf(getApplicationContext());
        if (this.pM == 2) {
            min = Math.max(((Integer) Sf2.first).intValue(), ((Integer) Sf2.second).intValue());
            max = Math.min(((Integer) Sf2.first).intValue(), ((Integer) Sf2.second).intValue());
        } else {
            min = Math.min(((Integer) Sf2.first).intValue(), ((Integer) Sf2.second).intValue());
            max = Math.max(((Integer) Sf2.first).intValue(), ((Integer) Sf2.second).intValue());
        }
        this.hpZ = max;
        this.HzH = min;
        float Qhi = zn.Qhi();
        if (zn.ac((Activity) this)) {
            int i = this.pM;
            if (i == 1) {
                this.hpZ -= Qhi;
            } else if (i == 2) {
                this.HzH -= Qhi;
            }
        }
        com.bytedance.sdk.openadsdk.component.ac acVar = this.NFd;
        if (acVar != null) {
            acVar.Qhi(this.HzH, this.hpZ);
        }
    }

    private void hm() {
        if (this.pM == 2) {
            if (fl()) {
                setRequestedOrientation(8);
            } else {
                setRequestedOrientation(0);
            }
        } else {
            setRequestedOrientation(1);
        }
        if (this.pM == 2 || !zn.ac((Activity) this)) {
            getWindow().addFlags(1024);
        }
    }

    protected void Qhi() {
        if (isFinishing()) {
            return;
        }
        if (this.CJ.get()) {
            ABk();
            return;
        }
        if (this.Gm == null) {
            try {
                WAv();
            } catch (Throwable th) {
                ApmHelper.reportCustomError("initDislike error", "TTAppOpenAdActivity", th);
            }
        }
        TTAdDislikeDialog tTAdDislikeDialog = this.Gm;
        if (tTAdDislikeDialog != null) {
            tTAdDislikeDialog.Qhi();
        }
    }

    private void WAv() {
        if (this.Gm == null) {
            TTAdDislikeDialog tTAdDislikeDialog = new TTAdDislikeDialog(this, this.qMt);
            this.Gm = tTAdDislikeDialog;
            tTAdDislikeDialog.setDislikeSource("video_player");
            this.Gm.setCallback(new TTAdDislikeDialog.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.4
                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                public void Qhi(View view) {
                    TTAppOpenAdActivity.this.ac.set(true);
                    TTAppOpenAdActivity.this.ac();
                }

                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                public void cJ(View view) {
                    TTAppOpenAdActivity.this.ac.set(false);
                    TTAppOpenAdActivity.this.cJ();
                }

                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                public void Qhi(int i, FilterWord filterWord) {
                    if (TTAppOpenAdActivity.this.CJ.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    TTAppOpenAdActivity.this.CJ.set(true);
                    TTAppOpenAdActivity.this.iMK();
                }
            });
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(16908290);
        frameLayout.addView(this.Gm);
        if (this.zc == null) {
            TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this);
            this.zc = tTAdDislikeToast;
            frameLayout.addView(tTAdDislikeToast);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Gm() {
        if (!this.kYc || this.qMt.czB() || this.lB) {
            return;
        }
        this.cJ.sendEmptyMessageDelayed(100, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zc() {
        if (!this.kYc || this.qMt.czB()) {
            return;
        }
        this.cJ.removeMessages(100);
    }

    private void ABk() {
        this.zc.Qhi(TTAdDislikeToast.getDislikeTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iMK() {
        this.zc.Qhi(TTAdDislikeToast.getDislikeSendTip());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (HzH.CJ().qMt(String.valueOf(this.tP)) == 1) {
            if (this.hm.cJ() >= HzH.CJ().EBS(String.valueOf(this.tP)) * 1000) {
                MQ();
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            if (!this.aP) {
                this.iMK.CJ();
            }
            tP tPVar = this.qMt;
            if (tPVar != null && tPVar.qb() && !this.qMt.ZRq()) {
                this.qMt.ROR(true);
                tP tPVar2 = this.qMt;
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar2, "open_ad", tPVar2.up());
            }
        } else if (this.ABk.get()) {
            if (this.iMK.fl()) {
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(String.valueOf(this.iMK.ac()), this.qMt, "open_ad", this.pA);
            }
            this.iMK = Jma.cJ();
        }
        com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.qMt, z ? 4 : 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        com.bytedance.sdk.openadsdk.component.ac acVar;
        super.onResume();
        this.fl = true;
        if (this.Qhi.getAndSet(true)) {
            if (this.Dww.get()) {
                tP();
                if (this.kYc && (acVar = this.NFd) != null && acVar.fl() != null) {
                    this.NFd.fl().Qhi(3);
                }
                finish();
                return;
            }
            cJ();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.fl = false;
        ac();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.cJ.removeCallbacksAndMessages(null);
        com.bytedance.sdk.openadsdk.component.Tgh.cJ cJVar = this.WAv;
        if (cJVar != null) {
            cJVar.fl();
        }
        com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.qMt);
        if (this.kYc) {
            com.bytedance.sdk.openadsdk.component.CJ.cJ.Qhi(this.qMt, this.hm.cJ(), this.hm.Qhi(), true);
        } else {
            com.bytedance.sdk.openadsdk.component.CJ.cJ.Qhi(this.qMt, -1L, this.hm.Qhi(), false);
        }
        if (this.iMK.fl() && this.ABk.get()) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(String.valueOf(this.iMK.ac()), this.qMt, "open_ad", this.pA);
            this.iMK = Jma.cJ();
        }
        com.bytedance.sdk.openadsdk.component.ac acVar = this.NFd;
        if (acVar != null) {
            acVar.ac();
        }
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("recycleRes");
        }
        Sf = null;
        this.bxS = null;
        TTAdDislikeDialog tTAdDislikeDialog = this.Gm;
        if (tTAdDislikeDialog != null) {
            tTAdDislikeDialog.setCallback(null);
        }
        if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CQU(String.valueOf(this.tP)) == 1) {
            com.bytedance.sdk.openadsdk.component.ROR.Qhi(HzH.Qhi()).Qhi(this.sDy);
        }
    }

    void cJ() {
        if (this.ac.get()) {
            return;
        }
        if (this.kYc) {
            com.bytedance.sdk.openadsdk.component.ac acVar = this.NFd;
            if (acVar != null && acVar.fl() != null && this.NFd.fl().ac()) {
                this.NFd.fl().fl();
            }
            Gm();
        }
        com.bytedance.sdk.openadsdk.component.Tgh.cJ cJVar = this.WAv;
        if (cJVar != null) {
            cJVar.ac();
        }
    }

    void ac() {
        if (this.kYc) {
            com.bytedance.sdk.openadsdk.component.ac acVar = this.NFd;
            if (acVar != null && acVar.fl() != null && this.NFd.fl().cJ()) {
                this.NFd.fl().CJ();
            }
            zc();
        }
        com.bytedance.sdk.openadsdk.component.Tgh.cJ cJVar = this.WAv;
        if (cJVar != null) {
            cJVar.CJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int pA() {
        if (this.qMt.gT()) {
            return 5;
        }
        if (this.aP) {
            return this.NFd.CJ();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject Qhi(JSONObject jSONObject) {
        if (pA() == 0) {
            return this.NFd.Qhi(jSONObject);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hpZ() {
        if (this.ABk.get()) {
            return;
        }
        try {
            getWindow().getDecorView().post(this.Jma);
        } catch (Throwable unused) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void HzH() {
        new Object[]{"open_ad", "callbackAdShow() called"};
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdShow");
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.ac.cJ cJVar = this.bxS;
        if (cJVar != null) {
            cJVar.Qhi();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kYc() {
        new Object[]{"open_ad", "callbackAdClick() called"};
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdClicked");
        } else {
            com.bytedance.sdk.openadsdk.apiImpl.ac.cJ cJVar = this.bxS;
            if (cJVar != null) {
                cJVar.onAdClicked();
            }
        }
        if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Dww(String.valueOf(this.tP))) {
            this.Dww.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tP() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdSkip");
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.ac.cJ cJVar = this.bxS;
        if (cJVar != null) {
            cJVar.cJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void MQ() {
        com.bytedance.sdk.openadsdk.component.ac acVar;
        new Object[]{"open_ad", "onUserWantSkip() called"};
        bxS.ac(this.tP);
        tP();
        if (this.kYc && (acVar = this.NFd) != null && acVar.fl() != null) {
            this.NFd.fl().Qhi(4);
        }
        com.bytedance.sdk.openadsdk.component.CJ.cJ.Qhi(this.qMt, (int) this.hm.cJ(), this.WAv.Qhi(), this.hm.Qhi());
        tP tPVar = this.qMt;
        if (tPVar != null && tPVar.IC() && this.qMt.cJP() != null && this.qMt.cJP().Qhi() != null) {
            com.bytedance.sdk.openadsdk.core.ROR.fl Qhi = this.qMt.cJP().Qhi();
            com.bytedance.sdk.openadsdk.component.ac acVar2 = this.NFd;
            long ROR = (acVar2 == null || acVar2.fl() == null) ? 0L : this.NFd.fl().ROR();
            Qhi.Tgh(ROR);
            Qhi.fl(ROR);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final String str) {
        lG.ac(new hm("AppOpenAd_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTAppOpenAdActivity.this.CJ().executeAppOpenAdCallback(TTAppOpenAdActivity.this.MQ, str);
                } catch (Throwable th) {
                    ABk.Qhi("TTAppOpenAdActivity", "open_ad", "executeAppOpenAdCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    protected IListenerManager CJ() {
        if (this.EBS == null) {
            this.EBS = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi().Qhi(7));
        }
        return this.EBS;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        zn.Qhi((Activity) this);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.7
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                if (i == 0) {
                    try {
                        if (TTAppOpenAdActivity.this.isFinishing()) {
                            return;
                        }
                        TTAppOpenAdActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity.7.1
                            @Override // java.lang.Runnable
                            public void run() {
                                zn.Qhi((Activity) TTAppOpenAdActivity.this);
                            }
                        }, 2500L);
                    } catch (Exception e2) {
                        ABk.Qhi("TTAppOpenAdActivity", e2.getMessage());
                    }
                }
            }
        });
    }

    private boolean cJ(Bundle bundle) {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Intent intent = getIntent();
            if (intent != null) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.qMt = com.bytedance.sdk.openadsdk.core.cJ.Qhi(new JSONObject(stringExtra));
                    } catch (Exception e2) {
                        ABk.Qhi("TTAppOpenAdActivity", "open_ad", "initData MultiGlobalInfo throws ", e2);
                    }
                }
                this.MQ = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_META_MD5);
            }
        } else {
            this.qMt = Dww.Qhi().cJ();
            this.bxS = Dww.Qhi().fl();
            Dww.Qhi().Tgh();
        }
        Qhi(getIntent());
        Qhi(bundle);
        tP tPVar = this.qMt;
        if (tPVar == null) {
            new Object[]{"open_ad", "mMaterialMeta is null , no data to display ,the TTOpenAdActivity finished !!"};
            finish();
            return false;
        }
        this.sDy = tPVar.lB();
        this.qMt.Qhi(this.Tgh);
        this.tP = this.qMt.Hy();
        com.bytedance.sdk.openadsdk.utils.cJ.Qhi(this.qMt);
        return true;
    }

    protected void Qhi(Intent intent) {
        if (intent != null) {
            this.CQU = intent.getIntExtra("ad_source", 0);
            this.Tgh = intent.getLongExtra("start_show_time", 0L);
        }
    }

    protected void Qhi(Bundle bundle) {
        if (bundle != null) {
            if (this.bxS == null) {
                this.bxS = Sf;
                Sf = null;
            }
            try {
                String string = bundle.getString("material_meta");
                this.MQ = bundle.getString(TTAdConstant.MULTI_PROCESS_META_MD5);
                this.CQU = bundle.getInt("ad_source", 0);
                this.Tgh = bundle.getLong("start_show_time", 0L);
                this.qMt = com.bytedance.sdk.openadsdk.core.cJ.Qhi(new JSONObject(string));
            } catch (Throwable th) {
                ABk.Qhi("TTAppOpenAdActivity", th.getMessage());
            }
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            tP tPVar = this.qMt;
            bundle.putString("material_meta", tPVar != null ? tPVar.mZ().toString() : null);
            bundle.putString(TTAdConstant.MULTI_PROCESS_META_MD5, this.MQ);
            bundle.putInt("ad_source", this.CQU);
            bundle.putLong("start_show_time", this.Tgh);
        } catch (Throwable th) {
            ABk.Qhi("TTAppOpenAdActivity", th.getMessage());
        }
        Sf = this.bxS;
        super.onSaveInstanceState(bundle);
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        com.bytedance.sdk.openadsdk.component.ac acVar;
        if (message.what == 100) {
            if (this.kYc && (acVar = this.NFd) != null && acVar.fl() != null) {
                this.NFd.fl().Qhi(1);
            }
            tP();
            finish();
        }
    }

    protected boolean fl() {
        try {
            return getIntent().getIntExtra("orientation_angle", 0) == 3;
        } catch (Exception e2) {
            ABk.Qhi("TTAppOpenAdActivity", e2.getMessage());
            return false;
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.ac.Qhi(this, this.qMt);
    }
}
