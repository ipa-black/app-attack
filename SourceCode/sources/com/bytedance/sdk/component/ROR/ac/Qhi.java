package com.bytedance.sdk.component.ROR.ac;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.component.ROR.CJ.WAv;
import com.bytedance.sdk.component.ROR.Qhi;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.kYc;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: AppConfig.java */
/* loaded from: classes2.dex */
public class Qhi implements CQU.Qhi {
    private static boolean Sf;
    private static ThreadPoolExecutor WAv;
    private static ac hm;
    private final boolean cJ;
    private com.bytedance.sdk.component.ROR.Qhi iMK;
    private int pA;
    private final Context zc;
    private volatile boolean ac = false;
    private boolean CJ = true;
    private boolean fl = false;
    private long Tgh = 0;
    private long ROR = 0;
    private AtomicBoolean Gm = new AtomicBoolean(false);
    private volatile boolean ABk = false;
    final CQU Qhi = com.bytedance.sdk.component.Sf.Qhi.Qhi.Qhi().Qhi(this, "tt-net");

    public Qhi(Context context, int i) {
        this.zc = context;
        this.cJ = kYc.Qhi(context);
        this.pA = i;
    }

    public void Qhi() {
        Qhi(false);
    }

    public synchronized void Qhi(boolean z) {
        if (this.cJ) {
            CJ(z);
            return;
        }
        if (this.Tgh <= 0) {
            try {
                ROR().execute(new Runnable() { // from class: com.bytedance.sdk.component.ROR.ac.Qhi.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Qhi.this.cJ();
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    public static void cJ(boolean z) {
        Sf = z;
    }

    synchronized void cJ() {
        if (System.currentTimeMillis() - this.Tgh > 3600000) {
            this.Tgh = System.currentTimeMillis();
            try {
                if (hm.Qhi().Qhi(this.pA).Sf() != null) {
                    hm.Qhi().Qhi(this.pA).Sf().cJ();
                }
            } catch (Exception unused) {
            }
        }
    }

    private void CJ(boolean z) {
        if (this.fl) {
            return;
        }
        if (this.CJ) {
            this.CJ = false;
            this.Tgh = 0L;
            this.ROR = 0L;
        }
        long j = z ? 360000L : 43200000L;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.Tgh > j) {
            if (currentTimeMillis - this.ROR > 120000 || !this.ABk) {
                ac();
            }
        }
    }

    public boolean ac() {
        this.Gm.get();
        ROR().execute(new Runnable() { // from class: com.bytedance.sdk.component.ROR.ac.Qhi.2
            @Override // java.lang.Runnable
            public void run() {
                boolean Qhi = WAv.Qhi(Qhi.this.zc);
                if (Qhi) {
                    Qhi.this.ROR = System.currentTimeMillis();
                    if (Qhi.this.Gm.compareAndSet(false, true)) {
                        Qhi.this.ac(Qhi);
                    }
                }
            }
        });
        return true;
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        int i = message.what;
        if (i == 101) {
            this.fl = false;
            this.Tgh = System.currentTimeMillis();
            if (this.CJ) {
                Qhi();
            }
            this.Gm.set(false);
        } else if (i != 102) {
        } else {
            this.fl = false;
            if (this.CJ) {
                Qhi();
            }
            this.Gm.set(false);
        }
    }

    public synchronized void CJ() {
        if (this.ABk) {
            return;
        }
        this.ABk = true;
        long j = this.zc.getSharedPreferences("ss_app_config", 0).getLong("last_refresh_time", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if (j > currentTimeMillis) {
            j = currentTimeMillis;
        }
        this.Tgh = j;
        try {
            if (hm.Qhi().Qhi(this.pA).Sf() != null) {
                hm.Qhi().Qhi(this.pA).Sf().Qhi();
            }
        } catch (Exception unused) {
        }
    }

    public void fl() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        try {
            if (this.cJ) {
                CJ();
            } else {
                cJ();
            }
        } catch (Throwable unused) {
        }
    }

    void ac(boolean z) {
        CJ();
        this.fl = true;
        if (!z) {
            this.Qhi.sendEmptyMessage(102);
            return;
        }
        try {
            Sf();
        } catch (Exception unused) {
            this.Gm.set(false);
        }
    }

    public String[] Tgh() {
        String[] Tgh = hm.Qhi().Qhi(this.pA).CJ() != null ? hm.Qhi().Qhi(this.pA).CJ().Tgh() : null;
        return (Tgh == null || Tgh.length <= 0) ? new String[0] : Tgh;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Qhi(Object obj) throws Exception {
        JSONObject jSONObject;
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            jSONObject = new JSONObject(str);
            if (!FirebaseAnalytics.Param.SUCCESS.equals(jSONObject.getString("message"))) {
                return false;
            }
        } else {
            jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        }
        if (jSONObject == null) {
            return false;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        synchronized (this) {
            SharedPreferences.Editor edit = this.zc.getSharedPreferences("ss_app_config", 0).edit();
            edit.putLong("last_refresh_time", System.currentTimeMillis());
            edit.apply();
        }
        if (hm.Qhi().Qhi(this.pA).Sf() != null) {
            hm.Qhi().Qhi(this.pA).Sf().Qhi(jSONObject2);
            return true;
        }
        return true;
    }

    private boolean Sf() {
        String[] Tgh = Tgh();
        if (Tgh != null && Tgh.length != 0) {
            Qhi(0);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final int i) {
        String[] Tgh = Tgh();
        if (Tgh == null || Tgh.length <= i) {
            cJ(102);
            return;
        }
        String str = Tgh[i];
        if (TextUtils.isEmpty(str)) {
            cJ(102);
            return;
        }
        try {
            String Qhi = Qhi(str);
            if (TextUtils.isEmpty(Qhi)) {
                cJ(102);
                return;
            }
            com.bytedance.sdk.component.ROR.cJ.cJ ac = hm().ac();
            ac.cJ(Qhi);
            Qhi(ac);
            ac.Qhi(new com.bytedance.sdk.component.ROR.Qhi.Qhi() { // from class: com.bytedance.sdk.component.ROR.ac.Qhi.3
                @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
                public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, com.bytedance.sdk.component.ROR.cJ cJVar) {
                    JSONObject jSONObject;
                    if (cJVar == null || !cJVar.Tgh()) {
                        Qhi.this.Qhi(i + 1);
                        return;
                    }
                    String str2 = null;
                    try {
                        jSONObject = new JSONObject(cJVar.CJ());
                    } catch (Exception unused) {
                        jSONObject = null;
                    }
                    if (jSONObject == null) {
                        Qhi.this.Qhi(i + 1);
                        return;
                    }
                    try {
                        str2 = jSONObject.getString("message");
                    } catch (Exception unused2) {
                    }
                    if (!FirebaseAnalytics.Param.SUCCESS.equals(str2)) {
                        Qhi.this.Qhi(i + 1);
                        return;
                    }
                    try {
                        if (Qhi.this.Qhi(jSONObject)) {
                            Qhi.this.cJ(101);
                        } else {
                            Qhi.this.Qhi(i + 1);
                        }
                    } catch (Exception unused3) {
                    }
                }

                @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
                public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, IOException iOException) {
                    Qhi.this.Qhi(i + 1);
                }
            });
        } catch (Throwable th) {
            new StringBuilder("try app config exception: ").append(th);
        }
    }

    private com.bytedance.sdk.component.ROR.Qhi hm() {
        if (this.iMK == null) {
            this.iMK = new Qhi.C0182Qhi().Qhi(10L, TimeUnit.SECONDS).cJ(10L, TimeUnit.SECONDS).ac(10L, TimeUnit.SECONDS).Qhi();
        }
        return this.iMK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(int i) {
        CQU cqu = this.Qhi;
        if (cqu != null) {
            cqu.sendEmptyMessage(i);
        }
    }

    private String Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder("https://");
        sb.append(str).append("/get_domains/v4/");
        return sb.toString();
    }

    private void Qhi(com.bytedance.sdk.component.ROR.cJ.cJ cJVar) {
        if (cJVar == null) {
            return;
        }
        Address Qhi = hm.Qhi().Qhi(this.pA).CJ() != null ? hm.Qhi().Qhi(this.pA).CJ().Qhi(this.zc) : null;
        if (Qhi != null && Qhi.hasLatitude() && Qhi.hasLongitude()) {
            cJVar.Qhi("latitude", new StringBuilder().append(Qhi.getLatitude()).toString());
            cJVar.Qhi("longitude", new StringBuilder().append(Qhi.getLongitude()).toString());
            String locality = Qhi.getLocality();
            if (!TextUtils.isEmpty(locality)) {
                cJVar.Qhi("city", Uri.encode(locality));
            }
        }
        if (this.ac) {
            cJVar.Qhi("force", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        }
        try {
            cJVar.Qhi("abi", Build.SUPPORTED_ABIS[0]);
        } catch (Throwable unused) {
        }
        if (hm.Qhi().Qhi(this.pA).CJ() != null) {
            cJVar.Qhi("aid", new StringBuilder().append(hm.Qhi().Qhi(this.pA).CJ().Qhi()).toString());
            cJVar.Qhi("device_platform", hm.Qhi().Qhi(this.pA).CJ().ac());
            cJVar.Qhi("channel", hm.Qhi().Qhi(this.pA).CJ().cJ());
            cJVar.Qhi("version_code", new StringBuilder().append(hm.Qhi().Qhi(this.pA).CJ().CJ()).toString());
            cJVar.Qhi("custom_info_1", hm.Qhi().Qhi(this.pA).CJ().fl());
        }
    }

    public static ExecutorService ROR() {
        ac acVar = hm;
        ExecutorService threadPool = acVar != null ? acVar.getThreadPool() : null;
        if (threadPool != null) {
            return threadPool;
        }
        if (WAv == null) {
            synchronized (Qhi.class) {
                if (WAv == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                    WAv = threadPoolExecutor;
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return WAv;
    }

    public static void Qhi(ac acVar) {
        hm = acVar;
    }
}
