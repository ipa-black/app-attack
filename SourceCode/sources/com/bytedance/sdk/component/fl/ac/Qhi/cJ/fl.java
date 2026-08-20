package com.bytedance.sdk.component.fl.ac.Qhi.cJ;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.fl.tP;
/* compiled from: MemoryCacheWrapper.java */
/* loaded from: classes2.dex */
public class fl implements tP {
    private final tP Qhi;
    private final com.bytedance.sdk.component.fl.ac.Qhi.cJ cJ;

    public fl(tP tPVar) {
        this(tPVar, null);
    }

    public fl(tP tPVar, com.bytedance.sdk.component.fl.ac.Qhi.cJ cJVar) {
        this.Qhi = tPVar;
        this.cJ = cJVar;
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public boolean Qhi(String str, Bitmap bitmap) {
        boolean Qhi = this.Qhi.Qhi(str, bitmap);
        if (this.cJ != null) {
            Boolean.valueOf(Qhi);
        }
        return Qhi;
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public Bitmap Qhi(String str) {
        return this.Qhi.Qhi(str);
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public boolean cJ(String str) {
        return this.Qhi.cJ(str);
    }
}
