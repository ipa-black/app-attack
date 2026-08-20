package com.bytedance.sdk.openadsdk.dislike;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.CQU;
import com.bytedance.sdk.openadsdk.dislike.Tgh;
import com.bytedance.sdk.openadsdk.dislike.ac;
import java.util.List;
/* compiled from: TTAdDislikeImpl.java */
/* loaded from: classes2.dex */
public class cJ implements CQU {
    private boolean CJ;
    public Tgh Qhi;
    private ac ac;
    private final Context cJ;
    private CQU.Qhi fl;

    public cJ(Context context, String str, List<FilterWord> list, String str2, String str3) {
        if (!(context instanceof Activity)) {
            ABk.cJ("Dislike Initialization must use activity, please pass in TTAdManager.createAdNative(activity)");
        }
        this.cJ = context;
        Qhi(str, list, str2, str3);
    }

    private void Qhi(String str, List<FilterWord> list, String str2, String str3) {
        this.ac = new ac(this.cJ, str, list, str3);
        Tgh tgh = new Tgh(this.cJ);
        this.Qhi = tgh;
        tgh.Qhi(str, str2);
        this.Qhi.Qhi(str3);
        this.Qhi.Qhi(new Tgh.Qhi() { // from class: com.bytedance.sdk.openadsdk.dislike.cJ.1
            @Override // com.bytedance.sdk.openadsdk.dislike.Tgh.Qhi
            public void Qhi() {
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.Tgh.Qhi
            public void cJ() {
                cJ.this.Qhi();
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.Tgh.Qhi
            public void ac() {
                cJ.this.Qhi();
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.Tgh.Qhi
            public void Qhi(int i, FilterWord filterWord) {
                if (cJ.this.fl != null) {
                    cJ.this.fl.Qhi(i, filterWord.getName());
                }
                if (cJ.this.fl != null) {
                    cJ.this.fl.Qhi();
                }
            }
        });
        this.ac.Qhi(new ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.dislike.cJ.2
            @Override // com.bytedance.sdk.openadsdk.dislike.ac.Qhi
            public void Qhi() {
                cJ.this.Qhi(true);
                if (cJ.this.ac != null && cJ.this.ac.isShowing()) {
                    cJ.this.ac.dismiss();
                }
                cJ.this.ac();
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.ac.Qhi
            public void Qhi(int i, FilterWord filterWord) {
                try {
                    if (!filterWord.hasSecondOptions() && cJ.this.fl != null) {
                        cJ.this.fl.Qhi(i, filterWord.getName());
                    }
                    ABk.Qhi("TTAdDislikeImpl", "onDislikeSelected: " + i + ", " + filterWord.getName());
                } catch (Throwable th) {
                    ABk.Qhi("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.ac.Qhi
            public void cJ() {
                ABk.Qhi("TTAdDislikeImpl", "onDislikeDismiss: ");
                try {
                    if (cJ.this.fl != null) {
                        cJ.this.fl.Qhi();
                    }
                } catch (Throwable th) {
                    ABk.Qhi("TTAdDislikeImpl", "dislike callback cancel error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.ac.Qhi
            public void ac() {
                ABk.Qhi("TTAdDislikeImpl", "onDislikeOptionBack: ");
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.CQU
    public void Qhi() {
        Context context = this.cJ;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing() || this.ac.isShowing()) {
            return;
        }
        this.ac.show();
    }

    public void Qhi(String str, List<FilterWord> list) {
        this.ac.Qhi(str, list);
    }

    @Override // com.bytedance.sdk.openadsdk.core.CQU
    public void Qhi(CQU.Qhi qhi) {
        this.fl = qhi;
    }

    public void Qhi(String str) {
        ac acVar = this.ac;
        if (acVar != null) {
            acVar.Qhi(str);
        }
    }

    public boolean cJ() {
        return this.CJ;
    }

    public void Qhi(boolean z) {
        this.CJ = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac() {
        Context context = this.cJ;
        if ((context instanceof Activity) && (!((Activity) context).isFinishing()) && !this.Qhi.isShowing()) {
            this.Qhi.show();
        }
    }
}
