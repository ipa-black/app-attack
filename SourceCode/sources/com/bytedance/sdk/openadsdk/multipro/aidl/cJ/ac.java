package com.bytedance.sdk.openadsdk.multipro.aidl.cJ;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.lG;
/* compiled from: FullScreenVideoListenerImpl.java */
/* loaded from: classes2.dex */
public class ac extends IFullScreenVideoAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ Qhi;

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onDestroy() throws RemoteException {
    }

    public ac(com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar) {
        this.Qhi = cJVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi() {
        this.Qhi = null;
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.Qhi == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.cJ.ac.1
            @Override // java.lang.Runnable
            public void run() {
                if (ac.this.Qhi != null) {
                    ac.this.Qhi.Qhi();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        if (this.Qhi == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.cJ.ac.2
            @Override // java.lang.Runnable
            public void run() {
                if (ac.this.Qhi != null) {
                    ac.this.Qhi.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
    public void onAdClose() throws RemoteException {
        if (this.Qhi == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.cJ.ac.3
            @Override // java.lang.Runnable
            public void run() {
                if (ac.this.Qhi != null) {
                    ac.this.Qhi.cJ();
                }
                ac.this.Qhi();
            }
        });
    }
}
