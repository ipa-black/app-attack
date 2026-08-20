package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.CJ.Eh;
import com.bytedance.sdk.component.adexpress.CJ.bxS;
import com.bytedance.sdk.component.adexpress.CJ.kYc;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.Gm;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.AnimationImageView;
import com.bytedance.sdk.component.adexpress.widget.DynamicLottieView;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.component.adexpress.widget.TTRoundRectImageView;
import com.bytedance.sdk.component.fl.HzH;
import com.bytedance.sdk.component.fl.hpZ;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.component.utils.MQ;
import io.bidmachine.utils.IabUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class DynamicImageView extends DynamicBaseWidgetImp {
    private String Qhi;

    public DynamicImageView(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        if (!TextUtils.isEmpty(this.zc.gga()) && hmVar.tP()) {
            DynamicLottieView dynamicLottieView = new DynamicLottieView(context);
            dynamicLottieView.setAnimationsLoop(this.zc.VnT());
            dynamicLottieView.setImageLottieTosPath(this.zc.gga());
            dynamicLottieView.setLottieAppNameMaxLength(this.zc.PER());
            dynamicLottieView.setLottieAdTitleMaxLength(this.zc.Ura());
            dynamicLottieView.setLottieAdDescMaxLength(this.zc.Ri());
            dynamicLottieView.setData(hmVar.MQ());
            this.pA = dynamicLottieView;
        } else if (this.zc.pA() > 0.0f) {
            this.pA = new TTRoundRectImageView(context);
            ((TTRoundRectImageView) this.pA).setXRound((int) CQU.Qhi(context, this.zc.pA()));
            ((TTRoundRectImageView) this.pA).setYRound((int) CQU.Qhi(context, this.zc.pA()));
        } else if (!Sf() && "arrowButton".equals(hmVar.WAv().cJ())) {
            AnimationImageView animationImageView = new AnimationImageView(context);
            animationImageView.setBrickNativeValue(this.zc);
            this.pA = animationImageView;
        } else if (Eh.cJ(this.zc.Gm())) {
            this.pA = new GifView(context);
        } else {
            this.pA = new ImageView(context);
        }
        this.Qhi = getImageKey();
        this.pA.setTag(Integer.valueOf(getClickArea()));
        if ("arrowButton".equals(hmVar.WAv().cJ())) {
            if (this.zc.cJ() > 0 || this.zc.Qhi() > 0) {
                this.ROR = Math.min(this.ROR, this.Sf);
                this.Sf = Math.min(this.ROR, this.Sf);
                this.hm = (int) (this.hm + CQU.Qhi(context, this.zc.cJ() + (this.zc.Qhi() / 2) + 0.5f));
            } else {
                this.ROR = Math.max(this.ROR, this.Sf);
                this.Sf = Math.max(this.ROR, this.Sf);
            }
            this.zc.Qhi(this.ROR / 2);
        }
        addView(this.pA, new FrameLayout.LayoutParams(this.ROR, this.Sf));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = ((ImageView) this.pA).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !(drawable instanceof AnimatedImageDrawable)) {
            return;
        }
        ((AnimatedImageDrawable) drawable).start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = ((ImageView) this.pA).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !(drawable instanceof AnimatedImageDrawable)) {
            return;
        }
        ((AnimatedImageDrawable) drawable).stop();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        super.hm();
        if (!TextUtils.isEmpty(this.zc.gga())) {
            ((ImageView) this.pA).setScaleType(ImageView.ScaleType.CENTER_CROP);
            return true;
        } else if ("arrowButton".equals(this.ABk.WAv().cJ())) {
            ((ImageView) this.pA).setImageResource(MQ.CJ(this.Gm, "tt_white_righterbackicon_titlebar"));
            if (((ImageView) this.pA).getDrawable() != null) {
                ((ImageView) this.pA).getDrawable().setAutoMirrored(true);
            }
            this.pA.setPadding(0, 0, 0, 0);
            ((ImageView) this.pA).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        } else {
            this.pA.setBackgroundColor(this.zc.aP());
            String ac = this.ABk.WAv().ac();
            if ("user".equals(ac)) {
                ((ImageView) this.pA).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                ((ImageView) this.pA).setColorFilter(this.zc.ROR());
                ((ImageView) this.pA).setImageDrawable(MQ.ac(getContext(), "tt_user"));
                ((ImageView) this.pA).setPadding(this.ROR / 10, this.Sf / 5, this.ROR / 10, 0);
            } else if (ac != null && ac.startsWith("@")) {
                try {
                    ((ImageView) this.pA).setImageResource(Integer.parseInt(ac.substring(1)));
                } catch (Exception unused) {
                }
            }
            hpZ fl = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().fl();
            String Gm = this.zc.Gm();
            if (!TextUtils.isEmpty(Gm) && !Gm.startsWith("http:") && !Gm.startsWith("https:")) {
                Gm = Gm.cJ(Gm, (this.iMK == null || this.iMK.getRenderRequest() == null) ? null : this.iMK.getRenderRequest().Dww());
            }
            com.bytedance.sdk.component.fl.Gm Qhi = fl.Qhi(Gm).Qhi(this.Qhi);
            String iMK = this.iMK.getRenderRequest().iMK();
            if (!TextUtils.isEmpty(iMK)) {
                Qhi.cJ(iMK);
            }
            if (Qhi()) {
                ((ImageView) this.pA).setScaleType(ImageView.ScaleType.FIT_CENTER);
                Qhi.Qhi(Bitmap.Config.ARGB_4444).ac(2).Qhi(new com.bytedance.sdk.component.fl.hm() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView.2
                    @Override // com.bytedance.sdk.component.fl.hm
                    public Bitmap Qhi(Bitmap bitmap) {
                        return kYc.Qhi(DynamicImageView.this.Gm, bitmap, 25);
                    }
                }).Qhi(new HzH<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView.1
                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(int i, String str, Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(zc<Bitmap> zcVar) {
                        Bitmap cJ = zcVar.cJ();
                        if (cJ == null || zcVar.ac() == null) {
                            return;
                        }
                        DynamicImageView.this.pA.setBackground(new BitmapDrawable(DynamicImageView.this.getResources(), cJ));
                    }
                });
            } else {
                if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
                    Qhi.Qhi((ImageView) this.pA);
                }
                ((ImageView) this.pA).setScaleType(ImageView.ScaleType.FIT_XY);
            }
            if ((this.pA instanceof ImageView) && "cover".equals(getImageObjectFit())) {
                ((ImageView) this.pA).setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            if (!com.bytedance.sdk.component.adexpress.fl.cJ()) {
                Qhi(Qhi);
            }
            return true;
        }
    }

    private boolean Qhi() {
        String zc = this.zc.zc();
        if (this.zc.MQ()) {
            return true;
        }
        if (TextUtils.isEmpty(zc)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(zc);
            return Math.abs((((float) this.ROR) / (((float) this.Sf) * 1.0f)) - (((float) jSONObject.optInt(IabUtils.KEY_WIDTH)) / (((float) jSONObject.optInt(IabUtils.KEY_HEIGHT)) * 1.0f))) > 0.01f;
        } catch (JSONException unused) {
            return false;
        }
    }

    private String getImageKey() {
        Map<String, String> Gm = this.iMK.getRenderRequest().Gm();
        if (Gm == null || Gm.size() <= 0) {
            return null;
        }
        return Gm.get(this.zc.Gm());
    }

    private void Qhi(com.bytedance.sdk.component.fl.Gm gm) {
        gm.ac(3).Qhi(new HzH() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView.3
            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(int i, String str, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(zc zcVar) {
                Object cJ = zcVar.cJ();
                if ((cJ instanceof byte[]) && (DynamicImageView.this.pA instanceof ImageView)) {
                    bxS.Qhi((ImageView) DynamicImageView.this.pA, (byte[]) cJ, DynamicImageView.this.ROR, DynamicImageView.this.Sf);
                }
            }
        });
    }
}
