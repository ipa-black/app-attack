package com.bykv.vk.openvk.component.video.Qhi.cJ;

import com.bykv.vk.openvk.component.video.Qhi.cJ.ABk;
import com.bykv.vk.openvk.component.video.Qhi.cJ.WAv;
import com.google.common.net.HttpHeaders;
import com.ironsource.mediationsdk.config.VersionInfo;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AbsTask.java */
/* loaded from: classes2.dex */
public abstract class Qhi implements zc {
    private static final AtomicLong ABk = new AtomicLong();
    protected volatile com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.Qhi Qhi;
    protected volatile String ROR;
    protected volatile String Sf;
    protected volatile List<WAv.cJ> Tgh;
    protected volatile ABk WAv;
    protected final com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac cJ;
    protected com.bykv.vk.openvk.component.video.Qhi.cJ.CJ.Tgh fl;
    protected volatile WAv hm;
    protected final AtomicInteger ac = new AtomicInteger();
    protected final AtomicLong CJ = new AtomicLong();
    protected volatile boolean Gm = false;
    public final long zc = ABk.incrementAndGet();
    private final AtomicInteger iMK = new AtomicInteger(0);
    private int pA = -1;

    public Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.Qhi qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac acVar) {
        this.Qhi = qhi;
        this.cJ = acVar;
    }

    public void Qhi() {
        this.iMK.compareAndSet(0, 1);
    }

    public boolean cJ() {
        return this.iMK.get() == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ac() {
        this.iMK.compareAndSet(0, 2);
    }

    public boolean CJ() {
        return this.iMK.get() == 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fl() throws com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi {
        if (cJ()) {
            throw new com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi Qhi(ABk.Qhi qhi, int i, int i2, String str) throws IOException {
        com.bykv.vk.openvk.component.video.Qhi.cJ.fl.cJ cJ = com.bykv.vk.openvk.component.video.Qhi.cJ.fl.ac.Qhi().cJ();
        com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Tgh tgh = new com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Tgh();
        HashMap hashMap = new HashMap();
        tgh.cJ = qhi.Qhi;
        tgh.Qhi = 0;
        if (VersionInfo.GIT_BRANCH.equalsIgnoreCase(str)) {
            tgh.Qhi = 4;
        }
        List<WAv.cJ> list = this.Tgh;
        if (list != null && !list.isEmpty()) {
            for (WAv.cJ cJVar : list) {
                if (!"Range".equalsIgnoreCase(cJVar.Qhi) && !"Connection".equalsIgnoreCase(cJVar.Qhi) && !"Proxy-Connection".equalsIgnoreCase(cJVar.Qhi) && !HttpHeaders.HOST.equalsIgnoreCase(cJVar.Qhi)) {
                    hashMap.put(cJVar.Qhi, cJVar.cJ);
                }
            }
        }
        String Qhi = com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(i, i2);
        if (Qhi != null) {
            hashMap.put("Range", Qhi);
        }
        if (Tgh.Tgh) {
            hashMap.put("Cache-Control", "no-cache");
        }
        fl ac = fl.ac();
        ROR Qhi2 = ROR.Qhi();
        boolean z = this.hm == null;
        ac Qhi3 = z ? ac.Qhi() : Qhi2.cJ();
        ac cJ2 = z ? ac.cJ() : Qhi2.ac();
        if (Qhi3 != null || cJ2 != null) {
            if (Qhi3 != null) {
                throw null;
            }
            if (cJ2 != null) {
                throw null;
            }
        }
        tgh.fl = hashMap;
        if (this.Gm) {
            this.Gm = false;
            return null;
        }
        return cJ.Qhi(tgh);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int Tgh() {
        if (this.hm != null) {
            return this.hm.ac.Qhi;
        }
        return this.Qhi instanceof com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.cJ ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean ROR() {
        return Tgh() == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(int i, int i2) {
        if (i <= 0 || i2 < 0) {
            return;
        }
        int i3 = Tgh.ROR;
        int Tgh = Tgh();
        if (i3 == 1 || (i3 == 2 && Tgh == 1)) {
            int i4 = (int) ((i2 / i) * 100.0f);
            if (i4 > 100) {
                i4 = 100;
            }
            synchronized (this) {
                if (i4 <= this.pA) {
                    return;
                }
                this.pA = i4;
                com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.fl != null) {
                            ABk aBk = Qhi.this.WAv;
                            int unused = Qhi.this.pA;
                        }
                    }
                });
            }
        }
    }
}
