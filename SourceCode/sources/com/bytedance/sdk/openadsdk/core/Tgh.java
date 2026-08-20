package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.ROR;
/* compiled from: DBAdapter.java */
/* loaded from: classes2.dex */
public class Tgh extends ROR {
    private static volatile Tgh Qhi;

    @Override // com.bytedance.sdk.openadsdk.core.ROR
    public /* bridge */ /* synthetic */ ROR.ac Qhi() {
        return super.Qhi();
    }

    public static Tgh Qhi(Context context) {
        if (Qhi == null) {
            synchronized (Tgh.class) {
                if (Qhi == null) {
                    Qhi = new Tgh(context);
                }
            }
        }
        return Qhi;
    }

    private Tgh(Context context) {
        super(context);
    }
}
