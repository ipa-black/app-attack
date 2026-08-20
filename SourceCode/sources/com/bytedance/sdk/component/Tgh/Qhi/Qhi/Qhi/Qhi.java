package com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi;

import android.content.Context;
import com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.cJ;
/* compiled from: DBAdapter.java */
/* loaded from: classes2.dex */
public class Qhi extends cJ {
    private static volatile Qhi Qhi;

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.cJ
    public /* bridge */ /* synthetic */ cJ.C0186cJ Qhi() {
        return super.Qhi();
    }

    public static Qhi Qhi(Context context) {
        if (Qhi == null) {
            synchronized (Qhi.class) {
                if (Qhi == null) {
                    Qhi = new Qhi(context);
                }
            }
        }
        return Qhi;
    }

    private Qhi(Context context) {
        super(context);
    }
}
