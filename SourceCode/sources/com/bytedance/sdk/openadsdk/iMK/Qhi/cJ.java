package com.bytedance.sdk.openadsdk.iMK.Qhi;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.fl;
import java.util.List;
import java.util.Map;
/* compiled from: GifRequestResult.java */
/* loaded from: classes2.dex */
public class cJ {
    private Bitmap CJ;
    int Qhi;
    private Map<String, String> Tgh;
    private Bitmap ac;
    private byte[] cJ;
    private List<Object> fl;

    public cJ(byte[] bArr, int i) {
        this.ac = null;
        this.CJ = null;
        this.fl = null;
        this.Tgh = null;
        this.cJ = bArr;
        this.Qhi = i;
    }

    public cJ(Bitmap bitmap, Bitmap bitmap2, int i) {
        this.cJ = null;
        this.fl = null;
        this.Tgh = null;
        this.CJ = bitmap2;
        this.ac = bitmap;
        this.Qhi = i;
    }

    public Bitmap Qhi() {
        return this.ac;
    }

    public Bitmap cJ() {
        return this.CJ;
    }

    public byte[] ac() {
        try {
            if (this.cJ == null) {
                this.cJ = fl.Qhi(this.ac);
            }
        } catch (OutOfMemoryError e2) {
            ABk.Qhi("GifRequestResult", e2.getMessage());
        }
        return this.cJ;
    }

    public boolean CJ() {
        if (this.ac != null) {
            return true;
        }
        byte[] bArr = this.cJ;
        return bArr != null && bArr.length > 0;
    }
}
