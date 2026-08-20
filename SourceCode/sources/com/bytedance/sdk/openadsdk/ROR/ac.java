package com.bytedance.sdk.openadsdk.ROR;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.component.fl.HzH;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.lang.ref.WeakReference;
/* compiled from: ImageLoaderToViewWrapper.java */
/* loaded from: classes2.dex */
public class ac implements HzH<Bitmap> {
    private final WeakReference<ImageView> Qhi;
    private final String cJ = "ImageLoaderToViewWrapper";

    @Override // com.bytedance.sdk.component.fl.HzH
    public void Qhi(int i, String str, Throwable th) {
    }

    public static HzH Qhi(tP tPVar, String str, ImageView imageView) {
        return new cJ(tPVar, str, new ac(imageView));
    }

    private ac(ImageView imageView) {
        this.Qhi = new WeakReference<>(imageView);
    }

    @Override // com.bytedance.sdk.component.fl.HzH
    public void Qhi(zc<Bitmap> zcVar) {
        final ImageView imageView = this.Qhi.get();
        if (imageView == null || !(zcVar.cJ() instanceof Bitmap)) {
            return;
        }
        final Bitmap cJ = zcVar.cJ();
        if (lG.fl()) {
            imageView.setImageBitmap(cJ);
        } else {
            iMK.ac().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ROR.ac.1
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageBitmap(cJ);
                }
            });
        }
    }
}
