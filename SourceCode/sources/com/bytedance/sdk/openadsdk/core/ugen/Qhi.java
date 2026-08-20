package com.bytedance.sdk.openadsdk.core.ugen;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.Qhi;
import com.bytedance.sdk.component.adexpress.CJ.kYc;
import com.bytedance.sdk.component.fl.HzH;
import com.bytedance.sdk.component.fl.hm;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.openadsdk.ROR.fl;
import com.bytedance.sdk.openadsdk.core.widget.GifView;
import com.bytedance.sdk.openadsdk.utils.pA;
/* compiled from: ImageLoaderProvider.java */
/* loaded from: classes2.dex */
public class Qhi implements com.bytedance.adsdk.ugeno.Qhi {
    @Override // com.bytedance.adsdk.ugeno.Qhi
    public void Qhi(Context context, String str, ImageView imageView) {
        if (imageView instanceof GifView) {
            final GifView gifView = (GifView) imageView;
            gifView.setAdjustViewBounds(true);
            gifView.setBackgroundColor(Color.parseColor("#00000000"));
            fl.Qhi(str).ac(3).Qhi(Bitmap.Config.RGB_565).Qhi(new HzH() { // from class: com.bytedance.sdk.openadsdk.core.ugen.Qhi.1
                @Override // com.bytedance.sdk.component.fl.HzH
                public void Qhi(int i, String str2, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.fl.HzH
                public void Qhi(zc zcVar) {
                    try {
                        Object cJ = zcVar.cJ();
                        if (cJ instanceof byte[]) {
                            if (zcVar.fl()) {
                                gifView.Qhi((byte[]) cJ, false);
                                gifView.setRepeatConfig(true);
                                return;
                            }
                            gifView.setImageDrawable(pA.Qhi((byte[]) cJ, 0));
                        }
                    } catch (Throwable th) {
                        Qhi(1002, "", th);
                    }
                }
            });
            return;
        }
        fl.Qhi(str).Qhi(imageView);
    }

    @Override // com.bytedance.adsdk.ugeno.Qhi
    public void Qhi(final Context context, String str, final float f2, final Qhi.InterfaceC0176Qhi interfaceC0176Qhi) {
        fl.Qhi(str).Qhi(new hm() { // from class: com.bytedance.sdk.openadsdk.core.ugen.Qhi.3
            @Override // com.bytedance.sdk.component.fl.hm
            public Bitmap Qhi(Bitmap bitmap) {
                float f3 = f2;
                if (f3 > 0.0f) {
                    return kYc.Qhi(context, bitmap, (int) f3);
                }
                return null;
            }
        }).Qhi(new HzH() { // from class: com.bytedance.sdk.openadsdk.core.ugen.Qhi.2
            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(int i, String str2, Throwable th) {
            }

            @Override // com.bytedance.sdk.component.fl.HzH
            public void Qhi(zc zcVar) {
                Object cJ = zcVar.cJ();
                if (cJ instanceof Bitmap) {
                    interfaceC0176Qhi.Qhi((Bitmap) cJ);
                }
            }
        });
    }
}
