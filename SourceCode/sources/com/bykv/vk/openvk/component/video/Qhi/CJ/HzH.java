package com.bykv.vk.openvk.component.video.Qhi.CJ;

import android.graphics.SurfaceTexture;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ;
import com.bykv.vk.openvk.component.video.api.Qhi;
import com.bykv.vk.openvk.component.video.api.ac.ac;
import com.bykv.vk.openvk.component.video.api.cJ;
import com.bytedance.sdk.component.Sf.WAv;
import com.bytedance.sdk.component.utils.CQU;
import com.explorestack.protobuf.openrtb.LossReason;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: SSMediaPlayerWrapper.java */
/* loaded from: classes2.dex */
public class HzH implements hpZ.Qhi, hpZ.ROR, hpZ.Sf, hpZ.Tgh, hpZ.ac, hpZ.cJ, hpZ.fl, com.bykv.vk.openvk.component.video.api.Qhi, CQU.Qhi {
    private static final SparseIntArray Dww = new SparseIntArray();
    private CQU ABk;
    private int CJ;
    private boolean CQU;
    private boolean MQ;
    private SurfaceTexture Qhi;
    private boolean WAv;
    private SurfaceHolder cJ;
    private boolean hm;
    private ArrayList<Runnable> qMt;
    private volatile boolean zn;
    private int ac = 0;
    private boolean fl = false;
    private volatile hpZ Tgh = null;
    private final boolean ROR = false;
    private boolean Sf = false;
    private volatile int Gm = 201;
    private long zc = -1;
    private boolean iMK = false;
    private long pA = 0;
    private long hpZ = Long.MIN_VALUE;
    private long HzH = 0;
    private long kYc = 0;
    private long tP = 0;
    private int EBS = 0;
    private String bxS = "0";
    private final List<WeakReference<Qhi.InterfaceC0166Qhi>> pM = new CopyOnWriteArrayList();
    private ac Eh = null;
    private boolean aP = false;
    private CountDownLatch NFd = new CountDownLatch(1);
    private volatile int sDy = 200;
    private AtomicBoolean lB = new AtomicBoolean(false);
    private Surface lG = null;
    private final Runnable Jma = new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.1
        @Override // java.lang.Runnable
        public void run() {
            if (HzH.this.Tgh == null) {
                return;
            }
            long HzH = HzH.this.HzH();
            if (HzH > 0 && HzH.this.Tgh() && HzH.this.hpZ != Long.MIN_VALUE) {
                try {
                    if (HzH.this.hpZ == HzH) {
                        if (!HzH.this.iMK && HzH.this.HzH >= 400) {
                            HzH.this.cJ(701, 800);
                            HzH.this.iMK = true;
                        }
                        HzH.this.HzH += HzH.this.sDy;
                    } else {
                        if (HzH.this.iMK) {
                            HzH.this.pA += HzH.this.HzH;
                            HzH.this.cJ(702, 800);
                            new Object[]{"handleMsg:  bufferingDuration =", Long.valueOf(HzH.this.pA), "  bufferCount =", Integer.valueOf(HzH.this.ac)};
                        }
                        HzH.this.HzH = 0L;
                        HzH.this.iMK = false;
                    }
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
            if (HzH.this.hpZ() > 0) {
                if (HzH.this.hpZ != HzH) {
                    if (com.bykv.vk.openvk.component.video.api.ac.fl()) {
                        new Object[]{"run: lastCur = ", Long.valueOf(HzH.this.hpZ), "  curPosition = ", Long.valueOf(HzH)};
                    }
                    HzH hzH = HzH.this;
                    hzH.Qhi(HzH, hzH.hpZ());
                }
                HzH.this.hpZ = HzH;
            }
            if (!HzH.this.cJ()) {
                if (HzH.this.ABk != null) {
                    HzH.this.ABk.postDelayed(this, HzH.this.sDy);
                    return;
                }
                return;
            }
            HzH hzH2 = HzH.this;
            hzH2.Qhi(hzH2.hpZ(), HzH.this.hpZ());
        }
    };
    private final Qhi js = new Qhi();
    private long es = 0;
    private long yN = 0;
    private boolean FQ = false;

    private boolean Qhi(int i, int i2) {
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200;
        if (i2 == 1 || i2 == 700 || i2 == 800) {
            return true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(long j, long j2) {
        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Qhi(this, j, j2);
            }
        }
    }

    public HzH() {
        Qhi("SSMediaPlayerWrapper");
    }

    private void Qhi(String str) {
        this.EBS = 0;
        this.ABk = com.bytedance.sdk.component.Sf.Qhi.Qhi.Qhi().Qhi(this, WAv.THREAD_NAME_PRE.concat(String.valueOf(str)));
        this.FQ = true;
        qMt();
    }

    private void MQ() {
        this.pA = 0L;
        this.ac = 0;
        this.HzH = 0L;
        this.iMK = false;
        this.hpZ = Long.MIN_VALUE;
    }

    public void Qhi(final boolean z) {
        if (Sf()) {
            return;
        }
        this.CQU = z;
        if (this.Tgh != null) {
            this.Tgh.Qhi(z);
            return;
        }
        CQU cqu = this.ABk;
        if (cqu != null) {
            cqu.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.9
                @Override // java.lang.Runnable
                public void run() {
                    if (HzH.this.Tgh != null) {
                        HzH.this.Tgh.Qhi(z);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void qMt() {
        CQU cqu = this.ABk;
        if (cqu != null) {
            cqu.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.10
                @Override // java.lang.Runnable
                public void run() {
                    if (HzH.this.Tgh == null) {
                        try {
                            HzH.this.Tgh = new pA();
                        } catch (Throwable th) {
                            th.getMessage();
                        }
                        if (HzH.this.Tgh == null) {
                            return;
                        }
                        hpZ unused = HzH.this.Tgh;
                        HzH.this.bxS = "0";
                        HzH.this.Tgh.Qhi((hpZ.Tgh) HzH.this);
                        HzH.this.Tgh.Qhi((hpZ.cJ) HzH.this);
                        HzH.this.Tgh.Qhi((hpZ.ac) HzH.this);
                        HzH.this.Tgh.Qhi((hpZ.Qhi) HzH.this);
                        HzH.this.Tgh.Qhi((hpZ.ROR) HzH.this);
                        HzH.this.Tgh.Qhi((hpZ.fl) HzH.this);
                        HzH.this.Tgh.Qhi((hpZ.Sf) HzH.this);
                        try {
                            HzH.this.Tgh.ac(false);
                        } catch (Throwable unused2) {
                        }
                        HzH.this.Sf = false;
                    }
                }
            });
        }
    }

    public void hm() {
        if (Sf() || this.Tgh == null) {
            return;
        }
        this.lB.set(true);
        if (this.Gm != 206) {
            MQ();
            this.zn = false;
            this.js.Qhi(true);
            cJ(0L);
            CQU cqu = this.ABk;
            if (cqu != null) {
                cqu.removeCallbacks(this.Jma);
                this.ABk.postDelayed(this.Jma, this.sDy);
            }
        }
        this.NFd.countDown();
    }

    public void Qhi(boolean z, long j, boolean z2) {
        if (Sf()) {
            return;
        }
        qMt();
        this.aP = z2;
        this.lB.set(true);
        this.zn = false;
        cJ(z2);
        if (z) {
            this.zc = j;
            EBS();
        } else {
            cJ(j);
        }
        CQU cqu = this.ABk;
        if (cqu != null) {
            cqu.removeCallbacks(this.Jma);
            this.ABk.postDelayed(this.Jma, this.sDy);
        }
        this.NFd.countDown();
    }

    private void cJ(long j) {
        this.js.Qhi(j);
        if (this.CQU) {
            cJ(this.js);
        } else if (cJ(this.Eh)) {
            cJ(this.js);
        } else {
            Qhi(this.js);
        }
    }

    private boolean cJ(ac acVar) {
        return acVar != null && acVar.CJ();
    }

    public void WAv() {
        if (Sf() || this.ABk == null) {
            return;
        }
        this.lB.set(true);
        this.ABk.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.11
            @Override // java.lang.Runnable
            public void run() {
                if (!HzH.this.ROR() || HzH.this.Tgh == null) {
                    return;
                }
                try {
                    HzH.this.Tgh.fl();
                    for (WeakReference weakReference : HzH.this.pM) {
                        if (weakReference != null && weakReference.get() != null) {
                            ((Qhi.InterfaceC0166Qhi) weakReference.get()).fl(HzH.this);
                        }
                    }
                    HzH.this.Gm = LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE;
                } catch (Throwable th) {
                    new Object[]{"play: catch exception ", th.getMessage()};
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SSMediaPlayerWrapper.java */
    /* loaded from: classes2.dex */
    public class Qhi implements Runnable {
        private boolean ac;
        private long cJ;

        Qhi() {
        }

        public void Qhi(boolean z) {
            this.ac = z;
        }

        public void Qhi(long j) {
            this.cJ = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (HzH.this.Tgh != null) {
                try {
                    if (!this.ac) {
                        long hm = HzH.this.Tgh.hm();
                        HzH.this.zc = Math.max(this.cJ, hm);
                    }
                    long unused = HzH.this.zc;
                } catch (Throwable th) {
                    new StringBuilder("[video] MediaPlayerProxy#start  error: getCurrentPosition :").append(th);
                }
            }
            if (HzH.this.ABk != null) {
                HzH.this.ABk.sendEmptyMessageDelayed(100, 0L);
            }
        }
    }

    public void Gm() {
        CQU cqu;
        if (Sf() || (cqu = this.ABk) == null) {
            return;
        }
        cqu.removeMessages(100);
        this.zn = true;
        if (!this.FQ) {
            if (this.MQ || cJ(this.Eh)) {
                CQU cqu2 = this.ABk;
                if (cqu2 != null) {
                    cqu2.sendEmptyMessage(101);
                    return;
                }
                return;
            }
            Qhi(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.12
                @Override // java.lang.Runnable
                public void run() {
                    if (HzH.this.ABk != null) {
                        HzH.this.ABk.sendEmptyMessage(101);
                    }
                }
            });
        } else if (this.fl || cJ(this.Eh)) {
            CQU cqu3 = this.ABk;
            if (cqu3 != null) {
                cqu3.sendEmptyMessage(101);
            }
        } else {
            Qhi(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.13
                @Override // java.lang.Runnable
                public void run() {
                    if (HzH.this.ABk != null) {
                        HzH.this.ABk.sendEmptyMessage(101);
                    }
                }
            });
        }
    }

    public void zc() {
        if (Sf()) {
            return;
        }
        this.WAv = true;
        sDy();
        CQU cqu = this.ABk;
        if (cqu != null) {
            try {
                cqu.removeCallbacksAndMessages(null);
                if (this.Tgh != null) {
                    this.ABk.sendEmptyMessage(103);
                }
                Dww();
            } catch (Throwable unused) {
                Dww();
            }
        }
    }

    private void EBS() {
        cJ(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.14
            @Override // java.lang.Runnable
            public void run() {
                if (HzH.this.ABk != null) {
                    HzH.this.ABk.sendEmptyMessage(104);
                }
            }
        });
    }

    public void Qhi(final long j) {
        if (Sf()) {
            return;
        }
        if (this.Gm == 207 || this.Gm == 206 || this.Gm == 209) {
            cJ(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.2
                @Override // java.lang.Runnable
                public void run() {
                    if (HzH.this.ABk != null) {
                        HzH.this.ABk.obtainMessage(106, Long.valueOf(j)).sendToTarget();
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi
    public boolean Qhi() {
        return this.fl;
    }

    public void Qhi(final SurfaceTexture surfaceTexture) {
        if (Sf()) {
            return;
        }
        this.Qhi = surfaceTexture;
        Qhi(true);
        cJ(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.3
            @Override // java.lang.Runnable
            public void run() {
                HzH.this.qMt();
                if (HzH.this.ABk != null) {
                    HzH.this.ABk.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    public void Qhi(final SurfaceHolder surfaceHolder) {
        if (Sf()) {
            return;
        }
        this.cJ = surfaceHolder;
        Qhi(true);
        cJ(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.4
            @Override // java.lang.Runnable
            public void run() {
                HzH.this.qMt();
                if (HzH.this.ABk != null) {
                    HzH.this.ABk.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    public void Qhi(final ac acVar) {
        if (Sf()) {
            return;
        }
        this.Eh = acVar;
        if (acVar != null) {
            this.FQ = this.FQ && !acVar.CJ();
        }
        cJ(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.5
            @Override // java.lang.Runnable
            public void run() {
                HzH.this.qMt();
                if (HzH.this.ABk != null) {
                    HzH.this.ABk.obtainMessage(107, acVar).sendToTarget();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi
    public boolean Tgh() {
        CQU cqu;
        return (this.Gm == 206 || ((cqu = this.ABk) != null && cqu.hasMessages(100))) && !this.zn;
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi
    public boolean ac() {
        return ABk() || Tgh() || ROR();
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi
    public boolean ROR() {
        CQU cqu;
        return ((this.Gm != 207 && !this.zn) || (cqu = this.ABk) == null || cqu.hasMessages(100)) ? false : true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi
    public boolean Sf() {
        return this.WAv;
    }

    public boolean ABk() {
        return this.Gm == 205;
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi
    public boolean cJ() {
        return this.Gm == 209;
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        int i = this.Gm;
        int i2 = message.what;
        if (this.Tgh != null) {
            try {
                switch (message.what) {
                    case 100:
                        if (this.Gm == 205 || this.Gm == 207 || this.Gm == 209) {
                            this.Tgh.fl();
                            this.tP = SystemClock.elapsedRealtime();
                            this.Gm = LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE;
                            if (this.zc > 0) {
                                this.Tgh.Qhi(this.zc, this.CJ);
                                this.zc = -1L;
                            }
                            if (this.Eh != null) {
                                cJ(this.aP);
                                return;
                            }
                            return;
                        }
                        break;
                    case 101:
                        if (this.iMK) {
                            this.pA += this.HzH;
                        }
                        this.iMK = false;
                        this.HzH = 0L;
                        this.hpZ = Long.MIN_VALUE;
                        if (this.Gm == 206 || this.Gm == 207 || this.Gm == 209) {
                            this.Tgh.ROR();
                            this.Gm = LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE;
                            this.zn = false;
                            for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
                                if (weakReference != null && weakReference.get() != null) {
                                    weakReference.get().CJ(this);
                                }
                            }
                            return;
                        }
                        break;
                    case 102:
                        this.Tgh.zc();
                        this.Gm = 201;
                        return;
                    case 103:
                        try {
                            bxS();
                        } catch (Throwable unused) {
                        }
                        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference2 : this.pM) {
                            if (weakReference2 != null && weakReference2.get() != null) {
                                weakReference2.get().ac(this);
                            }
                        }
                        this.Gm = LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE;
                        return;
                    case 104:
                        if (this.Gm == 202 || this.Gm == 208) {
                            this.Tgh.Sf();
                            return;
                        }
                        break;
                    case 105:
                        if (this.Gm == 205 || this.Gm == 206 || this.Gm == 208 || this.Gm == 207 || this.Gm == 209) {
                            this.Tgh.Tgh();
                            this.Gm = LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE;
                            return;
                        }
                        break;
                    case 106:
                        if (this.Gm == 206 || this.Gm == 207 || this.Gm == 209) {
                            this.Tgh.Qhi(((Long) message.obj).longValue(), this.CJ);
                            return;
                        }
                        break;
                    case 107:
                        MQ();
                        if (this.Gm == 201 || this.Gm == 203) {
                            ac acVar = (ac) message.obj;
                            if (TextUtils.isEmpty(acVar.cJ())) {
                                acVar.Qhi(com.bykv.vk.openvk.component.video.api.ac.cJ());
                            }
                            File file = new File(acVar.cJ(), acVar.iMK());
                            if (file.exists()) {
                                file.getAbsolutePath();
                                if (com.bykv.vk.openvk.component.video.api.ac.ac()) {
                                    cJ(file.getAbsolutePath());
                                } else {
                                    this.Tgh.Qhi(file.getAbsolutePath());
                                }
                            } else {
                                acVar.ABk();
                                int i3 = acVar.cJ;
                                this.Tgh.Qhi(acVar);
                                acVar.ABk();
                            }
                            this.Gm = 202;
                            return;
                        }
                        break;
                    case 108:
                    case 109:
                    default:
                        return;
                    case 110:
                        this.Tgh.Qhi((SurfaceHolder) message.obj);
                        this.Tgh.cJ(true);
                        this.NFd.await(1L, TimeUnit.SECONDS);
                        NFd();
                        return;
                    case 111:
                        this.lG = new Surface((SurfaceTexture) message.obj);
                        this.Tgh.Qhi(this.lG);
                        this.Tgh.cJ(true);
                        this.NFd.await(1L, TimeUnit.SECONDS);
                        NFd();
                        return;
                }
                this.Gm = 200;
                if (this.Sf) {
                    return;
                }
                com.bykv.vk.openvk.component.video.api.ac.Qhi qhi = new com.bykv.vk.openvk.component.video.api.ac.Qhi(308, i2);
                qhi.Qhi(i + "," + i2);
                for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference3 : this.pM) {
                    if (weakReference3 != null && weakReference3.get() != null) {
                        weakReference3.get().Qhi(this, qhi);
                    }
                }
                this.Sf = true;
            } catch (Throwable unused2) {
            }
        }
    }

    private void cJ(String str) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.Tgh.Qhi(fileInputStream.getFD());
        fileInputStream.close();
    }

    private void bxS() {
        if (this.Tgh == null) {
            return;
        }
        try {
            this.Tgh.zc();
        } catch (Throwable unused) {
        }
        this.Tgh.Qhi((hpZ.cJ) null);
        this.Tgh.Qhi((hpZ.Sf) null);
        this.Tgh.Qhi((hpZ.Qhi) null);
        this.Tgh.Qhi((hpZ.fl) null);
        this.Tgh.Qhi((hpZ.ac) null);
        this.Tgh.Qhi((hpZ.Tgh) null);
        this.Tgh.Qhi((hpZ.ROR) null);
        try {
            this.Tgh.Gm();
        } catch (Throwable unused2) {
        }
    }

    private void Dww() {
        CQU cqu = this.ABk;
        if (cqu == null || cqu.getLooper() == null) {
            return;
        }
        this.ABk.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.6
            @Override // java.lang.Runnable
            public void run() {
                if (HzH.this.ABk == null || HzH.this.ABk.getLooper() == null) {
                    return;
                }
                try {
                    com.bytedance.sdk.component.Sf.Qhi.Qhi.Qhi().Qhi(HzH.this.ABk);
                    HzH.this.ABk = null;
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ.Qhi
    public void Qhi(hpZ hpz, int i) {
        if (this.Tgh != hpz) {
            return;
        }
        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().cJ(this, i);
            }
        }
    }

    private void CQU() {
        SparseIntArray sparseIntArray = Dww;
        Integer valueOf = Integer.valueOf(sparseIntArray.get(this.EBS));
        if (valueOf == null) {
            sparseIntArray.put(this.EBS, 1);
        } else {
            sparseIntArray.put(this.EBS, valueOf.intValue() + 1);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ.cJ
    public void Qhi(hpZ hpz) {
        this.Gm = LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE;
        Dww.delete(this.EBS);
        CQU cqu = this.ABk;
        if (cqu != null) {
            cqu.removeCallbacks(this.Jma);
        }
        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Qhi(this);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ.ac
    public boolean Qhi(hpZ hpz, int i, int i2) {
        CQU();
        this.Gm = 200;
        CQU cqu = this.ABk;
        if (cqu != null) {
            cqu.removeCallbacks(this.Jma);
        }
        if (Qhi(i, i2)) {
            Dww();
        }
        if (this.lB.get()) {
            this.lB.set(false);
            com.bykv.vk.openvk.component.video.api.ac.Qhi qhi = new com.bykv.vk.openvk.component.video.api.ac.Qhi(i, i2);
            for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().Qhi(this, qhi);
                }
            }
            return true;
        }
        return true;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ.fl
    public boolean cJ(hpZ hpz, int i, int i2) {
        if (this.Tgh != hpz) {
            return false;
        }
        if (i2 == -1004) {
            com.bykv.vk.openvk.component.video.api.ac.Qhi qhi = new com.bykv.vk.openvk.component.video.api.ac.Qhi(i, i2);
            for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().Qhi(this, qhi);
                }
            }
        }
        cJ(i, i2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(int i, int i2) {
        if (i == 701) {
            this.es = SystemClock.elapsedRealtime();
            this.ac++;
            for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().Qhi(this, Integer.MAX_VALUE, 0, 0);
                }
            }
            new Object[]{"bufferCount = ", Integer.valueOf(this.ac)};
        } else if (i == 702) {
            if (this.es > 0) {
                this.yN += SystemClock.elapsedRealtime() - this.es;
                this.es = 0L;
            }
            for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference2 : this.pM) {
                if (weakReference2 != null && weakReference2.get() != null) {
                    weakReference2.get().Qhi((com.bykv.vk.openvk.component.video.api.Qhi) this, Integer.MAX_VALUE);
                }
            }
            new Object[]{"bufferCount = ", Integer.valueOf(this.ac), " mBufferTotalTime = ", Long.valueOf(this.yN)};
        } else if (this.FQ && i == 3) {
            NFd();
            pM();
            cJ(this.aP);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ.Tgh
    public void cJ(hpZ hpz) {
        if (Sf()) {
            return;
        }
        this.Gm = LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE;
        try {
            ac acVar = this.Eh;
            if (acVar != null) {
                float zc = acVar.zc();
                if (zc > 0.0f) {
                    cJ cJVar = new cJ();
                    cJVar.Qhi(zc);
                    this.Tgh.Qhi(cJVar);
                }
            }
        } catch (Throwable unused) {
        }
        if (this.ABk != null) {
            if (this.zn) {
                Eh();
            } else {
                CQU cqu = this.ABk;
                cqu.sendMessage(cqu.obtainMessage(100, -1, -1));
            }
        }
        Dww.delete(this.EBS);
        boolean z = this.FQ;
        boolean z2 = this.MQ;
        if (!z && !z2) {
            pM();
            this.MQ = true;
        }
        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().cJ(this);
            }
        }
    }

    private void pM() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.tP;
        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Qhi(this, elapsedRealtime);
            }
        }
        this.fl = true;
    }

    private void Eh() {
        CQU cqu = this.ABk;
        if (cqu != null) {
            cqu.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        HzH.this.Tgh.ROR();
                        HzH.this.Gm = LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE;
                        HzH.this.zn = false;
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ.ROR
    public void ac(hpZ hpz) {
        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Qhi((com.bykv.vk.openvk.component.video.api.Qhi) this, true);
            }
        }
    }

    private void Qhi(Runnable runnable) {
        try {
            if (this.qMt == null) {
                this.qMt = new ArrayList<>();
            }
            this.qMt.add(runnable);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private void aP() {
        if (this.hm) {
            return;
        }
        this.hm = true;
        Iterator it = new ArrayList(this.qMt).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.qMt.clear();
        this.hm = false;
    }

    private void NFd() {
        ArrayList<Runnable> arrayList = this.qMt;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        aP();
    }

    private void sDy() {
        ArrayList<Runnable> arrayList = this.qMt;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.qMt.clear();
    }

    private void cJ(Runnable runnable) {
        if (runnable == null || Sf()) {
            return;
        }
        if (!this.WAv) {
            runnable.run();
        } else {
            Qhi(runnable);
        }
    }

    public void cJ(final boolean z) {
        CQU cqu;
        if (Sf() || (cqu = this.ABk) == null) {
            return;
        }
        cqu.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.CJ.HzH.8
            @Override // java.lang.Runnable
            public void run() {
                if (!HzH.this.Sf() && HzH.this.Tgh != null) {
                    try {
                        HzH.this.aP = z;
                        HzH.this.Tgh.CJ(z);
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    public long iMK() {
        if (this.iMK) {
            long j = this.HzH;
            if (j > 0) {
                return this.pA + j;
            }
        }
        return this.pA;
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi
    public int CJ() {
        if (this.Tgh == null || Sf()) {
            return 0;
        }
        return this.Tgh.ABk();
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi
    public int fl() {
        if (this.Tgh == null || Sf()) {
            return 0;
        }
        return this.Tgh.iMK();
    }

    public int pA() {
        return this.ac;
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.CJ.hpZ.Sf
    public void Qhi(hpZ hpz, int i, int i2, int i3, int i4) {
        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Qhi((com.bykv.vk.openvk.component.video.api.Qhi) this, i, i2);
            }
        }
    }

    public long hpZ() {
        long j = this.kYc;
        if (j != 0) {
            return j;
        }
        if (this.Gm == 206 || this.Gm == 207) {
            try {
                this.kYc = this.Tgh.WAv();
            } catch (Throwable unused) {
            }
        }
        return this.kYc;
    }

    public long HzH() {
        if (Sf()) {
            return 0L;
        }
        if (this.Gm == 206 || this.Gm == 207) {
            try {
                return this.Tgh.hm();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    public void Qhi(Qhi.InterfaceC0166Qhi interfaceC0166Qhi) {
        if (interfaceC0166Qhi == null) {
            return;
        }
        for (WeakReference<Qhi.InterfaceC0166Qhi> weakReference : this.pM) {
            if (weakReference != null && weakReference.get() == interfaceC0166Qhi) {
                return;
            }
        }
        this.pM.add(new WeakReference<>(interfaceC0166Qhi));
    }

    public void Qhi(int i) {
        if (Sf()) {
            return;
        }
        this.sDy = i;
    }

    public SurfaceHolder kYc() {
        return this.cJ;
    }

    public SurfaceTexture tP() {
        return this.Qhi;
    }

    public void cJ(int i) {
        this.CJ = i;
    }
}
