package com.bytedance.sdk.component.fl.ac.Qhi.cJ;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.fl.tP;
/* compiled from: LruCountBitmapCache.java */
/* loaded from: classes2.dex */
public class cJ implements tP {
    private int Qhi;
    private com.bytedance.sdk.component.fl.ac.Qhi.ac<String, Bitmap> ac;
    private int cJ;

    public cJ(int i, int i2) {
        this.cJ = i;
        this.Qhi = i2;
        this.ac = new com.bytedance.sdk.component.fl.ac.Qhi.ac<String, Bitmap>(i) { // from class: com.bytedance.sdk.component.fl.ac.Qhi.cJ.cJ.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.component.fl.ac.Qhi.ac
            /* renamed from: Qhi */
            public int cJ(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return cJ.Qhi(bitmap);
            }
        };
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public boolean Qhi(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return false;
        }
        this.ac.Qhi(str, bitmap);
        return true;
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public Bitmap Qhi(String str) {
        return this.ac.Qhi((com.bytedance.sdk.component.fl.ac.Qhi.ac<String, Bitmap>) str);
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public boolean cJ(String str) {
        return this.ac.Qhi((com.bytedance.sdk.component.fl.ac.Qhi.ac<String, Bitmap>) str) != null;
    }

    public static int Qhi(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }
}
