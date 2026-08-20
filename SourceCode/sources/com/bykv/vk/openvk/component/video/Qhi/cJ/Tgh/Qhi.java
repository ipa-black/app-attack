package com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh;

import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.Qhi.cJ.ROR;
import com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh;
import com.bykv.vk.openvk.component.video.Qhi.cJ.fl;
import com.bykv.vk.openvk.component.video.api.Tgh.ac;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: VideoCachePreloader.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static final boolean Qhi = ac.ac();
    private C0162Qhi ac;
    private HashMap<String, Boolean> cJ;

    private Qhi() {
        this.cJ = new HashMap<>();
        cJ();
    }

    public static Qhi Qhi() {
        return cJ.Qhi;
    }

    /* compiled from: VideoCachePreloader.java */
    /* loaded from: classes2.dex */
    private static class cJ {
        private static final Qhi Qhi = new Qhi();
    }

    public boolean cJ() {
        if (this.ac != null) {
            return true;
        }
        com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac ac = ac();
        if (ac == null) {
            return false;
        }
        Tgh.Qhi(true);
        Tgh.cJ(true);
        Tgh.Qhi(1);
        ROR.Qhi().CJ();
        try {
            C0162Qhi c0162Qhi = new C0162Qhi();
            this.ac = c0162Qhi;
            c0162Qhi.setName("csj_video_cache_preloader");
            this.ac.start();
            Tgh.Qhi(ac, com.bykv.vk.openvk.component.video.api.ac.Qhi());
            fl.ac();
            fl.ac().Qhi(10485759);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        if (cJ()) {
            this.ac.Qhi(acVar);
            return true;
        }
        return false;
    }

    public String cJ(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        if (acVar == null) {
            return null;
        }
        boolean z = !TextUtils.isEmpty(acVar.iMK());
        return ROR.Qhi().Qhi(false, z, z ? acVar.iMK() : acVar.ABk(), acVar.ABk());
    }

    private static com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac ac() {
        File file = new File(com.bykv.vk.openvk.component.video.api.ac.Qhi().getCacheDir(), "proxy_cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac acVar = new com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac(file);
            try {
                acVar.Qhi(104857600L);
                return acVar;
            } catch (IOException unused) {
                return acVar;
            }
        } catch (IOException unused2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoCachePreloader.java */
    /* renamed from: com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0162Qhi extends Thread {
        private final Queue<C0163Qhi> CJ = new ArrayBlockingQueue(10);
        private Queue<C0163Qhi> cJ = new LinkedBlockingQueue();
        private boolean ac = true;
        private Queue<C0163Qhi> fl = new LinkedBlockingQueue();

        public C0162Qhi() {
        }

        private C0163Qhi Qhi(int i, com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
            this.CJ.size();
            C0163Qhi poll = this.CJ.poll();
            if (poll == null) {
                poll = new C0163Qhi();
            }
            poll.Qhi = i;
            poll.Tgh = acVar;
            return poll;
        }

        private void Qhi(C0163Qhi c0163Qhi) {
            c0163Qhi.ac = null;
            c0163Qhi.cJ = null;
            c0163Qhi.Qhi = -1;
            c0163Qhi.Tgh = null;
            this.CJ.offer(c0163Qhi);
        }

        private synchronized void cJ(C0163Qhi c0163Qhi) {
            this.fl.add(c0163Qhi);
            notify();
        }

        private void ac(C0163Qhi c0163Qhi) {
            if (c0163Qhi == null) {
                return;
            }
            this.cJ.offer(c0163Qhi);
            notify();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String[] strArr;
            while (this.ac) {
                synchronized (this) {
                    if (!this.fl.isEmpty()) {
                        Qhi();
                    }
                    while (!this.cJ.isEmpty()) {
                        C0163Qhi poll = this.cJ.poll();
                        if (poll != null) {
                            int i = poll.Qhi;
                            if (i != 0) {
                                if (i == 1) {
                                    fl.ac().Qhi(poll.cJ);
                                } else if (i == 2) {
                                    fl.ac().CJ();
                                } else if (i == 3) {
                                    fl.ac().CJ();
                                    if (Tgh.ac() != null) {
                                        Tgh.ac();
                                        throw null;
                                    } else if (Tgh.cJ() != null) {
                                        Tgh.cJ().Qhi();
                                    }
                                } else if (i == 4) {
                                    fl.ac().CJ();
                                    this.ac = false;
                                }
                            } else if (poll.ac != null && poll.ac.length > 0) {
                                ArrayList arrayList = new ArrayList();
                                for (String str : poll.ac) {
                                    if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(str)) {
                                        arrayList.add(str);
                                    }
                                }
                                fl.ac().Qhi(false, !TextUtils.isEmpty(poll.fl), poll.CJ, poll.cJ, (String[]) arrayList.toArray(new String[arrayList.size()]));
                            }
                            Qhi(poll);
                        }
                    }
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        private void Qhi() {
            while (true) {
                C0163Qhi poll = this.fl.poll();
                if (poll == null) {
                    return;
                }
                poll.cJ = poll.Tgh.ABk();
                poll.ac = new String[]{poll.Tgh.ABk()};
                int Qhi = poll.Tgh.Qhi();
                if (Qhi <= 0) {
                    Qhi = poll.Tgh.ac();
                }
                poll.CJ = Qhi;
                poll.fl = poll.Tgh.iMK();
                if (!TextUtils.isEmpty(poll.Tgh.iMK())) {
                    poll.cJ = poll.Tgh.iMK();
                }
                poll.Tgh = null;
                ac(poll);
            }
        }

        public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
            cJ(Qhi(0, acVar));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: VideoCachePreloader.java */
        /* renamed from: com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh.Qhi$Qhi$Qhi  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0163Qhi {
            public int CJ;
            public int Qhi;
            public com.bykv.vk.openvk.component.video.api.ac.ac Tgh;
            public String[] ac;
            public String cJ;
            public String fl;

            public C0163Qhi() {
            }
        }
    }
}
