package com.bytedance.sdk.openadsdk.component;

import android.app.Activity;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.component.view.OpenScreenAdBackupView;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenAdExpressView;
import com.bytedance.sdk.openadsdk.core.cJ.cJ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import org.json.JSONObject;
/* compiled from: AppOpenAdExpressManager.java */
/* loaded from: classes2.dex */
public class cJ extends ac {
    private boolean Gm;
    private PAGAppOpenAdExpressView WAv;

    public cJ(Activity activity, tP tPVar, FrameLayout frameLayout, Qhi qhi, int i, boolean z, com.bytedance.sdk.openadsdk.component.Sf.Qhi qhi2) {
        super(activity, tPVar, frameLayout, qhi, i, z, qhi2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.ac
    public void Qhi(ViewGroup viewGroup) {
        tP.Qhi es;
        Pair<Float, Float> Qhi = com.bytedance.sdk.openadsdk.core.nativeexpress.Qhi.Qhi.Qhi(this.Qhi.getWindow(), this.ROR);
        AdSlot build = new AdSlot.Builder().setCodeId(String.valueOf(this.cJ.Hy())).setExpressViewAcceptedSize(((Float) Qhi.first).floatValue(), ((Float) Qhi.second).floatValue()).build();
        if (ABk.CJ() && (es = this.cJ.es()) != null) {
            new Object[]{"open_ad", "tryDynamicNative: id is " + es.fl()};
        }
        PAGAppOpenAdExpressView pAGAppOpenAdExpressView = new PAGAppOpenAdExpressView(this.Qhi, this.cJ, build, "open_ad");
        this.WAv = pAGAppOpenAdExpressView;
        pAGAppOpenAdExpressView.setTopListener(this.fl);
        this.WAv.setExpressVideoListenerProxy(this.fl);
        this.WAv.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.component.cJ.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
            public void onAdClicked() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderFail(View view, String str, int i) {
                cJ.this.fl.CJ();
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderSuccess(View view, float f2, float f3) {
                if (cJ.this.WAv.ABk()) {
                    cJ.this.Gm = true;
                    cJ cJVar = cJ.this;
                    cJ.super.Qhi((ViewGroup) cJVar.CJ);
                    cJ.super.Qhi();
                    cJ.super.cJ();
                } else if (cJ.this.cJ.czB()) {
                    cJ.this.fl.ac();
                } else if (cJ.this.ac) {
                    cJ cJVar2 = cJ.this;
                    if (cJVar2.Qhi(cJVar2.WAv.getVideoFrameLayout())) {
                        cJ.this.fl.ac();
                    } else {
                        cJ.this.fl.CJ();
                    }
                } else {
                    cJ.this.fl.ac();
                }
            }
        });
        this.cJ.Sf(1);
        this.CJ.addView(this.WAv, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.component.ac
    public void Qhi() {
        com.bytedance.sdk.openadsdk.core.nativeexpress.Sf Qhi = com.bytedance.sdk.openadsdk.component.Qhi.cJ.Qhi(this.cJ, this.Qhi, this.hm, this.WAv);
        Qhi.Qhi(new cJ.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.cJ.2
            @Override // com.bytedance.sdk.openadsdk.core.cJ.cJ.Qhi
            public void Qhi(View view, int i) {
                cJ.this.fl.fl();
            }
        });
        this.WAv.setClickListener(Qhi);
        com.bytedance.sdk.openadsdk.core.nativeexpress.ROR cJ = com.bytedance.sdk.openadsdk.component.Qhi.cJ.cJ(this.cJ, this.Qhi, this.hm, this.WAv);
        this.WAv.setClickCreativeListener(cJ);
        cJ.Qhi(new cJ.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.cJ.3
            @Override // com.bytedance.sdk.openadsdk.core.cJ.cJ.Qhi
            public void Qhi(View view, int i) {
                cJ.this.fl.fl();
            }
        });
        this.WAv.setBackupListener(new com.bytedance.sdk.component.adexpress.cJ.ac() { // from class: com.bytedance.sdk.openadsdk.component.cJ.4
            @Override // com.bytedance.sdk.component.adexpress.cJ.ac
            public boolean Qhi(ViewGroup viewGroup, int i) {
                new Object[]{"open_ad", "isUseBackup() called with: view = [" + viewGroup + "], errCode = [" + i + "]"};
                try {
                    ((NativeExpressView) viewGroup).zc();
                    new OpenScreenAdBackupView(cJ.this.Qhi).Qhi((NativeExpressView) cJ.this.WAv);
                    return true;
                } catch (Exception e2) {
                    Log.e("AppOpenAdExpressManager", "", e2);
                    return false;
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.component.ac
    public void cJ() {
        this.WAv.hm();
    }

    @Override // com.bytedance.sdk.openadsdk.component.ac
    public void Qhi(int i, int i2, boolean z) {
        if (this.Gm) {
            super.Qhi(i, i2, z);
        } else {
            this.WAv.Qhi(String.valueOf(i), i2, 0, z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.ac
    public void ac() {
        super.ac();
        PAGAppOpenAdExpressView pAGAppOpenAdExpressView = this.WAv;
        if (pAGAppOpenAdExpressView != null) {
            pAGAppOpenAdExpressView.Gm();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.ac
    public int CJ() {
        return this.WAv.getDynamicShowType();
    }

    @Override // com.bytedance.sdk.openadsdk.component.ac
    public JSONObject Qhi(JSONObject jSONObject) {
        return this.WAv.Qhi(jSONObject, this.cJ);
    }
}
