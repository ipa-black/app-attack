package com.bytedance.adsdk.ugeno.component.dislike;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.cJ.hm;
import com.bytedance.adsdk.ugeno.component.cJ;
/* compiled from: UGDislikeWidget.java */
/* loaded from: classes2.dex */
public class Qhi extends cJ<DislikeView> {
    private int Qe;
    private int Qhi;
    private int dIT;

    public Qhi(Context context) {
        super(context);
        this.Qhi = 0;
        this.Qe = 0;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    /* renamed from: Qhi */
    public DislikeView ac() {
        DislikeView dislikeView = new DislikeView(this.cJ);
        dislikeView.Qhi(this);
        return dislikeView;
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void cJ() {
        super.cJ();
        ((DislikeView) this.fl).setRadius(this.sDy);
        ((DislikeView) this.fl).setStrokeWidth((int) this.zn);
        ((DislikeView) this.fl).setDislikeColor(this.Qhi);
        ((DislikeView) this.fl).setStrokeColor(this.es);
        ((DislikeView) this.fl).setDislikeWidth(this.dIT);
        ((DislikeView) this.fl).setBgColor(this.Qe);
    }

    @Override // com.bytedance.adsdk.ugeno.component.cJ
    public void Qhi(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.Qhi(str, str2);
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -991792834:
                if (str.equals("dislikeColor")) {
                    c2 = 0;
                    break;
                }
                break;
            case -973508703:
                if (str.equals("dislikeWidth")) {
                    c2 = 1;
                    break;
                }
                break;
            case 95494139:
                if (str.equals("dislikeFillColor")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                this.Qhi = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            case 1:
                this.dIT = (int) hm.Qhi(this.cJ, Integer.parseInt(str2));
                return;
            case 2:
                this.Qe = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(str2);
                return;
            default:
                return;
        }
    }
}
