package com.bytedance.sdk.openadsdk.core.video.Qhi;

import android.app.Activity;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderTextureView;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.CJ.MQ;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.ROR.ROR;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.ac.ac;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh;
import com.bytedance.sdk.openadsdk.core.widget.Tgh;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: BaseController.java */
/* loaded from: classes2.dex */
public abstract class Qhi implements fl, CQU.Qhi, com.bytedance.sdk.openadsdk.core.video.nativevideo.Qhi {
    protected SurfaceHolder CJ;
    protected final ViewGroup CQU;
    protected boolean Dww;
    protected fl.Qhi Eh;
    protected final Context Gm;
    protected long NFd;
    protected Tgh ROR;
    protected final tP Sf;
    protected ac Tgh;
    protected ROR aP;
    protected cJ bxS;
    protected SurfaceTexture fl;
    protected boolean hpZ;
    private long lB;
    protected WeakReference<fl.cJ> pM;
    protected boolean qMt;
    protected String Qhi = "TTAD.VideoController";
    protected final int cJ = 100;
    protected final CQU ac = new CQU(Looper.getMainLooper(), this);
    protected long hm = 0;
    protected long WAv = 0;
    protected final List<Runnable> zc = new ArrayList();
    protected boolean ABk = false;
    protected boolean iMK = false;
    protected boolean pA = true;
    protected boolean HzH = false;
    protected boolean kYc = false;
    protected boolean tP = false;
    protected AtomicBoolean MQ = new AtomicBoolean(false);
    protected boolean EBS = true;
    protected Runnable sDy = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi.1
        @Override // java.lang.Runnable
        public void run() {
            new Object[]{"resumeVideo: run ", Boolean.valueOf(Qhi.this.ABk)};
            Qhi.this.qMt();
        }
    };
    private long lG = 0;
    private boolean Jma = true;
    private int js = 1;
    private final AtomicBoolean zn = new AtomicBoolean(false);

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean HzH() {
        return true;
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
    }

    public void Qhi(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view, boolean z) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(fl.InterfaceC0165fl interfaceC0165fl) {
    }

    public Qhi(Context context, tP tPVar, ViewGroup viewGroup) {
        this.Sf = tPVar;
        this.Gm = context;
        this.CQU = viewGroup;
        this.Qhi += hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void tP() {
        if (this.Tgh == null) {
            return;
        }
        if (kYc()) {
            SurfaceTexture surfaceTexture = this.fl;
            if (surfaceTexture == null || surfaceTexture == this.Tgh.tP()) {
                return;
            }
            this.Tgh.Qhi(this.fl);
            return;
        }
        SurfaceHolder surfaceHolder = this.CJ;
        if (surfaceHolder == null || surfaceHolder == this.Tgh.kYc()) {
            return;
        }
        this.Tgh.Qhi(this.CJ);
    }

    private boolean kYc() {
        Tgh tgh = this.ROR;
        if (tgh != null) {
            return tgh.ABk() instanceof SSRenderTextureView;
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public long fl() {
        return this.hm;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(long j) {
        this.hm = j;
        this.WAv = Math.max(this.WAv, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(Runnable runnable) {
        if (this.ROR.EBS() && this.ABk) {
            runnable.run();
        } else {
            cJ(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cJ(Runnable runnable) {
        this.zc.add(runnable);
    }

    protected void MQ() {
        if (this.zc.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.zc).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.zc.clear();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public void Qhi(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, SurfaceHolder surfaceHolder) {
        this.ABk = true;
        this.CJ = surfaceHolder;
        ac acVar2 = this.Tgh;
        if (acVar2 == null) {
            return;
        }
        acVar2.Qhi(surfaceHolder);
        MQ();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public void cJ(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, SurfaceHolder surfaceHolder) {
        this.ABk = false;
        this.CJ = null;
        ac acVar2 = this.Tgh;
        if (acVar2 != null) {
            acVar2.Qhi(false);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public void Qhi(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, SurfaceTexture surfaceTexture) {
        this.ABk = true;
        this.fl = surfaceTexture;
        ac acVar2 = this.Tgh;
        if (acVar2 != null) {
            acVar2.Qhi(surfaceTexture);
            this.Tgh.Qhi(this.ABk);
        }
        MQ();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public void cJ(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, SurfaceTexture surfaceTexture) {
        this.ABk = false;
        ac acVar2 = this.Tgh;
        if (acVar2 != null) {
            acVar2.Qhi(false);
        }
        this.fl = null;
        MQ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void qMt() {
        this.ac.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi.2
            @Override // java.lang.Runnable
            public void run() {
                if (Qhi.this.Tgh != null) {
                    new Object[]{"resumeVideo: execResumePlay", Boolean.valueOf(Qhi.this.ABk)};
                    Qhi.this.Tgh.WAv();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public com.bykv.vk.openvk.component.video.api.Qhi zc() {
        return this.Tgh;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    /* renamed from: EBS */
    public final Tgh ABk() {
        return this.ROR;
    }

    public boolean bxS() {
        return this.pA;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(boolean z) {
        this.pA = z;
        Tgh tgh = this.ROR;
        if (tgh != null) {
            tgh.CJ(z);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void cJ(long j) {
        this.lG = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean Gm() {
        return this.HzH;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void ac(long j) {
        this.NFd = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final long Tgh() {
        ac acVar = this.Tgh;
        if (acVar == null) {
            return 0L;
        }
        return acVar.iMK();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final int ROR() {
        ac acVar = this.Tgh;
        if (acVar == null) {
            return 0;
        }
        return acVar.pA();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean iMK() {
        return this.hpZ;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final void cJ(final boolean z) {
        this.hpZ = z;
        ac acVar = this.Tgh;
        if (acVar != null) {
            acVar.cJ(z);
        }
        if (this.aP != null) {
            if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
                this.aP.Qhi(z);
            } else {
                this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Qhi.this.aP.Qhi(z);
                    }
                });
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final long Sf() {
        ac acVar = this.Tgh;
        if (acVar == null) {
            return 0L;
        }
        return acVar.hpZ();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean pA() {
        return this.iMK;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final void ac(boolean z) {
        this.iMK = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Tgh(boolean z) {
        this.tP = z;
    }

    public boolean Dww() {
        return this.Jma;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final void CJ(boolean z) {
        this.Jma = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void cJ(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        cJ cJVar = (cJ) acVar;
        this.bxS = cJVar;
        this.hpZ = cJVar.Sf();
        acVar.CJ(String.valueOf(this.Sf.Hy()));
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final boolean hpZ() {
        return this.Dww;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final int WAv() {
        return com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(this.WAv, this.NFd);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void fl(boolean z) {
        this.EBS = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public final void cJ(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view) {
        cJ(acVar, view, false, false);
    }

    public final void cJ(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view, boolean z, boolean z2) {
        Tgh(!this.tP);
        Context context = this.Gm;
        if (context != null && (context instanceof Activity)) {
            if (this.tP) {
                Qhi(z ? 8 : 0);
                Tgh tgh = this.ROR;
                if (tgh != null) {
                    tgh.Qhi(this.CQU);
                    this.ROR.ac(false);
                }
            } else {
                Qhi(1);
                Tgh tgh2 = this.ROR;
                if (tgh2 != null) {
                    tgh2.cJ(this.CQU);
                    this.ROR.ac(false);
                }
            }
            WeakReference<fl.cJ> weakReference = this.pM;
            fl.cJ cJVar = weakReference != null ? weakReference.get() : null;
            if (cJVar != null) {
                cJVar.Qhi(this.tP);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final void Qhi(fl.cJ cJVar) {
        this.pM = new WeakReference<>(cJVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public final void fl(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view) {
        Qhi(acVar, view, false);
    }

    public final boolean CQU() {
        ac acVar = this.Tgh;
        return acVar == null || acVar.cJ();
    }

    public final boolean pM() {
        ac acVar = this.Tgh;
        return acVar != null && acVar.Tgh();
    }

    public final void Qhi(int i) {
        Context context = this.Gm;
        if (context == null) {
            return;
        }
        boolean z = i == 0 || i == 8;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            try {
                activity.setRequestedOrientation(i);
            } catch (Throwable unused) {
            }
            if (!z) {
                activity.getWindow().setFlags(1024, 1024);
            } else {
                activity.getWindow().clearFlags(1024);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public final void ac(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view) {
        Tgh tgh = this.ROR;
        if (tgh != null) {
            tgh.hm();
        }
        Qhi(true, 3);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public final void Qhi(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view, boolean z, boolean z2) {
        if (this.pA) {
            Qhi();
        }
        if (z && !this.pA && !CQU()) {
            this.ROR.cJ(!pM(), false);
            this.ROR.Qhi(z2, true, false);
        }
        ac acVar2 = this.Tgh;
        if (acVar2 != null && acVar2.Tgh()) {
            this.ROR.Tgh();
            this.ROR.fl();
            return;
        }
        this.ROR.Tgh();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public final void CJ(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view) {
        if (this.tP) {
            Tgh(false);
            Tgh tgh = this.ROR;
            if (tgh != null) {
                tgh.cJ(this.CQU);
            }
            Qhi(1);
            return;
        }
        Qhi(true, 3);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public final void Qhi(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, int i, boolean z) {
        if (this.Gm == null) {
            return;
        }
        long j = this.NFd;
        long j2 = (((float) (i * j)) * 1.0f) / 100.0f;
        if (j > 0) {
            this.lB = (int) j2;
        } else {
            this.lB = 0L;
        }
        Tgh tgh = this.ROR;
        if (tgh != null) {
            tgh.Qhi(this.lB);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public final void Qhi(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, int i) {
        if (this.Tgh == null) {
            return;
        }
        Qhi(this.lB, ac(i));
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public final void cJ(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, int i) {
        Tgh tgh = this.ROR;
        if (tgh != null) {
            tgh.Tgh();
        }
    }

    private void Qhi(long j, boolean z) {
        if (this.Tgh == null) {
            return;
        }
        if (z) {
            lG();
        }
        this.Tgh.Qhi(j);
    }

    private boolean ac(int i) {
        return this.ROR.cJ(i);
    }

    private void lG() {
        Tgh tgh = this.ROR;
        if (tgh != null) {
            tgh.CJ(0);
            this.ROR.Qhi(false, false);
            this.ROR.ac(false);
            this.ROR.fl();
            this.ROR.ROR();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Qhi(Sf sf) {
        if (this.MQ.compareAndSet(false, true)) {
            ROR ror = this.aP;
            if (ror != null) {
                ror.Qhi(Sf(), iMK());
            }
            hpZ.Qhi qhi = new hpZ.Qhi();
            qhi.Qhi(Dww());
            qhi.ac(Sf());
            com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(HzH.Qhi(), this.ROR, qhi, sf);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Eh() {
        hpZ.Qhi qhi = new hpZ.Qhi();
        qhi.Qhi(fl());
        qhi.ac(Sf() / sDy());
        qhi.cJ(Tgh());
        com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.cJ(ABk(), qhi);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void aP() {
        hpZ.Qhi qhi = new hpZ.Qhi();
        qhi.Qhi(fl());
        qhi.ac(Sf() / sDy());
        qhi.cJ(Tgh());
        com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(this.ROR, qhi);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void cJ(Sf sf) {
        hpZ.Qhi qhi = new hpZ.Qhi();
        qhi.Qhi(fl());
        qhi.ac(Sf() / sDy());
        qhi.cJ(Tgh());
        qhi.CJ(ROR());
        com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.cJ(this.ROR, qhi, sf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Qhi(com.bykv.vk.openvk.component.video.api.ac.Qhi qhi) {
        hpZ.Qhi qhi2 = new hpZ.Qhi();
        qhi2.cJ(Tgh());
        qhi2.ac(Sf() / sDy());
        qhi2.Qhi(fl());
        qhi2.Qhi(qhi);
        com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.ac(ABk(), qhi2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void NFd() {
        com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(this.Sf, this.ROR, this.bxS);
    }

    public int sDy() {
        return this.js;
    }

    public void cJ(int i) {
        this.js = i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final void Qhi(fl.Qhi qhi) {
        this.Eh = qhi;
    }

    /* compiled from: BaseController.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi$4  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] Qhi;

        static {
            int[] iArr = new int[Tgh.Qhi.values().length];
            Qhi = iArr;
            try {
                iArr[Tgh.Qhi.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Qhi[Tgh.Qhi.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Qhi[Tgh.Qhi.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.Qhi
    public final void Qhi(Tgh.Qhi qhi, String str) {
        int i = AnonymousClass4.Qhi[qhi.ordinal()];
        if (i == 1) {
            Qhi();
        } else if (i == 2) {
            ac();
        } else if (i != 3) {
        } else {
            cJ();
            this.HzH = false;
            this.kYc = true;
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final long hm() {
        return fl() + Tgh();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public final void Qhi() {
        ac acVar = this.Tgh;
        if (acVar != null) {
            acVar.Gm();
        }
        if (this.qMt || !this.MQ.get()) {
            return;
        }
        aP();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void lB() {
        com.bytedance.sdk.openadsdk.cJ.Qhi.fl.Qhi(com.bytedance.sdk.openadsdk.MQ.Qhi.Qhi(this.Sf.dI(), true, this.Sf), 5, this.Sf.HLI());
    }

    public final void CJ(long j) {
        this.hm = j;
        this.WAv = Math.max(this.WAv, j);
        com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh tgh = this.ROR;
        if (tgh != null) {
            tgh.Qhi();
        }
        ac acVar = this.Tgh;
        if (acVar != null) {
            acVar.Qhi(true, this.hm, this.hpZ);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(long j, long j2) {
        if (!this.zn.get() && com.bytedance.sdk.openadsdk.CJ.tP.Qhi().ac() && (j * 1.0d) / j2 > 0.3d) {
            this.zn.set(true);
            MQ.Qhi().Qhi("videoPercent30", this.Sf);
        }
    }
}
