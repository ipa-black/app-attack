package com.bytedance.sdk.component.fl.ac;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import com.bytedance.sdk.component.fl.CJ.iMK;
import com.bytedance.sdk.component.fl.CJ.pA;
import com.bytedance.sdk.component.fl.Gm;
import com.bytedance.sdk.component.fl.HzH;
import com.bytedance.sdk.component.fl.WAv;
import com.bytedance.sdk.component.fl.qMt;
import com.bytedance.sdk.component.fl.zc;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: ImageRequest.java */
/* loaded from: classes2.dex */
public class ac implements WAv {
    private volatile boolean ABk;
    private String CJ;
    private com.bytedance.sdk.component.fl.cJ CQU;
    private com.bytedance.sdk.component.fl.ac.Qhi Dww;
    private int EBS;
    private int Eh;
    private int Gm;
    private int HzH;
    private boolean MQ;
    private ExecutorService NFd;
    Future<?> Qhi;
    private Bitmap.Config ROR;
    private int Sf;
    private ImageView.ScaleType Tgh;
    private com.bytedance.sdk.component.fl.hm WAv;
    private boolean aP;
    private String ac;
    private ROR bxS;
    private String cJ;
    private HzH fl;
    private int hm;
    private qMt hpZ;
    private boolean iMK;
    private Queue<pA> kYc;
    private com.bytedance.sdk.component.fl.pA lB;
    private boolean pA;
    private int pM;
    private com.bytedance.sdk.component.fl.Sf qMt;
    private boolean sDy;
    private final Handler tP;
    private WeakReference<ImageView> zc;

    private ac(cJ cJVar) {
        this.kYc = new LinkedBlockingQueue();
        this.tP = new Handler(Looper.getMainLooper());
        this.MQ = true;
        this.cJ = cJVar.CJ;
        this.fl = new Qhi(cJVar.Qhi);
        this.zc = new WeakReference<>(cJVar.cJ);
        this.Tgh = cJVar.fl;
        this.ROR = cJVar.Tgh;
        this.Sf = cJVar.ROR;
        this.hm = cJVar.Sf;
        this.Gm = cJVar.hm;
        this.HzH = cJVar.WAv;
        this.hpZ = cJVar.Gm;
        this.CQU = Qhi(cJVar);
        if (!TextUtils.isEmpty(cJVar.ac)) {
            cJ(cJVar.ac);
            Qhi(cJVar.ac);
        }
        this.iMK = cJVar.zc;
        this.pA = cJVar.ABk;
        this.bxS = cJVar.hpZ;
        this.WAv = cJVar.HzH;
        this.Eh = cJVar.tP;
        this.pM = cJVar.kYc;
        this.NFd = cJVar.qMt;
        this.aP = cJVar.MQ;
        this.sDy = cJVar.EBS;
        this.lB = cJVar.bxS;
        this.kYc.add(new com.bytedance.sdk.component.fl.CJ.hm());
    }

    private com.bytedance.sdk.component.fl.cJ Qhi(cJ cJVar) {
        if (cJVar.pA != null) {
            return cJVar.pA;
        }
        if (!TextUtils.isEmpty(cJVar.iMK)) {
            return com.bytedance.sdk.component.fl.ac.Qhi.Qhi.Qhi(new File(cJVar.iMK));
        }
        return com.bytedance.sdk.component.fl.ac.Qhi.Qhi.ROR();
    }

    public int ROR() {
        return this.pM;
    }

    public int Sf() {
        return this.Eh;
    }

    @Override // com.bytedance.sdk.component.fl.WAv
    public String Qhi() {
        return this.cJ;
    }

    public HzH hm() {
        return this.fl;
    }

    public String WAv() {
        return this.CJ;
    }

    public void Qhi(String str) {
        this.CJ = str;
    }

    @Override // com.bytedance.sdk.component.fl.WAv
    public String fl() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.fl.WAv
    public Bitmap.Config Tgh() {
        return this.ROR;
    }

    public void cJ(String str) {
        WeakReference<ImageView> weakReference = this.zc;
        if (weakReference != null && weakReference.get() != null) {
            this.zc.get().setTag(1094453505, str);
        }
        this.ac = str;
    }

    @Override // com.bytedance.sdk.component.fl.WAv
    public ImageView.ScaleType CJ() {
        return this.Tgh;
    }

    public Bitmap.Config Gm() {
        return this.ROR;
    }

    @Override // com.bytedance.sdk.component.fl.WAv
    public int cJ() {
        return this.Sf;
    }

    @Override // com.bytedance.sdk.component.fl.WAv
    public int ac() {
        return this.hm;
    }

    public int zc() {
        return this.Gm;
    }

    public boolean ABk() {
        return this.iMK;
    }

    public boolean iMK() {
        return this.pA;
    }

    public void Qhi(boolean z) {
        this.MQ = z;
    }

    public boolean pA() {
        return this.MQ;
    }

    public com.bytedance.sdk.component.fl.Sf hpZ() {
        return this.qMt;
    }

    public void Qhi(com.bytedance.sdk.component.fl.Sf sf) {
        this.qMt = sf;
    }

    public int HzH() {
        return this.EBS;
    }

    public void Qhi(int i) {
        this.EBS = i;
    }

    public com.bytedance.sdk.component.fl.ac.Qhi kYc() {
        return this.Dww;
    }

    public void Qhi(com.bytedance.sdk.component.fl.ac.Qhi qhi) {
        this.Dww = qhi;
    }

    public ROR tP() {
        return this.bxS;
    }

    public com.bytedance.sdk.component.fl.cJ MQ() {
        return this.CQU;
    }

    public boolean Qhi(pA pAVar) {
        if (this.ABk) {
            return false;
        }
        return this.kYc.add(pAVar);
    }

    public boolean qMt() {
        return this.aP;
    }

    public com.bytedance.sdk.component.fl.pA EBS() {
        return this.lB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WAv Dww() {
        ROR ror;
        try {
            ror = this.bxS;
        } catch (Exception e2) {
            Log.e("ImageRequest", e2.getMessage());
        }
        if (ror == null) {
            HzH hzH = this.fl;
            if (hzH != null) {
                hzH.Qhi(1005, "not init !", null);
            }
            return this;
        }
        ExecutorService Tgh = this.NFd == null ? ror.Tgh() : null;
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.fl.ac.ac.1
            @Override // java.lang.Runnable
            public void run() {
                pA pAVar;
                while (!ac.this.ABk && (pAVar = (pA) ac.this.kYc.poll()) != null) {
                    try {
                        if (ac.this.hpZ != null) {
                            ac.this.hpZ.Qhi(pAVar.Qhi(), ac.this);
                        }
                        pAVar.Qhi(ac.this);
                        if (ac.this.hpZ != null) {
                            ac.this.hpZ.cJ(pAVar.Qhi(), ac.this);
                        }
                    } catch (Throwable th) {
                        ac.this.Qhi(2000, th.getMessage(), th);
                        if (ac.this.hpZ != null) {
                            ac.this.hpZ.cJ("exception", ac.this);
                            return;
                        }
                        return;
                    }
                }
                if (ac.this.ABk) {
                    ac.this.Qhi(1003, "canceled", null);
                }
            }
        };
        if (this.sDy) {
            runnable.run();
        } else {
            ExecutorService executorService = this.NFd;
            if (executorService != null) {
                this.Qhi = executorService.submit(runnable);
            } else if (Tgh != null) {
                this.Qhi = Tgh.submit(runnable);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(int i, String str, Throwable th) {
        new iMK(i, str, th).Qhi(this);
        this.kYc.clear();
    }

    public String bxS() {
        return fl() + zc();
    }

    /* compiled from: ImageRequest.java */
    /* loaded from: classes2.dex */
    public static class cJ implements Gm {
        private boolean ABk;
        private String CJ;
        private boolean EBS;
        private qMt Gm;
        private com.bytedance.sdk.component.fl.hm HzH;
        private boolean MQ;
        private HzH Qhi;
        private int ROR;
        private int Sf;
        private Bitmap.Config Tgh;
        private String ac;
        private com.bytedance.sdk.component.fl.pA bxS;
        private ImageView cJ;
        private ImageView.ScaleType fl;
        private ROR hpZ;
        private String iMK;
        private int kYc;
        private com.bytedance.sdk.component.fl.cJ pA;
        private ExecutorService qMt;
        private int tP;
        private boolean zc;
        private int hm = 1;
        private int WAv = 5;

        public cJ(ROR ror) {
            this.hpZ = ror;
        }

        public Gm ac(String str) {
            this.CJ = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm Qhi(String str) {
            this.ac = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm Qhi(ImageView.ScaleType scaleType) {
            this.fl = scaleType;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm Qhi(Bitmap.Config config) {
            this.Tgh = config;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm Qhi(int i) {
            this.ROR = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm cJ(int i) {
            this.Sf = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm ac(int i) {
            this.hm = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm Qhi(qMt qmt) {
            this.Gm = qmt;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm Qhi(boolean z) {
            this.ABk = z;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm cJ(String str) {
            this.iMK = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public WAv Qhi(HzH hzH, int i) {
            this.WAv = i;
            return Qhi(hzH);
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public WAv Qhi(HzH hzH) {
            this.Qhi = hzH;
            return new ac(this).Dww();
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public WAv Qhi(ImageView imageView) {
            this.cJ = imageView;
            return new ac(this).Dww();
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm Qhi(com.bytedance.sdk.component.fl.hm hmVar) {
            this.HzH = hmVar;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm CJ(int i) {
            this.kYc = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.fl.Gm
        public Gm fl(int i) {
            this.tP = i;
            return this;
        }
    }

    /* compiled from: ImageRequest.java */
    /* loaded from: classes2.dex */
    private class Qhi implements HzH {
        private HzH cJ;

        public Qhi(HzH hzH) {
            this.cJ = hzH;
        }

        @Override // com.bytedance.sdk.component.fl.HzH
        public void Qhi(final zc zcVar) {
            final ImageView imageView = (ImageView) ac.this.zc.get();
            if (imageView != null && ac.this.Gm != 3 && Qhi(imageView) && (zcVar.cJ() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) zcVar.cJ();
                ac.this.tP.post(new Runnable() { // from class: com.bytedance.sdk.component.fl.ac.ac.Qhi.1
                    @Override // java.lang.Runnable
                    public void run() {
                        imageView.setImageBitmap(bitmap);
                    }
                });
            }
            try {
                if (ac.this.WAv != null && (zcVar.cJ() instanceof Bitmap)) {
                    com.bytedance.sdk.component.fl.hm hmVar = ac.this.WAv;
                    Bitmap bitmap2 = (Bitmap) zcVar.cJ();
                    Bitmap bitmap3 = bitmap2;
                    Bitmap Qhi = hmVar.Qhi(bitmap2);
                    if (Qhi != null) {
                        zcVar.Qhi(Qhi);
                    }
                }
            } catch (Throwable unused) {
            }
            if (ac.this.HzH == 5) {
                ac.this.tP.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.component.fl.ac.ac.Qhi.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.cJ != null) {
                            Qhi.this.cJ.Qhi(zcVar);
                        }
                    }
                });
                return;
            }
            HzH hzH = this.cJ;
            if (hzH != null) {
                hzH.Qhi(zcVar);
            }
        }

        private boolean Qhi(ImageView imageView) {
            Object tag;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(ac.this.ac)) ? false : true;
        }

        @Override // com.bytedance.sdk.component.fl.HzH
        public void Qhi(final int i, final String str, final Throwable th) {
            if (ac.this.HzH == 5) {
                ac.this.tP.post(new Runnable() { // from class: com.bytedance.sdk.component.fl.ac.ac.Qhi.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.cJ != null) {
                            Qhi.this.cJ.Qhi(i, str, th);
                        }
                    }
                });
                return;
            }
            HzH hzH = this.cJ;
            if (hzH != null) {
                hzH.Qhi(i, str, th);
            }
        }
    }
}
