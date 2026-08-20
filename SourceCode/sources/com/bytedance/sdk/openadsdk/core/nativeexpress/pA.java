package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.view.View;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: NativeRender.java */
/* loaded from: classes2.dex */
public class pA extends com.bytedance.sdk.component.adexpress.cJ.Qhi<BackupView> {
    private com.bytedance.sdk.component.adexpress.cJ.ac CJ;
    AtomicBoolean Qhi = new AtomicBoolean(false);
    private final com.bytedance.sdk.component.adexpress.cJ.iMK Tgh;
    private final View ac;
    private BackupView cJ;
    private com.bytedance.sdk.component.adexpress.cJ.Sf fl;

    public pA(View view, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.component.adexpress.cJ.iMK imk) {
        this.ac = view;
        this.Tgh = imk;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.Sf sf) {
        this.fl = sf;
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.pA.1
            @Override // java.lang.Runnable
            public void run() {
                pA.this.cJ();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ() {
        if (this.Qhi.get()) {
            return;
        }
        com.bytedance.sdk.component.adexpress.cJ.ac acVar = this.CJ;
        if (acVar == null || !acVar.Qhi((NativeExpressView) this.ac, 0)) {
            this.fl.Qhi(107, "backup false");
            return;
        }
        this.Tgh.fl().ROR();
        BackupView backupView = (BackupView) this.ac.findViewWithTag("tt_express_backup_fl_tag_26");
        this.cJ = backupView;
        if (backupView != null) {
            com.bytedance.sdk.component.adexpress.cJ.pA pAVar = new com.bytedance.sdk.component.adexpress.cJ.pA();
            BackupView backupView2 = this.cJ;
            float realWidth = backupView2 == null ? 0.0f : backupView2.getRealWidth();
            BackupView backupView3 = this.cJ;
            float realHeight = backupView3 != null ? backupView3.getRealHeight() : 0.0f;
            pAVar.Qhi(true);
            pAVar.Qhi(realWidth);
            pAVar.cJ(realHeight);
            this.fl.Qhi(this.cJ, pAVar);
            return;
        }
        this.fl.Qhi(107, "backupview is null");
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    /* renamed from: Qhi */
    public BackupView fl() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Qhi
    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.ac acVar) {
        this.CJ = acVar;
    }
}
