package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.bytedance.adsdk.lottie.LottieAnimationView;
import com.bytedance.adsdk.lottie.WAv;
import com.bytedance.adsdk.lottie.fl;
import com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi;
import com.bytedance.sdk.component.fl.HzH;
import com.bytedance.sdk.component.fl.hm;
import com.bytedance.sdk.component.fl.zc;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class DynamicLottieView extends LottieAnimationView {
    private Map<String, Bitmap> Qhi;
    private String cJ;

    public void setAnimationsLoop(boolean z) {
    }

    public void setData(Map<String, String> map) {
    }

    public void setLottieAdDescMaxLength(int i) {
    }

    public void setLottieAdTitleMaxLength(int i) {
    }

    public void setLottieAppNameMaxLength(int i) {
    }

    public DynamicLottieView(Context context) {
        super(context);
        this.Qhi = new HashMap();
    }

    public void setImageLottieTosPath(String str) {
        this.cJ = str;
    }

    public void Tgh() {
        if (TextUtils.isEmpty(this.cJ)) {
            return;
        }
        setProgress(0.0f);
        cJ(true);
        setAnimationFromUrl(this.cJ);
        setImageAssetDelegate(new fl() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.1
            @Override // com.bytedance.adsdk.lottie.fl
            public Bitmap Qhi(final WAv wAv) {
                final String ac = wAv.ac();
                String fl = wAv.fl();
                String CJ = wAv.CJ();
                if (TextUtils.equals(ac, "image_0") && TextUtils.equals(CJ, "Lark20201123-180048_2.png")) {
                    CJ = "hand.png";
                }
                Bitmap bitmap = (Bitmap) DynamicLottieView.this.Qhi.get(ac);
                if (bitmap != null) {
                    return bitmap;
                }
                new Object[]{"dirName is : ", fl, "fileName is : ", CJ};
                if (TextUtils.isEmpty(fl) || !TextUtils.isEmpty(CJ)) {
                    if (!TextUtils.isEmpty(CJ) && TextUtils.isEmpty(fl)) {
                        fl = CJ;
                    } else if (!TextUtils.isEmpty(CJ) && !TextUtils.isEmpty(fl)) {
                        fl = fl + CJ;
                    } else {
                        fl = "";
                    }
                }
                if (TextUtils.isEmpty(fl)) {
                    return null;
                }
                Qhi.Qhi().fl().Qhi(fl).Qhi(new hm() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.1.2
                    @Override // com.bytedance.sdk.component.fl.hm
                    public Bitmap Qhi(Bitmap bitmap2) {
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap2, wAv.Qhi(), wAv.cJ(), false);
                        DynamicLottieView.this.Qhi.put(ac, createScaledBitmap);
                        return createScaledBitmap;
                    }
                }).Qhi(new HzH<Bitmap>() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicLottieView.1.1
                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(int i, String str, Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.fl.HzH
                    public void Qhi(zc<Bitmap> zcVar) {
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(zcVar.cJ(), wAv.Qhi(), wAv.cJ(), false);
                        DynamicLottieView.this.Qhi.put(ac, createScaledBitmap);
                        DynamicLottieView.this.Qhi(wAv.ac(), createScaledBitmap);
                    }
                });
                return (Bitmap) DynamicLottieView.this.Qhi.get(ac);
            }
        });
        Qhi();
    }
}
