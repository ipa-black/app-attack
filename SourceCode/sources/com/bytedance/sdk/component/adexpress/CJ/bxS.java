package com.bytedance.sdk.component.adexpress.CJ;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.fl.ac.cJ.Qhi;
import com.bytedance.sdk.component.utils.hm;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* compiled from: ImageLoadUtils.java */
/* loaded from: classes2.dex */
public class bxS {
    private static void cJ(ImageView imageView, byte[] bArr, int i, int i2) {
        CJ(imageView, bArr, i, i2);
    }

    private static void ac(ImageView imageView, byte[] bArr, int i, int i2) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                imageView.setImageDrawable(ImageDecoder.decodeDrawable(ImageDecoder.createSource(wrap)));
                return;
            } catch (IOException unused) {
                return;
            }
        }
        CJ(imageView, bArr, i, i2);
    }

    private static void CJ(ImageView imageView, byte[] bArr, int i, int i2) {
        Bitmap Qhi = new Qhi(i, i2, imageView.getScaleType(), Bitmap.Config.ARGB_4444, i, i2).Qhi(bArr);
        if (Qhi != null) {
            imageView.setImageBitmap(Qhi);
        }
    }

    public static void Qhi(ImageView imageView, byte[] bArr, int i, int i2) {
        if (TextUtils.equals("png", hm.Qhi(Arrays.copyOfRange(bArr, 0, hm.Qhi())))) {
            cJ(imageView, bArr, i, i2);
        } else {
            ac(imageView, bArr, i, i2);
        }
    }
}
