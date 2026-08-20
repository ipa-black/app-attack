package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.model.pA;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
/* loaded from: classes2.dex */
public class OpenScreenAdBackupView extends BackupView {
    private NativeExpressView Qhi;

    public OpenScreenAdBackupView(Context context) {
        super(context);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void Qhi(View view, int i, pA pAVar) {
        NativeExpressView nativeExpressView = this.Qhi;
        if (nativeExpressView != null) {
            nativeExpressView.Qhi(view, i, pAVar);
        }
    }

    public void Qhi(NativeExpressView nativeExpressView) {
        this.Qhi = nativeExpressView;
        nativeExpressView.addView(this, new FrameLayout.LayoutParams(-1, -1));
    }
}
