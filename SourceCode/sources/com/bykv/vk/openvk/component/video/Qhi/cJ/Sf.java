package com.bykv.vk.openvk.component.video.Qhi.cJ;

import android.util.Log;
import com.bykv.vk.openvk.component.video.Qhi.cJ.ABk;
import com.bykv.vk.openvk.component.video.Qhi.cJ.WAv;
import com.bykv.vk.openvk.component.video.Qhi.cJ.cJ;
import com.bykv.vk.openvk.component.video.Qhi.cJ.hm;
import com.ironsource.mediationsdk.config.VersionInfo;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProxyTask.java */
/* loaded from: classes2.dex */
public class Sf extends com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi {
    private final Socket ABk;
    private volatile boolean HzH;
    private volatile com.bykv.vk.openvk.component.video.Qhi.cJ.cJ hpZ;
    private final ac iMK;
    private final fl pA;

    /* compiled from: ProxyTask.java */
    /* loaded from: classes2.dex */
    public interface ac {
        void Qhi(Sf sf);

        void cJ(Sf sf);
    }

    Sf(Qhi qhi) {
        super(qhi.Qhi, qhi.cJ);
        this.HzH = true;
        this.ABk = qhi.ac;
        this.iMK = qhi.CJ;
        this.pA = fl.ac();
    }

    private cJ Sf() {
        try {
            this.hm = WAv.Qhi(this.ABk.getInputStream());
            OutputStream outputStream = this.ABk.getOutputStream();
            com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.Qhi qhi = this.hm.ac.Qhi == 1 ? Tgh.Qhi : Tgh.cJ;
            if (qhi == null) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_ProxyTask", "cache is null");
                }
                return null;
            }
            this.Qhi = qhi;
            this.ROR = this.hm.ac.cJ;
            this.Sf = this.hm.ac.ac;
            this.WAv = new ABk(this.hm.ac.ROR);
            this.Tgh = this.hm.cJ;
            if (Tgh.ac) {
                Log.i("TAG_PROXY_ProxyTask", "request from MediaPlayer:    " + this.hm.toString());
            }
            return new cJ(outputStream, this.hm.ac.CJ);
        } catch (WAv.fl e2) {
            com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(this.ABk);
            if (Tgh.ac) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
            if (this.Qhi != null) {
                Boolean.valueOf(ROR());
            }
            String str = this.ROR;
            return null;
        } catch (IOException e3) {
            com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(this.ABk);
            if (Tgh.ac) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e3));
            }
            if (this.Qhi != null) {
                Boolean.valueOf(ROR());
            }
            String str2 = this.ROR;
            return null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi Qhi2;
        cJ Sf = Sf();
        if (Sf == null) {
            return;
        }
        ac acVar = this.iMK;
        if (acVar != null) {
            acVar.Qhi(this);
        }
        this.Qhi.Qhi(this.Sf);
        if (Tgh.Sf != 0 && ((Qhi2 = this.cJ.Qhi(this.Sf, this.hm.ac.Qhi)) == null || this.Qhi.ac(this.Sf).length() < Qhi2.ac)) {
            this.pA.Qhi(ROR(), this.Sf);
        }
        try {
            Qhi(Sf);
        } catch (com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi e2) {
            if (Tgh.ac) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
        } catch (Throwable th) {
            if (Tgh.ac) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(th));
            }
        }
        this.Qhi.cJ(this.Sf);
        this.pA.Qhi(ROR(), null);
        Qhi();
        com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(this.ABk);
        ac acVar2 = this.iMK;
        if (acVar2 != null) {
            acVar2.cJ(this);
        }
    }

    private boolean Qhi(cJ cJVar) throws com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi {
        while (this.WAv.Qhi()) {
            fl();
            ABk.Qhi cJ2 = this.WAv.cJ();
            try {
                Qhi(cJVar, cJ2);
                return true;
            } catch (com.bykv.vk.openvk.component.video.Qhi.cJ.ac.ac unused) {
                cJ2.Qhi();
                Boolean.valueOf(ROR());
                String str = this.ROR;
            } catch (com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ e2) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
                }
                return false;
            } catch (com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl e3) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e3));
                }
                return true;
            } catch (hm.Qhi e4) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e4));
                }
                this.HzH = false;
                Boolean.valueOf(ROR());
                String str2 = this.ROR;
            } catch (IOException e5) {
                if (e5 instanceof SocketTimeoutException) {
                    cJ2.cJ();
                }
                if (cJ()) {
                    if (Tgh.ac) {
                        if ("Canceled".equalsIgnoreCase(e5.getMessage())) {
                            Log.w("TAG_PROXY_ProxyTask", "okhttp call canceled");
                        } else {
                            Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e5));
                        }
                    }
                } else {
                    Boolean.valueOf(ROR());
                    String str3 = this.ROR;
                }
            } catch (Exception e6) {
                if (Tgh.ac) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e6));
                }
            }
        }
        return false;
    }

    private void Qhi(cJ cJVar, ABk.Qhi qhi) throws com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl, IOException, hm.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ {
        if (VersionInfo.GIT_BRANCH.equalsIgnoreCase(this.hm.Qhi.Qhi)) {
            cJ(cJVar, qhi);
        } else {
            ac(cJVar, qhi);
        }
    }

    private void cJ(cJ cJVar, ABk.Qhi qhi) throws IOException, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl {
        byte[] Qhi2 = Qhi(this.cJ.Qhi(this.Sf, this.hm.ac.Qhi), cJVar, qhi);
        if (Qhi2 == null) {
            return;
        }
        cJVar.Qhi(Qhi2, 0, Qhi2.length);
    }

    private void ac(cJ cJVar, ABk.Qhi qhi) throws hm.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl, IOException, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ {
        if (this.HzH) {
            File ac2 = this.Qhi.ac(this.Sf);
            long length = ac2.length();
            com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi Qhi2 = this.cJ.Qhi(this.Sf, this.hm.ac.Qhi);
            int cJ2 = cJVar.cJ();
            if (length > cJVar.cJ()) {
                if (Tgh.ac) {
                    Log.i("TAG_PROXY_ProxyTask", "cache hit, remainSize: " + (length - cJ2));
                }
                Qhi(Qhi2, ac2, cJVar, qhi);
                return;
            }
        } else {
            cJVar.cJ();
        }
        CJ(cJVar, qhi);
    }

    private byte[] Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi qhi, cJ cJVar, ABk.Qhi qhi2) throws IOException {
        if (qhi != null) {
            if (Tgh.ac) {
                Log.i("TAG_PROXY_ProxyTask", "get header from db");
            }
            return com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(qhi, cJVar.cJ()).getBytes(com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi);
        }
        com.bykv.vk.openvk.component.video.Qhi.cJ.fl.Qhi Qhi2 = Qhi(qhi2, 0, -1, VersionInfo.GIT_BRANCH);
        if (Qhi2 == null) {
            return null;
        }
        try {
            String Qhi3 = com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(Qhi2, false, false);
            if (Qhi3 != null) {
                throw new com.bykv.vk.openvk.component.video.Qhi.cJ.ac.ac(Qhi3 + ", rawKey: " + this.ROR + ", url: " + qhi2);
            }
            com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi Qhi4 = com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(Qhi2, this.cJ, this.Sf, this.hm.ac.Qhi);
            if (Tgh.ac) {
                Log.w("TAG_PROXY_ProxyTask", "get header from network");
            }
            return com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(Qhi4, cJVar.cJ()).getBytes(com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi);
        } finally {
            com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(Qhi2.CJ());
        }
    }

    private void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi qhi, File file, cJ cJVar, ABk.Qhi qhi2) throws IOException, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl, hm.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ {
        final com.bytedance.sdk.component.Sf.Sf sf;
        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ cJVar2;
        if (!cJVar.Qhi()) {
            byte[] Qhi2 = Qhi(qhi, cJVar, qhi2);
            fl();
            if (Qhi2 == null) {
                return;
            }
            cJVar.Qhi(Qhi2, 0, Qhi2.length);
        }
        hm hmVar = null;
        if (qhi == null && (qhi = this.cJ.Qhi(this.Sf, this.hm.ac.Qhi)) == null) {
            if (Tgh.ac) {
                Log.e("TAG_PROXY_ProxyTask", "failed to get video header info from db");
            }
            Qhi(null, cJVar, qhi2);
            qhi = this.cJ.Qhi(this.Sf, this.hm.ac.Qhi);
            if (qhi == null) {
                throw new com.bykv.vk.openvk.component.video.Qhi.cJ.ac.ac("failed to get header, rawKey: " + this.ROR + ", url: " + qhi2);
            }
        }
        if (file.length() >= qhi.ac || !((cJVar2 = this.hpZ) == null || cJVar2.cJ() || cJVar2.CJ())) {
            sf = null;
        } else {
            com.bykv.vk.openvk.component.video.Qhi.cJ.cJ Qhi3 = new cJ.Qhi().Qhi(this.Qhi).Qhi(this.cJ).Qhi(this.ROR).cJ(this.Sf).Qhi(new ABk(qhi2.Qhi)).Qhi(this.Tgh).Qhi(this.hm).Qhi(new cJ.InterfaceC0164cJ() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.Sf.1
                @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.InterfaceC0164cJ
                public void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ cJVar3) {
                    Sf.this.ac.addAndGet(cJVar3.ac.get());
                    Sf.this.CJ.addAndGet(cJVar3.CJ.get());
                    synchronized (cJVar3.ABk) {
                        cJVar3.ABk.notifyAll();
                    }
                    if (cJVar3.CJ()) {
                        Sf.this.pA.Qhi(Sf.this.ROR(), null);
                    }
                }
            }).Qhi();
            this.hpZ = Qhi3;
            sf = new com.bytedance.sdk.component.Sf.Sf(Qhi3, null, 10, 1);
            com.bytedance.sdk.component.Sf.ROR.cJ(new com.bytedance.sdk.component.Sf.hm("processCacheNetWorkConcurrent") { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.Sf.2
                @Override // java.lang.Runnable
                public void run() {
                    sf.run();
                }
            });
            if (Tgh.ac) {
                Log.e("TAG_PROXY_ProxyTask", "fire download in process cache task");
            }
        }
        byte[] bArr = new byte[8192];
        try {
            hm hmVar2 = new hm(file, "r");
            try {
                hmVar2.Qhi(cJVar.cJ());
                int min = this.hm.ac.fl > 0 ? Math.min(qhi.ac, this.hm.ac.fl) : qhi.ac;
                while (cJVar.cJ() < min) {
                    fl();
                    int Qhi4 = hmVar2.Qhi(bArr);
                    if (Qhi4 <= 0) {
                        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ cJVar3 = this.hpZ;
                        if (cJVar3 != null) {
                            com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ hm = cJVar3.hm();
                            if (hm != null) {
                                throw hm;
                            }
                            hm.Qhi Sf = cJVar3.Sf();
                            if (Sf != null) {
                                throw Sf;
                            }
                        }
                        if (cJVar3 != null && !cJVar3.cJ() && !cJVar3.CJ()) {
                            fl();
                            synchronized (cJVar3.ABk) {
                                try {
                                    cJVar3.ABk.wait(1000L);
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                        if (Tgh.ac) {
                            Log.e("TAG_PROXY_ProxyTask", "download task has finished!!!");
                        }
                        throw new com.bykv.vk.openvk.component.video.Qhi.cJ.ac.ac("illegal state download task has finished, rawKey: " + this.ROR + ", url: " + qhi2);
                    }
                    cJVar.cJ(bArr, 0, Qhi4);
                    fl();
                }
                if (Tgh.ac) {
                    Log.i("TAG_PROXY_ProxyTask", "read cache file complete: " + cJVar.cJ() + ", " + min);
                }
                ac();
                hmVar2.Qhi();
                if (sf != null) {
                    try {
                        sf.get();
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable th) {
                th = th;
                hmVar = hmVar2;
                if (hmVar != null) {
                    hmVar.Qhi();
                }
                if (sf != null) {
                    try {
                        sf.get();
                    } catch (Throwable unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x020c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void CJ(com.bykv.vk.openvk.component.video.Qhi.cJ.Sf.cJ r13, com.bykv.vk.openvk.component.video.Qhi.cJ.ABk.Qhi r14) throws com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl, java.io.IOException, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.Qhi.cJ.Sf.CJ(com.bykv.vk.openvk.component.video.Qhi.cJ.Sf$cJ, com.bykv.vk.openvk.component.video.Qhi.cJ.ABk$Qhi):void");
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi
    public void Qhi() {
        super.Qhi();
        hm();
    }

    private void hm() {
        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ cJVar = this.hpZ;
        this.hpZ = null;
        if (cJVar != null) {
            cJVar.Qhi();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProxyTask.java */
    /* loaded from: classes2.dex */
    public static class cJ {
        private final OutputStream Qhi;
        private boolean ac;
        private int cJ;

        cJ(OutputStream outputStream, int i) {
            this.Qhi = outputStream;
            this.cJ = i;
        }

        boolean Qhi() {
            return this.ac;
        }

        void Qhi(byte[] bArr, int i, int i2) throws com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl {
            if (this.ac) {
                return;
            }
            try {
                this.Qhi.write(bArr, i, i2);
                this.ac = true;
            } catch (IOException e2) {
                throw new com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl(e2);
            }
        }

        void cJ(byte[] bArr, int i, int i2) throws com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl {
            try {
                this.Qhi.write(bArr, i, i2);
                this.cJ += i2;
            } catch (IOException e2) {
                throw new com.bykv.vk.openvk.component.video.Qhi.cJ.ac.fl(e2);
            }
        }

        int cJ() {
            return this.cJ;
        }
    }

    /* compiled from: ProxyTask.java */
    /* loaded from: classes2.dex */
    static final class Qhi {
        ac CJ;
        com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.Qhi Qhi;
        Socket ac;
        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac cJ;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac acVar) {
            if (acVar == null) {
                throw new IllegalArgumentException("db == null");
            }
            this.cJ = acVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(Socket socket) {
            if (socket == null) {
                throw new IllegalArgumentException("socket == null");
            }
            this.ac = socket;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(ac acVar) {
            this.CJ = acVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Sf Qhi() {
            if (this.cJ == null || this.ac == null) {
                throw new IllegalArgumentException();
            }
            return new Sf(this);
        }
    }
}
