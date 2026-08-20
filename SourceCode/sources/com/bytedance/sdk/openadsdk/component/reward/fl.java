package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.js;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FullScreenVideoCache.java */
/* loaded from: classes2.dex */
public class fl {
    private static volatile fl Qhi;
    private final Map<tP, Long> CJ = Collections.synchronizedMap(new HashMap());
    private final iMK ac;
    private final Context cJ;

    /* compiled from: FullScreenVideoCache.java */
    /* loaded from: classes2.dex */
    interface Qhi<T> {
        void Qhi(boolean z, T t);
    }

    public void Qhi(String str, tP tPVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String cJ = this.ac.cJ(str);
        String jWV = tPVar != null ? tPVar.jWV() : "";
        if (TextUtils.isEmpty(cJ) || TextUtils.isEmpty(jWV) || cJ.equals(jWV)) {
            this.ac.ROR(str);
        }
    }

    public void Qhi() {
        File[] listFiles;
        String str;
        File[] listFiles2;
        try {
            boolean ROR = com.bytedance.sdk.openadsdk.core.hm.ROR("sp_full_screen_video");
            if (ROR) {
                str = "files";
            } else {
                str = "shared_prefs";
            }
            File file = new File(this.cJ.getDataDir(), str);
            if (file.exists() && file.isDirectory() && (listFiles2 = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.fl.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    if (file2 != null) {
                        return file2.getName().contains("sp_full_screen_video");
                    }
                    return false;
                }
            })) != null) {
                for (File file2 : listFiles2) {
                    if (ROR) {
                        try {
                            com.bytedance.sdk.component.utils.ROR.ac(file2);
                        } catch (Throwable unused) {
                        }
                    } else {
                        this.cJ.deleteSharedPreferences(file2.getName().replace(".xml", ""));
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        try {
            File cacheDir = this.cJ.getCacheDir();
            if (cacheDir == null || !cacheDir.exists() || !cacheDir.isDirectory() || (listFiles = cacheDir.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.component.reward.fl.2
                @Override // java.io.FileFilter
                public boolean accept(File file3) {
                    if (file3 != null) {
                        return file3.getName().contains("full_screen_video_cache");
                    }
                    return false;
                }
            })) == null) {
                return;
            }
            for (File file3 : listFiles) {
                try {
                    com.bytedance.sdk.component.utils.ROR.ac(file3);
                } catch (Throwable unused3) {
                }
            }
        } catch (Throwable unused4) {
        }
    }

    public void Qhi(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Qhi qhi) {
        if (qhi == null || adSlot == null || !TextUtils.isEmpty(adSlot.getBidAdm())) {
            return;
        }
        String Qhi2 = qhi.Qhi();
        try {
            this.ac.Qhi(adSlot.getCodeId(), qhi.zc().toString(), Qhi2);
        } catch (Throwable unused) {
        }
    }

    public static fl Qhi(Context context) {
        if (Qhi == null) {
            synchronized (fl.class) {
                if (Qhi == null) {
                    Qhi = new fl(context);
                }
            }
        }
        return Qhi;
    }

    private fl(Context context) {
        this.cJ = context == null ? HzH.Qhi() : context.getApplicationContext();
        this.ac = new iMK("sp_full_screen_video");
    }

    public String Qhi(tP tPVar) {
        if (tPVar == null || tPVar.FQ() == null || TextUtils.isEmpty(tPVar.FQ().Gm())) {
            return null;
        }
        return Qhi(tPVar.FQ().Gm(), tPVar.FQ().iMK(), tPVar.zTC());
    }

    public String Qhi(String str, String str2, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = com.bytedance.sdk.component.utils.Tgh.Qhi(str);
        }
        File Qhi2 = Qhi(str2, i);
        if (Qhi2 == null || !Qhi2.exists() || !Qhi2.isFile() || Qhi2.length() <= 0) {
            return null;
        }
        return Qhi2.getAbsolutePath();
    }

    public com.bytedance.sdk.openadsdk.core.model.Qhi Qhi(String str, boolean z) {
        com.bytedance.sdk.openadsdk.core.model.Qhi qhi;
        long ac = this.ac.ac(str);
        boolean CJ = this.ac.CJ(str);
        boolean Tgh = this.ac.Tgh(str);
        int cJ = Tgh.cJ();
        if (System.currentTimeMillis() - ac < 10500000 && !CJ && (!z || cJ != 2 || !Tgh)) {
            try {
                String Qhi2 = this.ac.Qhi(str);
                if (!TextUtils.isEmpty(Qhi2)) {
                    JSONObject jSONObject = new JSONObject(Qhi2);
                    if (jSONObject.has("creatives")) {
                        qhi = com.bytedance.sdk.openadsdk.core.model.Qhi.cJ(jSONObject);
                    } else {
                        tP Qhi3 = com.bytedance.sdk.openadsdk.core.cJ.Qhi(jSONObject);
                        com.bytedance.sdk.openadsdk.core.model.Qhi qhi2 = new com.bytedance.sdk.openadsdk.core.model.Qhi();
                        qhi2.Qhi(Qhi3);
                        qhi = qhi2;
                    }
                    if (qhi != null && qhi.CJ()) {
                        Iterator<tP> it = qhi.ac().iterator();
                        while (it.hasNext()) {
                            if (!cJ(it.next())) {
                                it.remove();
                            }
                        }
                        if (qhi.CJ()) {
                            return qhi;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private boolean cJ(tP tPVar) {
        if (tPVar != null) {
            return bxS.Gm(tPVar) || tPVar.FQ() != null;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final boolean z, final tP tPVar, final long j, String str) {
        Long remove = this.CJ.remove(tPVar);
        final long elapsedRealtime = remove == null ? 0L : SystemClock.elapsedRealtime() - remove.longValue();
        final String str2 = z ? "load_video_success" : "load_video_error";
        final String str3 = (z || str == null) ? null : str;
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi(str2, false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.fl.3
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi(str2).cJ(js.Qhi(z, tPVar, elapsedRealtime, j, str3).toString());
            }
        });
    }

    public void Qhi(final tP tPVar, final Qhi<Object> qhi) {
        this.CJ.put(tPVar, Long.valueOf(SystemClock.elapsedRealtime()));
        if (tPVar.FQ() == null || TextUtils.isEmpty(tPVar.FQ().Gm())) {
            if (qhi != null) {
                qhi.Qhi(false, null);
            }
            Qhi(false, tPVar, -1L, null);
            return;
        }
        String Gm = tPVar.FQ().Gm();
        File Qhi2 = Qhi(tPVar.FQ().iMK(), tPVar.zTC());
        com.bytedance.sdk.component.ROR.cJ.Qhi CJ = com.bytedance.sdk.openadsdk.iMK.ac.Qhi().cJ().CJ();
        CJ.cJ(Gm);
        CJ.Qhi(Qhi2.getParent(), Qhi2.getName());
        CJ.Qhi(new com.bytedance.sdk.component.ROR.Qhi.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.fl.4
            @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
            public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, com.bytedance.sdk.component.ROR.cJ cJVar) {
                if (cJVar.Tgh() && cJVar.fl() != null && cJVar.fl().exists()) {
                    Qhi qhi2 = qhi;
                    if (qhi2 != null) {
                        qhi2.Qhi(true, null);
                    }
                    fl.this.Qhi(true, tPVar, cJVar.Qhi(), cJVar.cJ());
                    return;
                }
                Qhi qhi3 = qhi;
                if (qhi3 != null) {
                    qhi3.Qhi(false, null);
                }
                fl.this.Qhi(false, tPVar, cJVar.Qhi(), cJVar.cJ());
            }

            @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
            public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, IOException iOException) {
                Qhi qhi2 = qhi;
                if (qhi2 != null) {
                    qhi2.Qhi(false, null);
                }
                fl.this.Qhi(false, tPVar, -2L, iOException.getMessage());
            }
        });
    }

    private File Qhi(String str, int i) {
        return new File(CacheDirFactory.getICacheDir(i).Qhi(), str);
    }

    public void Qhi(String str) {
        this.ac.fl(str);
    }
}
