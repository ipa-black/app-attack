package com.bytedance.sdk.openadsdk.multipro.aidl.cJ;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IDislikeClosedListener;
import com.bytedance.sdk.openadsdk.core.bannerexpress.Qhi;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import com.bytedance.sdk.openadsdk.utils.lG;
/* compiled from: DislikeClosedListenerImpl.java */
/* loaded from: classes2.dex */
public class cJ extends IDislikeClosedListener.Stub {
    private final Qhi.InterfaceC0223Qhi Qhi;
    private final String cJ;

    public cJ(String str, Qhi.InterfaceC0223Qhi interfaceC0223Qhi) {
        this.cJ = str;
        this.Qhi = interfaceC0223Qhi;
    }

    @Override // com.bytedance.sdk.openadsdk.IDislikeClosedListener
    public void onItemClickClosed() throws RemoteException {
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.cJ.cJ.1
            @Override // java.lang.Runnable
            public void run() {
                if (cJ.this.Qhi != null) {
                    cJ.this.Qhi.Qhi();
                    TTDislikeListView.Qhi(6, cJ.this.cJ);
                }
            }
        });
    }
}
