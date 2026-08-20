package com.bytedance.sdk.component.Sf;

import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.Sf.Qhi;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: TTExecutor.java */
/* loaded from: classes2.dex */
public class ROR extends Tgh {
    private static volatile ScheduledExecutorService Gm;
    private static volatile ThreadPoolExecutor ROR;
    private static volatile ThreadPoolExecutor Sf;
    private static volatile ThreadPoolExecutor Tgh;
    private static volatile ThreadPoolExecutor WAv;
    public static ac cJ;
    private static volatile ThreadPoolExecutor fl;
    private static volatile ThreadPoolExecutor hm;
    public static final int Qhi = Runtime.getRuntime().availableProcessors();
    public static int ac = 120;
    public static boolean CJ = true;

    public static ExecutorService cJ() {
        if (fl == null) {
            synchronized (ROR.class) {
                if (fl == null) {
                    fl = new Qhi.C0183Qhi().Qhi(Constants.INIT).Qhi(0).cJ(10).Qhi(5L).Qhi(TimeUnit.SECONDS).Qhi(new SynchronousQueue()).Qhi(Sf()).Qhi(Qhi().createThreadFactory(10, Constants.INIT)).Qhi();
                }
            }
        }
        return fl;
    }

    public static void Qhi(hm hmVar) {
        if (fl == null) {
            cJ();
        }
        if (hmVar == null || fl == null) {
            return;
        }
        fl.execute(hmVar);
    }

    public static ExecutorService ac() {
        return Qhi(10);
    }

    public static ExecutorService Qhi(int i) {
        if (Tgh == null) {
            synchronized (ROR.class) {
                if (Tgh == null) {
                    Qhi Qhi2 = new Qhi.C0183Qhi().Qhi("io").Qhi(2).cJ(i).Qhi(20L).Qhi(TimeUnit.SECONDS).Qhi(new LinkedBlockingQueue()).Qhi(Sf()).Qhi(Qhi().createThreadFactory(i, "io")).Qhi();
                    Tgh = Qhi2;
                    Qhi2.allowCoreThreadTimeOut(true);
                }
            }
        }
        return Tgh;
    }

    public static void cJ(hm hmVar) {
        if (Tgh == null) {
            ac();
        }
        if (Tgh != null) {
            Tgh.execute(hmVar);
        }
    }

    public static void Qhi(hm hmVar, int i) {
        cJ(hmVar);
    }

    public static void Qhi(hm hmVar, int i, int i2) {
        if (Tgh == null) {
            Qhi(i2);
        }
        if (hmVar == null || Tgh == null) {
            return;
        }
        hmVar.setPriority(i);
        Tgh.execute(hmVar);
    }

    public static ExecutorService CJ() {
        if (Sf == null) {
            synchronized (ROR.class) {
                if (Sf == null) {
                    Qhi Qhi2 = new Qhi.C0183Qhi().Qhi("log").cJ(10).Qhi(4).Qhi(20L).Qhi(TimeUnit.SECONDS).Qhi(new PriorityBlockingQueue()).Qhi(Sf()).Qhi(Qhi().createThreadFactory(10, "log")).Qhi();
                    Sf = Qhi2;
                    Qhi2.allowCoreThreadTimeOut(true);
                }
            }
        }
        return Sf;
    }

    public static void ac(hm hmVar) {
        if (Sf == null) {
            CJ();
        }
        if (hmVar == null || Sf == null) {
            return;
        }
        Sf.execute(hmVar);
    }

    public static void cJ(hm hmVar, int i) {
        if (hmVar != null) {
            hmVar.setPriority(i);
        }
        ac(hmVar);
    }

    public static ExecutorService fl() {
        if (WAv == null) {
            synchronized (ROR.class) {
                if (WAv == null) {
                    Qhi Qhi2 = new Qhi.C0183Qhi().Qhi("aidl").cJ(10).Qhi(2).Qhi(30L).Qhi(TimeUnit.SECONDS).Qhi(new PriorityBlockingQueue()).Qhi(Sf()).Qhi(Qhi().createThreadFactory(10, "aidl")).Qhi();
                    WAv = Qhi2;
                    Qhi2.allowCoreThreadTimeOut(true);
                }
            }
        }
        return WAv;
    }

    public static void CJ(hm hmVar) {
        if (WAv == null) {
            fl();
        }
        if (hmVar == null || WAv == null) {
            return;
        }
        WAv.execute(hmVar);
    }

    public static void ac(hm hmVar, int i) {
        if (hmVar != null) {
            hmVar.setPriority(i);
        }
        CJ(hmVar);
    }

    public static ScheduledExecutorService Tgh() {
        if (Gm == null) {
            synchronized (ROR.class) {
                if (Gm == null) {
                    Gm = Executors.newSingleThreadScheduledExecutor(Qhi().createThreadFactory(5, "scheduled"));
                }
            }
        }
        return Gm;
    }

    public static boolean ROR() {
        return CJ;
    }

    public static void Qhi(boolean z) {
        CJ = z;
    }

    public static RejectedExecutionHandler Sf() {
        return new RejectedExecutionHandler() { // from class: com.bytedance.sdk.component.Sf.ROR.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }

    public static ac hm() {
        return cJ;
    }

    public static void Qhi(ac acVar) {
        cJ = acVar;
    }

    public static ExecutorService cJ(int i) {
        if (ROR == null) {
            synchronized (ROR.class) {
                if (ROR == null) {
                    Qhi Qhi2 = new Qhi.C0183Qhi().Qhi("ad").Qhi(2).cJ(i).Qhi(20L).Qhi(TimeUnit.SECONDS).Qhi(new LinkedBlockingQueue()).Qhi(Sf()).Qhi(Qhi().createThreadFactory(i, "ad")).Qhi();
                    ROR = Qhi2;
                    Qhi2.allowCoreThreadTimeOut(true);
                }
            }
        }
        return ROR;
    }

    public static void fl(hm hmVar) {
        if (ROR == null) {
            cJ(5);
        }
        if (hmVar == null || ROR == null) {
            return;
        }
        ROR.execute(hmVar);
    }

    public static ExecutorService WAv() {
        if (hm == null) {
            synchronized (ROR.class) {
                if (hm == null) {
                    Qhi Qhi2 = new Qhi.C0183Qhi().Qhi("computation").Qhi(3).cJ(10).Qhi(20L).Qhi(TimeUnit.SECONDS).Qhi(new PriorityBlockingQueue()).Qhi(Sf()).Qhi(Qhi().createThreadFactory(10, "computation")).Qhi();
                    hm = Qhi2;
                    Qhi2.allowCoreThreadTimeOut(true);
                }
            }
        }
        return hm;
    }

    public static void ac(int i) {
        ac = i;
    }
}
