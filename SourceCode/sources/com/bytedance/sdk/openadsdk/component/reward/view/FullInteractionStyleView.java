package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.model.hpZ;
import com.bytedance.sdk.openadsdk.core.model.pA;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle001001Layout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle002003HLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle002003Layout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle003002HLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle003002Layout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle009016HLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle009016VLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle016009HLayout;
import com.bytedance.sdk.openadsdk.layout.TTInteractionStyle016009VLayout;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.List;
/* loaded from: classes2.dex */
public class FullInteractionStyleView extends BackupView {
    private boolean ABk;
    private View HzH;
    private com.bytedance.sdk.openadsdk.core.cJ.Tgh MQ;
    private float Qhi;
    private int hpZ;
    private int iMK;
    private View kYc;
    private int pA;
    private FrameLayout tP;

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void Qhi(View view, int i, pA pAVar) {
    }

    public View getInteractionStyleRootView() {
        return this;
    }

    public FullInteractionStyleView(Context context, String str) {
        super(context, str);
        this.hpZ = 1;
        this.cJ = context;
    }

    public void Qhi(tP tPVar, float f2, int i, int i2, int i3) {
        this.Qhi = f2;
        this.hpZ = i;
        this.ac = tPVar;
        this.Tgh = "fullscreen_interstitial_ad";
        this.iMK = i2;
        this.pA = i3;
        Qhi(this.hm);
        cJ();
    }

    private void cJ() {
        this.ROR = zn.cJ(this.cJ, this.iMK);
        this.Sf = zn.cJ(this.cJ, this.pA);
        int i = (int) (this.Qhi * 1000.0f);
        if (this.hpZ == 1) {
            if (i == 666) {
                fl();
            } else if (i == 1000) {
                ac();
            } else if (i == 1500) {
                Gm();
            } else if (i == 1777) {
                ABk();
            } else {
                Qhi(0.562f);
                zc();
            }
        } else if (i == 562) {
            hm();
        } else if (i == 666) {
            ROR();
        } else if (i == 1000) {
            ac();
        } else if (i == 1500) {
            Sf();
        } else {
            Qhi(1.777f);
            WAv();
        }
    }

    private void ac() {
        TTInteractionStyle001001Layout tTInteractionStyle001001Layout = new TTInteractionStyle001001Layout(this.cJ);
        this.HzH = tTInteractionStyle001001Layout;
        cJ(tTInteractionStyle001001Layout);
        CJ();
        Tgh();
    }

    private void cJ(View view) {
        if (view.getParent() == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            view.setLayoutParams(layoutParams);
            layoutParams.gravity = 17;
            addView(view);
        }
    }

    private void CJ() {
        this.tP = (FrameLayout) this.HzH.findViewById(iMK.bM);
        ImageView imageView = (ImageView) this.HzH.findViewById(iMK.gT);
        TTRoundRectImageView tTRoundRectImageView = (TTRoundRectImageView) this.HzH.findViewById(iMK.XH);
        TextView textView = (TextView) this.HzH.findViewById(iMK.IC);
        TextView textView2 = (TextView) this.HzH.findViewById(iMK.HUk);
        View findViewById = this.HzH.findViewById(520093739);
        if (!TextUtils.isEmpty(this.ac.ots())) {
            textView2.setText(this.ac.ots());
        }
        Qhi(this.tP, imageView);
        if (this.ac.dIT() != null && !TextUtils.isEmpty(this.ac.dIT().Qhi())) {
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.ac.dIT().Qhi(), this.ac.dIT().cJ(), this.ac.dIT().ac(), tTRoundRectImageView, this.ac);
        }
        textView.setText(getTitle());
        ac(this.tP);
        ac(imageView);
        ac(tTRoundRectImageView);
        ac(textView);
        ac(textView2);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullInteractionStyleView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.Qhi(FullInteractionStyleView.this.cJ, FullInteractionStyleView.this.ac, FullInteractionStyleView.this.Tgh);
                } catch (Throwable th) {
                    ABk.Qhi("FullInteractionStyleView", th.getMessage());
                }
            }
        });
    }

    private void fl() {
        TTInteractionStyle002003Layout tTInteractionStyle002003Layout = new TTInteractionStyle002003Layout(this.cJ);
        this.HzH = tTInteractionStyle002003Layout;
        cJ(tTInteractionStyle002003Layout);
        CJ();
        Tgh();
    }

    private void Tgh() {
        TextView textView = (TextView) this.HzH.findViewById(iMK.cJP);
        if (textView != null) {
            textView.setText(getDescription());
            ac(textView);
        }
    }

    private void ROR() {
        TTInteractionStyle002003HLayout tTInteractionStyle002003HLayout = new TTInteractionStyle002003HLayout(this.cJ);
        this.HzH = tTInteractionStyle002003HLayout;
        cJ(tTInteractionStyle002003HLayout);
        CJ();
        Tgh();
    }

    private void Sf() {
        TTInteractionStyle003002HLayout tTInteractionStyle003002HLayout = new TTInteractionStyle003002HLayout(this.cJ);
        this.HzH = tTInteractionStyle003002HLayout;
        cJ(tTInteractionStyle003002HLayout);
        CJ();
    }

    private void hm() {
        TTInteractionStyle009016HLayout tTInteractionStyle009016HLayout = new TTInteractionStyle009016HLayout(this.cJ);
        this.HzH = tTInteractionStyle009016HLayout;
        cJ(tTInteractionStyle009016HLayout);
        CJ();
        Tgh();
    }

    private void WAv() {
        TTInteractionStyle016009HLayout tTInteractionStyle016009HLayout = new TTInteractionStyle016009HLayout(this.cJ);
        this.HzH = tTInteractionStyle016009HLayout;
        cJ(tTInteractionStyle016009HLayout);
        CJ();
    }

    private void Gm() {
        View tTInteractionStyle003002Layout = new TTInteractionStyle003002Layout(this.cJ);
        this.HzH = tTInteractionStyle003002Layout;
        cJ(tTInteractionStyle003002Layout);
        this.tP = (FrameLayout) this.HzH.findViewById(iMK.bM);
        ImageView imageView = (ImageView) this.HzH.findViewById(iMK.pF);
        TextView textView = (TextView) this.HzH.findViewById(iMK.wp);
        View findViewById = this.HzH.findViewById(520093739);
        Qhi(this.tP, imageView);
        textView.setText(getDescription());
        ac(this.tP);
        ac(imageView);
        ac(textView);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullInteractionStyleView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.Qhi(FullInteractionStyleView.this.cJ, FullInteractionStyleView.this.ac, FullInteractionStyleView.this.Tgh);
                } catch (Throwable th) {
                    ABk.Qhi("FullInteractionStyleView", th.getMessage());
                }
            }
        });
    }

    private void Qhi(FrameLayout frameLayout, ImageView imageView) {
        if (this.ac == null) {
            return;
        }
        boolean fl = tP.fl(this.ac);
        if (this.ac.FQ() != null && fl) {
            zn.Qhi((View) imageView, 8);
            zn.Qhi((View) frameLayout, 0);
            return;
        }
        Qhi(imageView);
        zn.Qhi((View) imageView, 0);
        zn.Qhi((View) frameLayout, 8);
    }

    private void Qhi(ImageView imageView) {
        List<hpZ> cjC;
        hpZ hpz;
        if (this.ac == null || (cjC = this.ac.cjC()) == null || cjC.size() <= 0 || (hpz = cjC.get(0)) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ROR.fl.Qhi(hpz).ac(2).Qhi(com.bytedance.sdk.openadsdk.ROR.ac.Qhi(this.ac, hpz.Qhi(), imageView));
    }

    private void zc() {
        TTInteractionStyle009016VLayout tTInteractionStyle009016VLayout = new TTInteractionStyle009016VLayout(this.cJ);
        this.HzH = tTInteractionStyle009016VLayout;
        cJ(tTInteractionStyle009016VLayout);
        CJ();
    }

    private void ABk() {
        TTInteractionStyle016009VLayout tTInteractionStyle016009VLayout = new TTInteractionStyle016009VLayout(this.cJ);
        this.HzH = tTInteractionStyle016009VLayout;
        cJ(tTInteractionStyle016009VLayout);
        CJ();
        Tgh();
    }

    private void ac(View view) {
        if (view == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.cJ.cJ cJVar = this.MQ;
        if (cJVar == null) {
            cJVar = new com.bytedance.sdk.openadsdk.core.cJ.Qhi(this.cJ, this.ac, this.Tgh, js.Qhi(this.Tgh));
            cJVar.Qhi(Qhi(this.ac, this.cJ));
        }
        view.setOnTouchListener(cJVar);
        view.setOnClickListener(cJVar);
    }

    private com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl Qhi(tP tPVar, Context context) {
        if (tPVar != null && tPVar.ip() == 4) {
            return new com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.ac(context, tPVar, this.Tgh);
        }
        return null;
    }

    public void setIsMute(boolean z) {
        this.ABk = z;
        View view = this.kYc;
        if (view != null && (view instanceof NativeVideoTsView)) {
            ((NativeVideoTsView) view).setIsQuiet(z);
        }
    }

    public FrameLayout getVideoContainer() {
        return this.tP;
    }

    public void setDownloadListener(com.bytedance.sdk.openadsdk.core.cJ.Tgh tgh) {
        this.MQ = tgh;
    }

    private float getHeightDp() {
        return zn.ac(this.cJ, zn.hm(this.cJ));
    }

    private float getWidthDp() {
        return zn.ac(this.cJ, zn.WAv(this.cJ));
    }

    private void Qhi(float f2) {
        float min;
        float max;
        int max2;
        int i;
        int i2;
        float heightDp = getHeightDp();
        float widthDp = getWidthDp();
        if (this.hpZ == 2) {
            min = Math.max(heightDp, widthDp);
            max = Math.min(heightDp, widthDp);
        } else {
            min = Math.min(heightDp, widthDp);
            max = Math.max(heightDp, widthDp);
        }
        if (this.hpZ != 2 && zn.ac((Activity) this.cJ)) {
            max -= zn.ac(this.cJ, zn.Qhi());
        }
        int i3 = 20;
        if (this.hpZ != 2) {
            if (f2 != 0.0f && f2 != 100.0f) {
                i2 = (int) Math.max((max - (((min - 20.0f) - 20.0f) / f2)) / 2.0f, 0.0f);
                max2 = 20;
                i = 20;
                i3 = i2;
            }
            i3 = 0;
            i2 = 0;
            max2 = 0;
            i = 0;
        } else {
            if (f2 != 0.0f && f2 != 100.0f) {
                max2 = (int) Math.max((min - (((max - 20.0f) - 20.0f) * f2)) / 2.0f, 0.0f);
                i = max2;
                i2 = 20;
            }
            i3 = 0;
            i2 = 0;
            max2 = 0;
            i = 0;
        }
        ((Activity) this.cJ).getWindow().getDecorView().setPadding(zn.cJ(this.cJ, max2), zn.cJ(this.cJ, i3), zn.cJ(this.cJ, i), zn.cJ(this.cJ, i2));
    }
}
