package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.ROR;
import com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Sf;
import com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.fl;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
/* compiled from: BinderPool.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static final Qhi cJ = new Qhi();
    private IBinderPool Qhi;
    private cJ ac;
    private long CJ = 0;
    private final ServiceConnection fl = new ServiceConnection() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.2
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            lG.Qhi(new hm("onServiceConnected") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.2.1
                @Override // java.lang.Runnable
                public void run() {
                    Qhi.this.Qhi = IBinderPool.Stub.asInterface(iBinder);
                    try {
                        Qhi.this.Qhi.asBinder().linkToDeath(Qhi.this.Tgh, 0);
                    } catch (RemoteException e2) {
                        ABk.Qhi("TTAD.BinderPool", "onServiceConnected throws :", e2);
                    }
                    System.currentTimeMillis();
                    long unused = Qhi.this.CJ;
                    if (Qhi.this.ac != null) {
                        Qhi.this.ac.onServiceConnected();
                    }
                }
            }, 5);
        }
    };
    private final IBinder.DeathRecipient Tgh = new IBinder.DeathRecipient() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.3
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            lG.Qhi(new hm("binderDied") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.3.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Qhi.this.Qhi.asBinder().isBinderAlive()) {
                            Qhi.this.Qhi.asBinder().unlinkToDeath(Qhi.this.Tgh, 0);
                        }
                    } catch (Exception e2) {
                        ABk.Qhi("TTAD.BinderPool", e2.getMessage());
                    }
                    Qhi.this.Qhi = null;
                    Qhi.this.CJ();
                }
            }, 5);
        }
    };

    private Qhi() {
        CJ();
    }

    public static Qhi Qhi() {
        return cJ;
    }

    public void cJ() {
        try {
            Context Qhi = HzH.Qhi();
            Qhi.startService(new Intent(Qhi, BinderPoolService.class));
        } catch (Exception unused) {
        }
    }

    public void ac() {
        try {
            Context Qhi = HzH.Qhi();
            Qhi.bindService(new Intent(Qhi, BinderPoolService.class), this.fl, 1);
            this.CJ = System.currentTimeMillis();
        } catch (Throwable unused) {
        }
    }

    public void Qhi(cJ cJVar) {
        this.ac = cJVar;
        if (this.Qhi != null) {
            lG.Qhi(new hm("onServiceConnected2") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Qhi.this.ac != null) {
                        Qhi.this.ac.onServiceConnected();
                    }
                }
            }, 5);
        }
    }

    public IBinder Qhi(int i) {
        try {
            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                try {
                    IBinderPool iBinderPool = this.Qhi;
                    if (iBinderPool != null) {
                        return iBinderPool.queryBinder(i);
                    }
                    return null;
                } catch (RemoteException e2) {
                    ABk.Qhi("TTAD.BinderPool", e2.getMessage());
                    js.Sf("queryBinder error");
                    return null;
                }
            } else if (i != 0) {
                if (i != 1) {
                    if (i != 5) {
                        if (i != 6) {
                            if (i != 7) {
                                return null;
                            }
                            return com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.cJ.Qhi();
                        }
                        return fl.Qhi();
                    }
                    return ROR.cJ();
                }
                return Tgh.Qhi();
            } else {
                return Sf.Qhi();
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            ac();
        }
    }
}
