package com.bykv.vk.openvk.component.video.Qhi.cJ;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.Qhi.cJ.ABk;
import com.bykv.vk.openvk.component.video.Qhi.cJ.WAv;
import com.bykv.vk.openvk.component.video.Qhi.cJ.hm;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadTask.java */
/* loaded from: classes2.dex */
public class cJ extends com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi {
    final Object ABk;
    private volatile hm.Qhi HzH;
    private final InterfaceC0164cJ hpZ;
    final Object iMK;
    private volatile com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ kYc;
    private final int pA;

    /* compiled from: DownloadTask.java */
    /* renamed from: com.bykv.vk.openvk.component.video.Qhi.cJ.cJ$cJ  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0164cJ {
        void Qhi(cJ cJVar);
    }

    cJ(Qhi qhi) {
        super(qhi.CJ, qhi.fl);
        this.pA = qhi.ROR;
        this.hpZ = qhi.hm;
        this.ABk = this;
        this.ROR = qhi.Qhi;
        this.Sf = qhi.cJ;
        this.Tgh = qhi.Tgh;
        this.WAv = qhi.ac;
        this.hm = qhi.Sf;
        this.iMK = qhi.WAv;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.Qhi.Qhi(this.Sf);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            WAv();
        } catch (Throwable unused) {
        }
        this.CJ.set(SystemClock.elapsedRealtime() - elapsedRealtime);
        this.Qhi.cJ(this.Sf);
        InterfaceC0164cJ interfaceC0164cJ = this.hpZ;
        if (interfaceC0164cJ != null) {
            interfaceC0164cJ.Qhi(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public hm.Qhi Sf() {
        return this.HzH;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ hm() {
        return this.kYc;
    }

    private boolean WAv() throws com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi {
        while (this.WAv.Qhi()) {
            fl();
            ABk.Qhi cJ = this.WAv.cJ();
            try {
                Qhi(cJ);
                return true;
            } catch (com.bykv.vk.openvk.component.video.Qhi.cJ.ac.ac unused) {
                cJ.Qhi();
                Boolean.valueOf(ROR());
                String str = this.ROR;
            } catch (com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ e2) {
                this.kYc = e2;
                return false;
            } catch (hm.Qhi e3) {
                this.HzH = e3;
                Boolean.valueOf(ROR());
                String str2 = this.ROR;
                return false;
            } catch (IOException e4) {
                if (e4 instanceof SocketTimeoutException) {
                    cJ.cJ();
                }
                if (!cJ()) {
                    Boolean.valueOf(ROR());
                    String str3 = this.ROR;
                }
            } catch (Throwable unused2) {
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x018a, code lost:
        if (com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh.ac == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x018c, code lost:
        android.util.Log.w("TAG_PROXY_DownloadTask", "download, more data received, currentCacheFileSize: " + r5 + ", max: " + r12.pA);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01ac, code lost:
        com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(r6.CJ());
        r4.Qhi();
        Qhi();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01bb, code lost:
        if (com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh.ac == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01bd, code lost:
        android.util.Log.w("TAG_PROXY_DownloadTask", "cancel call");
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01c4, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01c9, code lost:
        ac();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ce, code lost:
        if (com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh.ac == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01d0, code lost:
        android.util.Log.i("TAG_PROXY_DownloadTask", "download succeed, no need to cancel call");
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01d7, code lost:
        com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(r6.CJ());
        r4.Qhi();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01e1, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.ABk.Qhi r13) throws java.io.IOException, com.bykv.vk.openvk.component.video.Qhi.cJ.hm.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.Qhi, com.bykv.vk.openvk.component.video.Qhi.cJ.ac.cJ {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.ABk$Qhi):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DownloadTask.java */
    /* loaded from: classes2.dex */
    public static final class Qhi {
        com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.Qhi CJ;
        String Qhi;
        int ROR;
        WAv Sf;
        List<WAv.cJ> Tgh;
        Object WAv;
        ABk ac;
        String cJ;
        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac fl;
        InterfaceC0164cJ hm;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("rawKey == null");
            }
            this.Qhi = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi cJ(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("key == null");
            }
            this.cJ = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(ABk aBk) {
            if (aBk == null) {
                throw new IllegalArgumentException("urls is empty");
            }
            this.ac = aBk;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.Qhi qhi) {
            if (qhi == null) {
                throw new IllegalArgumentException("cache == null");
            }
            this.CJ = qhi;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac acVar) {
            if (acVar == null) {
                throw new IllegalArgumentException("db == null");
            }
            this.fl = acVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(List<WAv.cJ> list) {
            this.Tgh = list;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(int i) {
            this.ROR = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(InterfaceC0164cJ interfaceC0164cJ) {
            this.hm = interfaceC0164cJ;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(WAv wAv) {
            this.Sf = wAv;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Qhi Qhi(Object obj) {
            this.WAv = obj;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public cJ Qhi() {
            if (this.CJ == null || this.fl == null || TextUtils.isEmpty(this.Qhi) || TextUtils.isEmpty(this.cJ) || this.ac == null) {
                throw new IllegalArgumentException();
            }
            return new cJ(this);
        }
    }
}
