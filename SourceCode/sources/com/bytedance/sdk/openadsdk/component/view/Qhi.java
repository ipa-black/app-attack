package com.bytedance.sdk.openadsdk.component.view;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: TTAppOpenAdUserInfoLayoutHelper.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static boolean Qhi;
    private static Drawable cJ;
    private TextView CJ;
    private TTRoundRectImageView ac;

    public void Qhi(PAGAppOpenBaseLayout pAGAppOpenBaseLayout, tP tPVar, float f2, float f3, boolean z) {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        if (pAGAppOpenBaseLayout != null) {
            this.ac = pAGAppOpenBaseLayout.getHostAppIcon();
            this.CJ = pAGAppOpenBaseLayout.getHostAppName();
            View userInfo = pAGAppOpenBaseLayout.getUserInfo();
            if (pAGAppOpenBaseLayout instanceof PAGAppOpenDefaultNativeLayout) {
                TTRoundRectImageView tTRoundRectImageView = this.ac;
                if (tTRoundRectImageView != null && (layoutParams2 = tTRoundRectImageView.getLayoutParams()) != null) {
                    if (tPVar.SL() == 1) {
                        int cJ2 = zn.cJ(this.ac.getContext(), 40.0f);
                        layoutParams2.width = cJ2;
                        layoutParams2.height = cJ2;
                    } else {
                        int cJ3 = zn.cJ(this.ac.getContext(), 30.0f);
                        layoutParams2.width = cJ3;
                        layoutParams2.height = cJ3;
                    }
                    this.ac.setLayoutParams(layoutParams2);
                }
                if (this.CJ != null) {
                    if (tPVar.SL() == 1) {
                        this.CJ.setTextSize(30.0f);
                    } else {
                        this.CJ.setTextSize(24.0f);
                    }
                }
                if (userInfo != null && (layoutParams = userInfo.getLayoutParams()) != null) {
                    if (tPVar.SL() == 1) {
                        layoutParams.height = zn.cJ(userInfo.getContext(), 107.0f);
                    } else {
                        layoutParams.height = zn.cJ(userInfo.getContext(), 60.0f);
                    }
                    userInfo.setLayoutParams(layoutParams);
                }
            }
            if (userInfo != null) {
                userInfo.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.view.Qhi.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                    }
                });
            }
        }
    }

    public void Qhi() {
        String Tgh = hm.cJ().Tgh();
        if (TextUtils.isEmpty(Tgh)) {
            this.CJ.setVisibility(8);
        } else {
            this.CJ.setText(Tgh);
        }
        cJ();
        try {
            Drawable drawable = cJ;
            if (drawable == null) {
                this.ac.setVisibility(8);
                return;
            }
            this.ac.setImageDrawable(drawable);
            if (this.CJ.getVisibility() == 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.ac.getLayoutParams();
                marginLayoutParams.setMargins(0, 0, 0, 0);
                this.ac.setLayoutParams(marginLayoutParams);
            }
        } catch (Throwable unused) {
            this.ac.setVisibility(8);
        }
    }

    public void cJ() {
        if (Qhi) {
            return;
        }
        try {
            int ROR = hm.cJ().ROR();
            if (ROR != 0) {
                cJ = HzH.Qhi().getResources().getDrawable(ROR);
            }
            Qhi = true;
        } catch (Throwable unused) {
            Qhi = true;
        }
    }

    public static Drawable ac() {
        return cJ;
    }
}
