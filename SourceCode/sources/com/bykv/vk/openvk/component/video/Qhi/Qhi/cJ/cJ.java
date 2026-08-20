package com.bykv.vk.openvk.component.video.Qhi.Qhi.cJ;

import android.content.Context;
import com.bykv.vk.openvk.component.video.api.fl.Qhi;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* compiled from: ReallyVideoPreload.java */
/* loaded from: classes2.dex */
public class cJ {
    private File CJ;
    private Context Qhi;
    private com.bykv.vk.openvk.component.video.api.ac.ac cJ;
    private File fl;
    private volatile boolean ac = false;
    private final List<Qhi.InterfaceC0167Qhi> Tgh = new ArrayList();
    private volatile boolean ROR = false;

    public cJ(Context context, com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        this.CJ = null;
        this.fl = null;
        this.Qhi = context;
        this.cJ = acVar;
        this.CJ = com.bykv.vk.openvk.component.video.Qhi.fl.cJ.cJ(acVar.cJ(), acVar.iMK());
        this.fl = com.bykv.vk.openvk.component.video.Qhi.fl.cJ.ac(acVar.cJ(), acVar.iMK());
    }

    public void Qhi(Qhi.InterfaceC0167Qhi interfaceC0167Qhi) {
        if (this.ROR) {
            synchronized (Qhi.InterfaceC0167Qhi.class) {
                this.Tgh.add(interfaceC0167Qhi);
            }
            return;
        }
        this.Tgh.add(interfaceC0167Qhi);
        if (cJ()) {
            this.cJ.ROR(1);
            Qhi(this.cJ, 200);
            ac.Qhi(this.cJ);
            return;
        }
        this.ROR = true;
        this.cJ.ROR(0);
        ac();
    }

    private boolean cJ() {
        if (this.fl.exists()) {
            return true;
        }
        if (!this.cJ.WAv()) {
            if (this.CJ.length() >= this.cJ.ac()) {
                return true;
            }
            if (this.cJ.Qhi() > 0 && this.CJ.length() >= this.cJ.Qhi()) {
                return true;
            }
        }
        return false;
    }

    private void ac() {
        zc.Qhi qhi;
        if (com.bykv.vk.openvk.component.video.api.ac.CJ() != null) {
            qhi = com.bykv.vk.openvk.component.video.api.ac.CJ().cJ();
        } else {
            qhi = new zc.Qhi("v_preload");
        }
        qhi.Qhi(this.cJ.hpZ(), TimeUnit.MILLISECONDS).cJ(this.cJ.HzH(), TimeUnit.MILLISECONDS).ac(this.cJ.kYc(), TimeUnit.MILLISECONDS);
        zc Qhi = qhi.Qhi();
        iMK.Qhi qhi2 = new iMK.Qhi();
        final long length = this.CJ.length();
        int ac = this.cJ.ac();
        boolean WAv = this.cJ.WAv();
        int Qhi2 = this.cJ.Qhi();
        if (Qhi2 > 0) {
            if (Qhi2 >= this.cJ.hm()) {
                WAv = true;
            } else {
                ac = Qhi2;
            }
        }
        qhi2.Qhi("videoPreload").Qhi(6);
        if (WAv) {
            qhi2.Qhi("RANGE", "bytes=" + length + "-").cJ(this.cJ.ABk()).Qhi().cJ();
        } else {
            qhi2.Qhi("RANGE", "bytes=" + length + "-" + ac).cJ(this.cJ.ABk()).Qhi().cJ();
        }
        Qhi.Qhi(qhi2.cJ()).Qhi(new com.bytedance.sdk.component.cJ.Qhi.ac() { // from class: com.bykv.vk.openvk.component.video.Qhi.Qhi.cJ.cJ.1
            @Override // com.bytedance.sdk.component.cJ.Qhi.ac
            public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ cJVar, IOException iOException) {
                cJ cJVar2 = cJ.this;
                cJVar2.Qhi(cJVar2.cJ, 601, iOException.getMessage());
                ac.Qhi(cJ.this.cJ);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:71:0x0176 A[Catch: all -> 0x018d, TryCatch #6 {all -> 0x018d, blocks: (B:69:0x0169, B:71:0x0176, B:72:0x017a), top: B:88:0x0169 }] */
            /* JADX WARN: Type inference failed for: r15v4 */
            @Override // com.bytedance.sdk.component.cJ.Qhi.ac
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ r21, com.bytedance.sdk.component.cJ.Qhi.hpZ r22) throws java.io.IOException {
                /*
                    Method dump skipped, instructions count: 455
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.Qhi.Qhi.cJ.cJ.AnonymousClass1.Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ, com.bytedance.sdk.component.cJ.Qhi.hpZ):void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public com.bykv.vk.openvk.component.video.api.ac.ac Qhi() {
        return this.cJ;
    }

    public void Qhi(boolean z) {
        this.ac = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar, int i) {
        synchronized (Qhi.InterfaceC0167Qhi.class) {
            for (Qhi.InterfaceC0167Qhi interfaceC0167Qhi : this.Tgh) {
                if (interfaceC0167Qhi != null) {
                    interfaceC0167Qhi.Qhi(acVar, i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar, int i, String str) {
        synchronized (Qhi.InterfaceC0167Qhi.class) {
            for (Qhi.InterfaceC0167Qhi interfaceC0167Qhi : this.Tgh) {
                if (interfaceC0167Qhi != null) {
                    interfaceC0167Qhi.Qhi(acVar, i, str);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(com.bykv.vk.openvk.component.video.api.ac.ac acVar, int i) {
        synchronized (Qhi.InterfaceC0167Qhi.class) {
            for (Qhi.InterfaceC0167Qhi interfaceC0167Qhi : this.Tgh) {
                if (interfaceC0167Qhi != null) {
                    interfaceC0167Qhi.cJ(acVar, i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ() {
        try {
            this.fl.delete();
            this.CJ.delete();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fl() {
        try {
            if (this.CJ.renameTo(this.fl)) {
                return;
            }
            throw new IOException("Error renaming file " + this.CJ + " to " + this.fl + " for completion!");
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
