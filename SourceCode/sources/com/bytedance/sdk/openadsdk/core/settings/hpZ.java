package com.bytedance.sdk.openadsdk.core.settings;

import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.core.settings.Tgh;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* compiled from: SettingsPropRepository.java */
/* loaded from: classes2.dex */
public abstract class hpZ implements Tgh {
    private final String ROR;
    private Qhi WAv;
    private final ConcurrentHashMap<String, Object> ac = new ConcurrentHashMap<>();
    private final Object CJ = new Object();
    private final Object fl = new Object();
    private final CountDownLatch Tgh = new CountDownLatch(1);
    private Properties Sf = new Properties();
    private volatile boolean hm = false;

    /* compiled from: SettingsPropRepository.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi();

        void cJ();
    }

    public hpZ(String str, Qhi qhi) {
        this.ROR = str;
        this.WAv = qhi;
        lG.Qhi(new com.bytedance.sdk.component.Sf.hm("SetL_".concat(String.valueOf(str))) { // from class: com.bytedance.sdk.openadsdk.core.settings.hpZ.1
            @Override // java.lang.Runnable
            public void run() {
                hpZ.this.Qhi(false);
            }
        });
    }

    public String Qhi(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return str2;
        }
        fl();
        return this.Sf.getProperty(str, str2);
    }

    private void fl() {
        if (this.hm) {
            return;
        }
        try {
            SystemClock.elapsedRealtime();
            this.Tgh.await(lG.fl() ? 4 : 8, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("SdkSettings.Prop", "awaitLoadedLocked: ", e2);
        }
    }

    public int Qhi(String str, int i) {
        if (str != null && !str.isEmpty()) {
            fl();
            try {
                return Integer.parseInt(this.Sf.getProperty(str, String.valueOf(i)));
            } catch (NumberFormatException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("SdkSettings.Prop", "", e2);
            }
        }
        return i;
    }

    public long Qhi(String str, long j) {
        if (str != null && !str.isEmpty()) {
            fl();
            try {
                return Long.parseLong(this.Sf.getProperty(str, String.valueOf(j)));
            } catch (NumberFormatException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("SdkSettings.Prop", "", e2);
            }
        }
        return j;
    }

    public float Qhi(String str, float f2) {
        if (str != null && !str.isEmpty()) {
            fl();
            try {
                return Float.parseFloat(this.Sf.getProperty(str, String.valueOf(f2)));
            } catch (NumberFormatException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("SdkSettings.Prop", "", e2);
            }
        }
        return f2;
    }

    public boolean Qhi(String str, boolean z) {
        if (str != null && !str.isEmpty()) {
            fl();
            try {
                return Boolean.parseBoolean(this.Sf.getProperty(str, String.valueOf(z)));
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("SdkSettings.Prop", "", e2);
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0107 A[Catch: all -> 0x0117, TryCatch #5 {, blocks: (B:4:0x0003, B:7:0x0009, B:9:0x000b, B:11:0x0016, B:17:0x0051, B:18:0x0056, B:60:0x0103, B:62:0x0107, B:64:0x010b, B:65:0x010e, B:66:0x0115, B:26:0x006a, B:27:0x006d, B:36:0x0080, B:37:0x0083, B:42:0x0091, B:44:0x009b, B:46:0x00a5, B:48:0x00ba, B:49:0x00ca, B:51:0x00d0, B:53:0x00e2, B:56:0x00ea, B:58:0x00f5, B:59:0x00f8, B:24:0x0061, B:31:0x0072), top: B:79:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qhi(boolean r9) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.settings.hpZ.Qhi(boolean):void");
    }

    private File Tgh() {
        return new File(com.bytedance.sdk.openadsdk.core.HzH.Qhi().getFilesDir(), this.ROR);
    }

    public Tgh.Qhi Qhi() {
        return new cJ();
    }

    public <T> T Qhi(String str, T t, Tgh.cJ<T> cJVar) {
        T cJ2;
        if (str != null && !str.isEmpty()) {
            if (this.ac.containsKey(str)) {
                try {
                    return (T) this.ac.get(str);
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("SdkSettings.Prop", "", e2);
                    return t;
                }
            }
            fl();
            String property = this.Sf.getProperty(str, null);
            if (property != null && cJVar != null && (cJ2 = cJVar.cJ(property)) != null) {
                this.ac.put(str, cJ2);
                return cJ2;
            }
        }
        return t;
    }

    public boolean cJ() {
        return this.hm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.String] */
    public void Qhi(Properties properties) {
        FileOutputStream fileOutputStream;
        synchronized (this.fl) {
            File Tgh = Tgh();
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(Tgh);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            try {
                properties.store(fileOutputStream, (String) null);
                String absolutePath = Tgh.getAbsolutePath();
                ?? r2 = FirebaseAnalytics.Param.SUCCESS;
                new Object[]{"saveToLocal: save to", absolutePath, FirebaseAnalytics.Param.SUCCESS};
                com.bytedance.sdk.openadsdk.utils.Gm.Qhi(fileOutputStream);
                fileOutputStream2 = r2;
            } catch (Exception e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                com.bytedance.sdk.component.utils.ABk.Qhi("SdkSettings.Prop", "saveToLocal: ", e);
                fileOutputStream2 = fileOutputStream2;
                if (fileOutputStream2 != null) {
                    com.bytedance.sdk.openadsdk.utils.Gm.Qhi(fileOutputStream2);
                    fileOutputStream2 = fileOutputStream2;
                }
                HzH.SNp();
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    com.bytedance.sdk.openadsdk.utils.Gm.Qhi(fileOutputStream2);
                }
                throw th;
            }
        }
        HzH.SNp();
    }

    public void ac() {
        File Tgh = Tgh();
        if (Tgh.exists()) {
            Tgh.delete();
        }
    }

    /* compiled from: SettingsPropRepository.java */
    /* loaded from: classes2.dex */
    public class cJ implements Tgh.Qhi {
        private final Map<String, Object> cJ = new HashMap();
        private final Object ac = new Object();

        public cJ() {
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.Qhi
        public void Qhi() {
            Object obj;
            new Object[]{"commit: ", this.cJ};
            Properties properties = new Properties();
            synchronized (this.ac) {
                properties.putAll(hpZ.this.Sf);
                boolean z = false;
                for (Map.Entry<String, Object> entry : this.cJ.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (value != this && value != null) {
                        if (!properties.containsKey(key) || (obj = properties.get(key)) == null || !obj.equals(value)) {
                            properties.put(key, String.valueOf(value));
                            z = true;
                        }
                    }
                    if (properties.containsKey(key)) {
                        properties.remove(key);
                        z = true;
                    }
                }
                this.cJ.clear();
                if (z) {
                    hpZ.this.Qhi(properties);
                    hpZ.this.Sf = properties;
                    hpZ.this.ac.clear();
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.Qhi
        public Tgh.Qhi Qhi(String str, String str2) {
            synchronized (this.ac) {
                this.cJ.put(str, str2);
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.Qhi
        public Tgh.Qhi Qhi(String str, int i) {
            synchronized (this.ac) {
                this.cJ.put(str, Integer.valueOf(i));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.Qhi
        public Tgh.Qhi Qhi(String str, long j) {
            synchronized (this.ac) {
                this.cJ.put(str, Long.valueOf(j));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.Qhi
        public Tgh.Qhi Qhi(String str) {
            synchronized (this.ac) {
                this.cJ.put(str, this);
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.Qhi
        public Tgh.Qhi Qhi(String str, float f2) {
            synchronized (this.ac) {
                this.cJ.put(str, Float.valueOf(f2));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.Tgh.Qhi
        public Tgh.Qhi Qhi(String str, boolean z) {
            synchronized (this.ac) {
                this.cJ.put(str, Boolean.valueOf(z));
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void CJ() {
        Qhi qhi = this.WAv;
        if (qhi != null) {
            qhi.cJ();
        }
    }
}
