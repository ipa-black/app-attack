package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.Sf;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.ROR;
import com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.fl;
/* loaded from: classes2.dex */
public class BinderPoolService extends Service {
    public static volatile boolean Qhi;
    private static boolean ac;
    private final Binder cJ = new Qhi();

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HzH.cJ(getApplicationContext());
        Qhi = true;
        if (!ac) {
            Sf.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Qhi(BinderPoolService.this.getApplicationContext());
                }
            });
        }
        ac = true;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.cJ;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    /* loaded from: classes2.dex */
    public static class Qhi extends IBinderPool.Stub {
        @Override // com.bytedance.sdk.openadsdk.IBinderPool
        public IBinder queryBinder(int i) throws RemoteException {
            if (i != 0) {
                if (i != 1) {
                    if (i != 4) {
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
                    return com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.ac.Qhi();
                }
                return Tgh.Qhi();
            }
            return com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Sf.Qhi();
        }
    }
}
