package com.bytedance.sdk.component.Sf;

import android.os.SystemClock;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.utils.ABk;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
/* compiled from: DelegateRunnable.java */
/* loaded from: classes2.dex */
class cJ implements Comparable, Runnable {
    private Thread CJ = null;
    private hm Qhi;
    private long ac;
    private Qhi cJ;

    public cJ(hm hmVar, Qhi qhi) {
        this.ac = 0L;
        this.Qhi = hmVar;
        this.cJ = qhi;
        this.ac = SystemClock.uptimeMillis();
    }

    @Override // java.lang.Runnable
    public void run() {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = uptimeMillis - this.ac;
        this.CJ = Thread.currentThread();
        hm hmVar = this.Qhi;
        if (hmVar != null) {
            hmVar.run();
        }
        long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
        if (this.cJ != null) {
            fl.Qhi();
        }
        if (ABk.Qhi()) {
            Qhi qhi = this.cJ;
            String Qhi = qhi != null ? qhi.Qhi() : "null";
            Long valueOf = Long.valueOf(j);
            Long valueOf2 = Long.valueOf(uptimeMillis2);
            hm hmVar2 = this.Qhi;
            new Object[]{"run: pool  = ", Qhi, " waitTime =", valueOf, " taskCost = ", valueOf2, " name=", hmVar2 != null ? hmVar2.getName() : "null"};
            String Qhi2 = this.cJ.Qhi();
            Qhi2.hashCode();
            char c2 = 65535;
            switch (Qhi2.hashCode()) {
                case 3107:
                    if (Qhi2.equals("ad")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3366:
                    if (Qhi2.equals("io")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 107332:
                    if (Qhi2.equals("log")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3237136:
                    if (Qhi2.equals(Constants.INIT)) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 212371911:
                    if (Qhi2.equals("computation")) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                case 3:
                    if (uptimeMillis2 > ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
                        Qhi qhi2 = this.cJ;
                        String Qhi3 = qhi2 != null ? qhi2.Qhi() : "null";
                        hm hmVar3 = this.Qhi;
                        Qhi(Qhi3, hmVar3 != null ? hmVar3.getName() : "null", uptimeMillis2);
                        return;
                    }
                    return;
                case 1:
                    if (uptimeMillis2 > 5000) {
                        Qhi qhi3 = this.cJ;
                        String Qhi4 = qhi3 != null ? qhi3.Qhi() : "null";
                        hm hmVar4 = this.Qhi;
                        Qhi(Qhi4, hmVar4 != null ? hmVar4.getName() : "null", uptimeMillis2);
                        return;
                    }
                    return;
                case 2:
                    if (uptimeMillis2 > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                        Qhi qhi4 = this.cJ;
                        String Qhi5 = qhi4 != null ? qhi4.Qhi() : "null";
                        hm hmVar5 = this.Qhi;
                        Qhi(Qhi5, hmVar5 != null ? hmVar5.getName() : "null", uptimeMillis2);
                        return;
                    }
                    return;
                case 4:
                    if (uptimeMillis2 > 1000) {
                        Qhi qhi5 = this.cJ;
                        String Qhi6 = qhi5 != null ? qhi5.Qhi() : "null";
                        hm hmVar6 = this.Qhi;
                        Qhi(Qhi6, hmVar6 != null ? hmVar6.getName() : "null", uptimeMillis2);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private void Qhi(String str, String str2, long j) {
        ABk.Qhi("DelegateRunnable", "pool is " + str + "  name is " + str2 + "is timeout,cost " + j);
    }

    public hm Qhi() {
        return this.Qhi;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof cJ) {
            return this.Qhi.compareTo(((cJ) obj).Qhi());
        }
        return 0;
    }

    public int hashCode() {
        return this.Qhi.hashCode();
    }

    public boolean equals(Object obj) {
        hm hmVar;
        return (obj instanceof cJ) && (hmVar = this.Qhi) != null && hmVar.equals(((cJ) obj).Qhi());
    }
}
