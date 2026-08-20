package com.bytedance.sdk.component.Tgh.Qhi.cJ.ac;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.Tgh.Qhi.CJ.ROR;
import com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh;
import com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdPriorityLogThread.java */
/* loaded from: classes2.dex */
public class ac extends HandlerThread implements Handler.Callback {
    private static int HzH = 10;
    private static int kYc = 200;
    private volatile Handler ABk;
    private com.bytedance.sdk.component.Tgh.Qhi.cJ.ac CJ;
    private final long Gm;
    private final int MQ;
    protected fl Qhi;
    private volatile long ROR;
    private volatile long Sf;
    private volatile int Tgh;
    private final long WAv;
    private final Object ac;
    private volatile boolean cJ;
    private final PriorityBlockingQueue<Tgh> fl;
    private final AtomicInteger hm;
    private final AtomicInteger hpZ;
    private final List<Tgh> iMK;
    private final AtomicInteger pA;
    private final int qMt;
    private final int tP;
    private final AtomicInteger zc;

    public static void Qhi(int i) {
        HzH = i;
    }

    public static void cJ(int i) {
        kYc = i;
    }

    public ac(PriorityBlockingQueue<Tgh> priorityBlockingQueue) {
        super("csj_log");
        this.cJ = true;
        this.ac = new Object();
        this.ROR = 0L;
        this.Sf = 0L;
        this.hm = new AtomicInteger(0);
        this.WAv = 5000L;
        this.Gm = 5000000000L;
        this.zc = new AtomicInteger(0);
        this.iMK = new ArrayList();
        this.pA = new AtomicInteger(0);
        this.hpZ = new AtomicInteger(0);
        this.tP = 1;
        this.MQ = 2;
        this.qMt = 3;
        this.fl = priorityBlockingQueue;
        this.Qhi = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ();
    }

    public void Qhi(boolean z) {
        this.cJ = z;
    }

    public boolean Qhi() {
        return this.cJ;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        try {
        } catch (Throwable th) {
            th.getMessage();
        }
        if (i == 1) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.hm(), 1);
            cJ();
            Qhi(true);
            fl();
        } else if (i != 2 && i != 3) {
            if (i == 11) {
                ArrayList arrayList = new ArrayList(this.iMK);
                this.iMK.clear();
                Qhi((List<Tgh>) arrayList, false, "timeout_dispatch");
                WAv();
            }
            return true;
        } else {
            ac();
        }
        return true;
    }

    private void cJ() {
        long HzH2 = hm.ROR().HzH();
        if (HzH2 <= 0) {
            return;
        }
        this.Qhi.Qhi(Integer.MAX_VALUE, HzH2);
    }

    private void ac() {
        CJ();
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.zn(), 1);
        ac(1);
    }

    private void CJ() {
        if (!isAlive()) {
            com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.CJ();
        } else if (Qhi()) {
        } else {
            ac(6);
        }
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        super.onLooperPrepared();
        this.ABk = new Handler(getLooper(), this);
        com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.Qhi(this.ABk);
        this.ABk.sendEmptyMessage(1);
    }

    public boolean Qhi(int i, boolean z) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (hpZ == null || !hpZ.Qhi(hm.ROR().Tgh())) {
            return false;
        }
        return this.Qhi.Qhi(i, z);
    }

    public void Qhi(Tgh tgh, boolean z) {
        if (tgh == null) {
            return;
        }
        tgh.CJ();
        if (z) {
            if (this.ABk != null) {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(tgh);
                Qhi((List<Tgh>) arrayList, true, "ignore_result_dispatch");
                return;
            }
            return;
        }
        this.fl.add(tgh);
        fl(2);
    }

    public void ac(int i) {
        try {
            boolean Qhi = Qhi(i, com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ);
            if (i == 6 || Qhi) {
                ROR ror = new ROR();
                ror.cJ(i);
                this.fl.add(ror);
                fl(3);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private void Qhi(Tgh tgh, int i) {
        this.hm.set(0);
        if (i == 0) {
            this.Tgh = ((ROR) tgh).Gm();
            if (this.Tgh != 6) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.ip(), 1);
                cJ(tgh);
                return;
            }
            return;
        }
        ROR ror = (ROR) tgh;
        if (ror.Gm() == 1) {
            this.Tgh = 1;
            cJ(tgh);
        } else if (ror.Gm() == 2) {
            ROR();
            this.Tgh = 2;
            cJ(tgh);
        }
    }

    private void fl() {
        while (Qhi()) {
            try {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.Sf(), 1);
                Tgh poll = this.fl.poll(60000L, TimeUnit.MILLISECONDS);
                int size = this.fl.size();
                if (poll instanceof ROR) {
                    Qhi(poll, size);
                } else if (poll == null) {
                    int incrementAndGet = this.hm.incrementAndGet();
                    com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.xyz(), 1);
                    if (CJ(incrementAndGet)) {
                        Tgh();
                        return;
                    } else if (incrementAndGet < 4) {
                        this.Tgh = 1;
                        cJ((Tgh) null);
                    }
                } else {
                    Qhi(poll);
                    cJ(poll);
                }
            } catch (Throwable th) {
                th.getMessage();
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.yN(), 1);
            }
        }
    }

    private boolean CJ(int i) {
        return i >= 4 && this.zc.get() == 0 && !com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ && !com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.ac;
    }

    private void Tgh() {
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.EBS(), 1);
        Qhi(false);
        com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.ac();
    }

    private void ROR() {
        if (this.fl.size() >= 100) {
            for (int i = 0; i < 100; i++) {
                Tgh poll = this.fl.poll();
                if (!(poll instanceof ROR) && poll != null) {
                    Qhi(poll);
                }
            }
        }
    }

    private void Qhi(Tgh tgh) {
        this.hm.set(0);
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ) {
            this.Tgh = 5;
        } else if (com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.ac) {
            this.Tgh = 7;
        } else {
            this.Tgh = 4;
        }
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.cjC(), 1);
        this.Qhi.Qhi(tgh, this.Tgh);
        com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.ROR(tgh);
    }

    private boolean Sf() {
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ) {
            return this.Tgh == 4 || this.Tgh == 7 || this.Tgh == 6 || this.Tgh == 5 || this.Tgh == 2;
        }
        return false;
    }

    private void cJ(Tgh tgh) {
        if (com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.cJ() && hm.ROR().Qhi()) {
            return;
        }
        int i = 0;
        if (Sf()) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.Qhi(this.Tgh);
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.zc(), 1);
            if (this.fl.size() != 0) {
                return;
            }
            if (!this.ABk.hasMessages(2)) {
                com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ = false;
                this.Sf = 0L;
                this.ROR = 0L;
                this.pA.set(0);
                this.hpZ.set(0);
            } else {
                Qhi(false);
                return;
            }
        }
        do {
            boolean Qhi = Qhi(this.Tgh, com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ);
            com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.Qhi(Qhi, this.Tgh, tgh);
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.ABk(), 1);
            if (Qhi) {
                List<Tgh> Qhi2 = this.Qhi.Qhi(this.Tgh, -1, null);
                if (Qhi2 != null) {
                    Qhi2.size();
                    Qhi(Qhi2);
                } else {
                    hm();
                }
            } else {
                hm();
            }
            i++;
            if (!Qhi) {
                return;
            }
        } while (i <= 6);
    }

    private void hm() {
        try {
            if (this.fl.size() == 0 && this.ABk.hasMessages(11) && Qhi()) {
                Qhi(false);
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    private void Qhi(List<Tgh> list, String str) {
        Qhi(str);
        Qhi(list, false, str);
        WAv();
    }

    private void Qhi(List<Tgh> list) {
        if (list.size() != 0) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.Qhi(list, this.fl.size());
            if (list.size() > 1 || com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.ac()) {
                Qhi(list, "batchRead");
                return;
            }
            Tgh tgh = list.get(0);
            if (tgh != null) {
                if (tgh.fl() == 1) {
                    Qhi(list, "highPriority");
                    return;
                } else if (tgh.CJ() == 0 && tgh.fl() == 2) {
                    if (tgh.cJ() == 3) {
                        Qhi(list, "version_v3");
                        return;
                    } else {
                        cJ(list);
                        return;
                    }
                } else if (tgh.CJ() == 1) {
                    Qhi(list, Constants.STATS);
                    return;
                } else if (tgh.CJ() == 3) {
                    Qhi(list, "adType_v3");
                    return;
                } else if (tgh.CJ() == 2) {
                    Qhi(list, "other");
                    return;
                } else {
                    return;
                }
            }
            return;
        }
        hm();
    }

    private void cJ(List<Tgh> list) {
        this.iMK.addAll(list);
        this.iMK.size();
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (hpZ != null && hpZ.zc() != null) {
            HzH = hpZ.zc().cJ();
        }
        if (this.iMK.size() >= HzH) {
            if (this.ABk.hasMessages(11)) {
                this.ABk.removeMessages(11);
            }
            ArrayList arrayList = new ArrayList(this.iMK);
            this.iMK.clear();
            Qhi((List<Tgh>) arrayList, false, "max_size_dispatch");
            WAv();
        } else if (this.fl.size() == 0) {
            Qhi(false);
            if (this.ABk.hasMessages(11)) {
                this.ABk.removeMessages(11);
            }
            if (this.ABk.hasMessages(1)) {
                this.ABk.removeMessages(1);
            }
            long j = kYc;
            if (hpZ != null && hpZ.zc() != null) {
                j = hpZ.zc().Qhi();
            }
            this.ABk.sendEmptyMessageDelayed(11, j);
        } else {
            this.iMK.size();
        }
    }

    private void Qhi(String str) {
        if (this.ABk.hasMessages(11)) {
            this.ABk.removeMessages(11);
        }
        if (this.iMK.size() != 0) {
            ArrayList arrayList = new ArrayList(this.iMK);
            this.iMK.clear();
            Qhi((List<Tgh>) arrayList, false, "before_".concat(String.valueOf(str)));
            WAv();
            arrayList.size();
        }
    }

    private void Qhi(List<Tgh> list, boolean z, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.Qhi(list, this.Tgh, str);
        com.bytedance.sdk.component.Tgh.Qhi.cJ.ac Sf = hm.ROR().Sf();
        this.CJ = Sf;
        if (Sf != null) {
            cJ(list, z, currentTimeMillis);
        } else {
            Qhi(list, z, currentTimeMillis);
        }
    }

    private void Qhi(final List<Tgh> list, final boolean z, final long j) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (hpZ != null) {
            Executor fl = hpZ.fl();
            if (list.get(0).fl() == 1) {
                fl = hpZ.CJ();
            }
            if (fl == null) {
                return;
            }
            this.zc.incrementAndGet();
            fl.execute(new com.bytedance.sdk.component.Tgh.Qhi.fl.Tgh("csj_log_upload") { // from class: com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac.1
                @Override // java.lang.Runnable
                public void run() {
                    ac acVar = ac.this;
                    acVar.Qhi(list, z, j, acVar.Tgh);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(List<Tgh> list, boolean z, long j, int i) {
        cJ Qhi;
        try {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.oU(), 1);
            if (list.get(0).CJ() == 0) {
                Qhi = hm.fl().Qhi(list);
                Qhi(Qhi, list);
                if (Qhi != null) {
                    com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.Qhi(list, Qhi.CJ);
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (Tgh tgh : list) {
                        jSONArray.put(tgh.ROR());
                    }
                    jSONObject.put("stats_list", jSONArray);
                } catch (Exception e2) {
                    e2.getMessage();
                }
                Qhi = hm.fl().Qhi(jSONObject);
            }
            cJ cJVar = Qhi;
            this.zc.decrementAndGet();
            Qhi(z, cJVar, list, j);
        } catch (Throwable th) {
            th.getMessage();
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.yN(), 1);
            this.zc.decrementAndGet();
        }
    }

    private void cJ(List<Tgh> list, final boolean z, final long j) {
        this.zc.incrementAndGet();
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.oU(), 1);
        try {
            HashMap hashMap = new HashMap();
            Iterator<Tgh> it = list.iterator();
            while (it.hasNext()) {
                Tgh next = it.next();
                int WAv = next == null ? 0 : next.WAv();
                if (hashMap.get(Integer.valueOf(WAv)) == null) {
                    hashMap.put(Integer.valueOf(WAv), new ArrayList());
                }
                ((List) hashMap.get(Integer.valueOf(WAv))).add(next);
            }
            for (Integer num : hashMap.keySet()) {
                int intValue = num.intValue();
                if (intValue != 0 && hm.ROR().ac() != null && hm.ROR().ac().get(Integer.valueOf(intValue)) != null) {
                    hm.ROR().ac().get(Integer.valueOf(intValue)).Qhi(list, new com.bytedance.sdk.component.Tgh.Qhi.cJ.cJ() { // from class: com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac.3
                        @Override // com.bytedance.sdk.component.Tgh.Qhi.cJ.cJ
                        public void Qhi(List<Qhi> list2) {
                            try {
                                ac.this.zc.decrementAndGet();
                                if (list2 == null || list2.size() == 0) {
                                    return;
                                }
                                int size = list2.size();
                                for (int i = 0; i < size; i++) {
                                    Qhi qhi = list2.get(i);
                                    if (qhi != null) {
                                        ac.this.Qhi(z, qhi.Qhi(), qhi.cJ(), j);
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                }
                this.CJ.Qhi(list, new com.bytedance.sdk.component.Tgh.Qhi.cJ.cJ() { // from class: com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac.2
                    @Override // com.bytedance.sdk.component.Tgh.Qhi.cJ.cJ
                    public void Qhi(List<Qhi> list2) {
                        try {
                            ac.this.zc.decrementAndGet();
                            if (list2 == null || list2.size() == 0) {
                                return;
                            }
                            int size = list2.size();
                            for (int i = 0; i < size; i++) {
                                Qhi qhi = list2.get(i);
                                if (qhi != null) {
                                    ac.this.Qhi(z, qhi.Qhi(), qhi.cJ(), j);
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        } catch (Exception e2) {
            e2.getMessage();
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.yN(), 1);
            this.zc.decrementAndGet();
        }
    }

    private void fl(int i) {
        if (!Qhi()) {
            if (this.ABk == null) {
                return;
            }
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.ac(), 1);
            if (this.ABk.hasMessages(1)) {
                return;
            }
            if (i == 1) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.Tgh(), 1);
            } else if (i == 2) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.CJ(), 1);
            } else if (i == 3) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.fl(), 1);
            }
            this.ABk.sendEmptyMessage(1);
            return;
        }
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.Qhi(), 1);
    }

    private void Qhi(cJ cJVar, List<Tgh> list) {
        if (cJVar == null || !cJVar.Qhi) {
            return;
        }
        List<Object> Qhi = com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi();
        if (list == null || Qhi == null || Qhi.size() == 0) {
            return;
        }
        for (Tgh tgh : list) {
            if (tgh.fl() == 1) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.Qhi(tgh);
                com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.fl(tgh);
                Iterator<Object> it = Qhi.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }

    private void WAv() {
        long nanoTime;
        if (this.ABk.hasMessages(11)) {
            hm();
        } else {
            fl(1);
        }
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.cJ(), 1);
        if (this.Tgh == 2) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.ROR(), 1);
            synchronized (this.ac) {
                try {
                    try {
                        long nanoTime2 = System.nanoTime();
                        this.ac.wait(5000L);
                        nanoTime = System.nanoTime() - nanoTime2;
                        if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ) {
                            boolean z = com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.ac;
                        }
                    } catch (InterruptedException e2) {
                        e2.getMessage();
                    }
                    if (nanoTime < 5000000000L && 5000000000L - nanoTime >= 50000000) {
                        if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ && !com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.ac) {
                            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.es(), 1);
                            ac(2);
                            return;
                        }
                        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.Gm(), 1);
                        return;
                    }
                    com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.WAv(), 1);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(boolean z, cJ cJVar, List<Tgh> list, long j) {
        if (z || cJVar == null) {
            return;
        }
        int i = cJVar.cJ;
        int i2 = -2;
        if (cJVar.fl) {
            i = -1;
        } else if (i < 0) {
            i = -2;
        }
        if (i == 510 || i == 511) {
            i = -2;
        }
        if (cJVar.Qhi || ((i < 500 || i >= 509) && i <= 513)) {
            i2 = i;
        }
        if (list != null) {
            list.size();
            this.zc.get();
        }
        Qhi(i2, list, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00ef A[Catch: all -> 0x00fd, TryCatch #0 {, blocks: (B:5:0x0005, B:8:0x000b, B:53:0x00eb, B:55:0x00ef, B:56:0x00f4, B:18:0x0030, B:20:0x0040, B:22:0x0042, B:24:0x004f, B:26:0x0051, B:28:0x005f, B:29:0x0064, B:30:0x0069, B:32:0x006f, B:34:0x0075, B:36:0x0085, B:37:0x008a, B:39:0x0092, B:40:0x0097, B:41:0x00b4, B:43:0x00c4, B:45:0x00c6, B:47:0x00d3, B:49:0x00d5, B:51:0x00e3, B:52:0x00e8, B:59:0x00fb), top: B:64:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Qhi(int r6, java.util.List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> r7, long r8) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac.Qhi(int, java.util.List, long):void");
    }

    public void Qhi(int i, long j) {
        if (this.ABk == null) {
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = i;
        if (i == 2) {
            this.ABk.sendMessageDelayed(obtain, (((this.pA.incrementAndGet() - 1) % 4) + 1) * j);
        } else if (i == 3) {
            this.ABk.sendMessageDelayed(obtain, (((this.hpZ.incrementAndGet() - 1) % 4) + 1) * j);
        }
    }
}
