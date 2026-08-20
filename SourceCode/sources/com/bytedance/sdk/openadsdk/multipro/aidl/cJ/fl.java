package com.bytedance.sdk.openadsdk.multipro.aidl.cJ;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.lG;
/* compiled from: RewardVideoListenerImpl.java */
/* loaded from: classes2.dex */
public class fl extends IRewardAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.apiImpl.CJ.ac Qhi;

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onDestroy() throws RemoteException {
    }

    public fl(com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar) {
        this.Qhi = acVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi() {
        this.Qhi = null;
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.Qhi == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.cJ.fl.1
            @Override // java.lang.Runnable
            public void run() {
                if (fl.this.Qhi != null) {
                    fl.this.Qhi.Qhi();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        if (this.Qhi == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.cJ.fl.2
            @Override // java.lang.Runnable
            public void run() {
                if (fl.this.Qhi != null) {
                    fl.this.Qhi.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdClose() throws RemoteException {
        if (this.Qhi == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.cJ.fl.3
            @Override // java.lang.Runnable
            public void run() {
                if (fl.this.Qhi != null) {
                    fl.this.Qhi.cJ();
                }
                fl.this.Qhi();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onRewardVerify(final boolean z, final int i, final String str, final int i2, final String str2) throws RemoteException {
        if (this.Qhi == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.cJ.fl.4
            @Override // java.lang.Runnable
            public void run() {
                if (fl.this.Qhi != null) {
                    fl.this.Qhi.Qhi(z, i, str, i2, str2);
                }
            }
        });
    }
}
