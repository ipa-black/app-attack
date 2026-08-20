package com.bykv.vk.openvk.component.video.Qhi.cJ;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.openvk.component.video.Qhi.cJ.Sf;
import com.google.firebase.messaging.Constants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: ProxyServer.java */
/* loaded from: classes2.dex */
public class ROR {
    private static volatile ROR CJ;
    private final AtomicBoolean ABk;
    private volatile ac Gm;
    private volatile ServerSocket Qhi;
    private volatile com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.cJ ROR;
    private final SparseArray<Set<Sf>> Sf;
    private volatile com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac Tgh;
    private volatile ac WAv;
    private final AtomicInteger ac = new AtomicInteger(0);
    private volatile int cJ;
    private volatile com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac fl;
    private final Sf.ac hm;
    private final Runnable zc;

    static /* synthetic */ void Qhi(String str, String str2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean Qhi(int i, String str) {
        if (str == null) {
            return false;
        }
        synchronized (this.Sf) {
            Set<Sf> set = this.Sf.get(i);
            if (set != null) {
                for (Sf sf : set) {
                    if (sf != null && str.equals(sf.Sf)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public static ROR Qhi() {
        if (CJ == null) {
            synchronized (ROR.class) {
                if (CJ == null) {
                    CJ = new ROR();
                }
            }
        }
        return CJ;
    }

    private ROR() {
        SparseArray<Set<Sf>> sparseArray = new SparseArray<>(2);
        this.Sf = sparseArray;
        this.hm = new Sf.ac() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.ROR.1
            @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.Sf.ac
            public void Qhi(Sf sf) {
                synchronized (ROR.this.Sf) {
                    Set set = (Set) ROR.this.Sf.get(sf.Tgh());
                    if (set != null) {
                        set.add(sf);
                    }
                }
            }

            @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.Sf.ac
            public void cJ(Sf sf) {
                if (Tgh.ac) {
                    Log.d("ProxyServer", "afterExecute, ProxyTask: ".concat(String.valueOf(sf)));
                }
                int Tgh = sf.Tgh();
                synchronized (ROR.this.Sf) {
                    Set set = (Set) ROR.this.Sf.get(Tgh);
                    if (set != null) {
                        set.remove(sf);
                    }
                }
            }
        };
        this.zc = new Runnable() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.ROR.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    int i = 0;
                    ROR.this.Qhi = new ServerSocket(0, 50, InetAddress.getByName(ROR.this.hm()));
                    ROR ror = ROR.this;
                    ror.cJ = ror.Qhi.getLocalPort();
                    if (ROR.this.cJ != -1) {
                        Gm.Qhi(ROR.this.hm(), ROR.this.cJ);
                        if (ROR.this.ROR()) {
                            new Object[]{"run:  state = ", ROR.this.ac};
                            if (ROR.this.ac.compareAndSet(0, 1)) {
                                new Object[]{"run:  state = ", ROR.this.ac};
                                boolean z = Tgh.ac;
                                while (ROR.this.ac.get() == 1) {
                                    try {
                                        try {
                                            Socket accept = ROR.this.Qhi.accept();
                                            com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac acVar = ROR.this.fl;
                                            if (acVar != null) {
                                                final Sf Qhi2 = new Sf.Qhi().Qhi(acVar).Qhi(accept).Qhi(ROR.this.hm).Qhi();
                                                com.bytedance.sdk.component.Sf.ROR.ac().execute(new com.bytedance.sdk.component.Sf.hm("ProxyTask", 10) { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.ROR.2.1
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        Qhi2.run();
                                                    }
                                                });
                                            } else {
                                                com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(accept);
                                            }
                                        } catch (IOException e2) {
                                            ROR.Qhi("accept error", Log.getStackTraceString(e2));
                                            i++;
                                            if (i > 3) {
                                                break;
                                            }
                                        }
                                    } catch (Throwable th) {
                                        String stackTraceString = Log.getStackTraceString(th);
                                        Log.e("ProxyServer", "proxy server crashed!  ".concat(String.valueOf(stackTraceString)));
                                        ROR.Qhi(Constants.IPC_BUNDLE_KEY_SEND_ERROR, stackTraceString);
                                    }
                                }
                                boolean z2 = Tgh.ac;
                                ROR.this.fl();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    ROR.Qhi("socket not bound", "");
                    ROR.this.fl();
                } catch (IOException e3) {
                    if (Tgh.ac) {
                        Log.e("ProxyServer", "create ServerSocket error!  " + Log.getStackTraceString(e3));
                    }
                    ROR.Qhi("create ServerSocket error", Log.getStackTraceString(e3));
                    ROR.this.fl();
                }
            }
        };
        this.ABk = new AtomicBoolean();
        sparseArray.put(0, new HashSet());
        sparseArray.put(1, new HashSet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac cJ() {
        return this.WAv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac ac() {
        return this.Gm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac acVar) {
        this.fl = acVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac acVar) {
        this.Tgh = acVar;
    }

    public String Qhi(boolean z, boolean z2, String str, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            return strArr[0];
        }
        if (this.fl == null) {
            return strArr[0];
        }
        if ((z ? this.ROR : this.Tgh) == null) {
            return strArr[0];
        }
        if (this.ac.get() != 1) {
            return strArr[0];
        }
        List<String> Qhi2 = com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(strArr);
        if (Qhi2 == null) {
            return strArr[0];
        }
        String Qhi3 = WAv.Qhi(str, z2 ? str : com.bykv.vk.openvk.component.video.api.Tgh.cJ.Qhi(str), Qhi2);
        if (Qhi3 == null) {
            return strArr[0];
        }
        return (z ? "https://" + hm() + ":" + this.cJ + "?f=1&" + Qhi3 : "https://" + hm() + ":" + this.cJ + "?" + Qhi3).replaceFirst("s", "");
    }

    public void CJ() {
        if (this.ABk.compareAndSet(false, true)) {
            Thread thread = new Thread(this.zc);
            thread.setName("csj_proxy_server");
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fl() {
        if (this.ac.compareAndSet(1, 2) || this.ac.compareAndSet(0, 2)) {
            com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(this.Qhi);
            Tgh();
        }
    }

    private void Tgh() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.Sf) {
            int size = this.Sf.size();
            for (int i = 0; i < size; i++) {
                SparseArray<Set<Sf>> sparseArray = this.Sf;
                Set<Sf> set = sparseArray.get(sparseArray.keyAt(i));
                if (set != null) {
                    arrayList.addAll(set);
                    set.clear();
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Sf) it.next()).Qhi();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ROR() {
        com.bytedance.sdk.component.Sf.Sf sf = new com.bytedance.sdk.component.Sf.Sf(new Qhi(hm(), this.cJ), 5, 1);
        com.bytedance.sdk.component.Sf.ROR.ac().submit(sf);
        Sf();
        try {
            if (!((Boolean) sf.get()).booleanValue()) {
                Log.e("ProxyServer", "Ping error");
                fl();
                return false;
            }
            boolean z = Tgh.ac;
            return true;
        } catch (Throwable th) {
            Log.getStackTraceString(th);
            fl();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProxyServer.java */
    /* loaded from: classes2.dex */
    public static final class Qhi implements Callable<Boolean> {
        private final String Qhi;
        private final int cJ;

        Qhi(String str, int i) {
            this.Qhi = str;
            this.cJ = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: Qhi */
        public Boolean call() {
            Socket socket;
            Throwable th;
            try {
                socket = new Socket(this.Qhi, this.cJ);
                try {
                    socket.setSoTimeout(2000);
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write("Ping\n".getBytes(com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi));
                    outputStream.flush();
                    if ("OK".equals(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine())) {
                        return Boolean.TRUE;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.getMessage();
                        ROR.Qhi("ping error", Log.getStackTraceString(th));
                        com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(socket);
                        return Boolean.FALSE;
                    } finally {
                        com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(socket);
                    }
                }
            } catch (Throwable th3) {
                socket = null;
                th = th3;
            }
            com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(socket);
            return Boolean.FALSE;
        }
    }

    private void Sf() {
        Socket socket = null;
        try {
            socket = this.Qhi.accept();
            socket.setSoTimeout(2000);
            if ("Ping".equals(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine())) {
                OutputStream outputStream = socket.getOutputStream();
                outputStream.write("OK\n".getBytes(com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi));
                outputStream.flush();
            }
        } catch (IOException e2) {
            Log.getStackTraceString(e2);
        } finally {
            com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(socket);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String hm() {
        return new String(Base64.decode("MTI3LjAuMC4x".getBytes(), 0));
    }
}
