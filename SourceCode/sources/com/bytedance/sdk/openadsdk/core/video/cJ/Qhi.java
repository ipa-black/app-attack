package com.bytedance.sdk.openadsdk.core.video.cJ;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.Eh;
import com.bytedance.sdk.component.utils.ROR;
import com.bytedance.sdk.component.utils.Tgh;
import com.bytedance.sdk.component.utils.pA;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: PlayableCache.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static volatile Qhi Qhi;
    private String cJ;
    private final Map<tP, cJ> ac = Collections.synchronizedMap(new HashMap());
    private final Map<String, JSONObject> CJ = Collections.synchronizedMap(new HashMap());
    private final AtomicBoolean fl = new AtomicBoolean(false);
    private final Set<String> Tgh = Collections.synchronizedSet(new HashSet());
    private final Map<String, String> ROR = Collections.synchronizedMap(new HashMap());

    /* compiled from: PlayableCache.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.video.cJ.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0235Qhi {
    }

    public static Qhi Qhi() {
        if (Qhi == null) {
            synchronized (Qhi.class) {
                if (Qhi == null) {
                    Qhi = new Qhi();
                }
            }
        }
        return Qhi;
    }

    private Qhi() {
    }

    public boolean Qhi(tP tPVar) {
        if (this.fl.get() && tPVar != null && tPVar.FQ() != null && tPVar.FQ().ABk() != null) {
            try {
                if (!TextUtils.isEmpty(this.ROR.get(Tgh.Qhi(tPVar.FQ().ABk())))) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public void cJ() {
        if (this.fl.get()) {
            return;
        }
        lG.Qhi(new hm("PlayableCache_init") { // from class: com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.1
            @Override // java.lang.Runnable
            public void run() {
                File[] listFiles;
                try {
                    String ac = Qhi.this.ac();
                    if (!TextUtils.isEmpty(ac)) {
                        File file = new File(ac);
                        if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                            for (File file2 : listFiles) {
                                if (file2 != null) {
                                    try {
                                        File ac2 = Qhi.this.ac(file2);
                                        if (ac2 != null && ac2.exists()) {
                                            Qhi.this.ROR.put(file2.getName(), ac2.getAbsolutePath());
                                        }
                                        Qhi.this.Qhi(Qhi.this.Qhi(ac2), true);
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable unused2) {
                }
                Qhi.this.fl.set(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject Qhi(File file, boolean z) {
        byte[] CJ;
        String cJ2;
        try {
            if (!cJ(file) || (CJ = ROR.CJ(file)) == null || CJ.length <= 0) {
                return null;
            }
            if (TextUtils.equals(file.getName(), "tt_open_ad_sdk_check_res.dat")) {
                cJ2 = com.bytedance.sdk.component.utils.Qhi.ac(new String(CJ));
            } else {
                cJ2 = com.bytedance.sdk.component.CJ.Qhi.cJ(new String(CJ), com.bytedance.sdk.openadsdk.core.Qhi.cJ());
            }
            if (TextUtils.isEmpty(cJ2)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(cJ2);
            if (z && jSONObject.length() > 0) {
                this.CJ.put(file.getParentFile().getName(), jSONObject);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File Qhi(File file) {
        File file2 = new File(file, "tt_open_ad_sdk_check_res.dat");
        return cJ(file2) ? file2 : new File(file, "tt_open_ad_sdk_check_res.dat");
    }

    private boolean cJ(File file) {
        return file != null && file.exists() && file.isFile() && file.canRead();
    }

    public WebResourceResponse Qhi(String str, String str2, String str3) {
        File ac;
        try {
        } catch (Throwable th) {
            ABk.Qhi("PlayableCache", "playable intercept error: ", th);
        }
        if (this.fl.get() && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            try {
                if ((str3.startsWith("http://") || str3.startsWith("https://")) && str3.contains("?")) {
                    str3 = str3.split("\\?")[0];
                    if (str3.endsWith("/")) {
                        str3 = str3.substring(0, str3.length() - 1);
                    }
                }
            } catch (Throwable unused) {
            }
            String Qhi2 = pA.Qhi(HzH.Qhi(), str3);
            if (TextUtils.isEmpty(Qhi2)) {
                return null;
            }
            String Qhi3 = Tgh.Qhi(str);
            if (TextUtils.isEmpty(Qhi3)) {
                return null;
            }
            String str4 = this.ROR.get(Qhi3);
            if (!TextUtils.isEmpty(str4)) {
                ac = new File(str4);
            } else {
                ac = ac(new File(ac(), Qhi3));
                if (ac != null && ac.exists()) {
                    this.ROR.put(Qhi3, ac.getAbsolutePath());
                }
            }
            if (ac != null && ac.exists()) {
                String Qhi4 = Qhi(str2);
                if (TextUtils.isEmpty(Qhi4)) {
                    return null;
                }
                String replace = str3.replace(Qhi4, "");
                if (!TextUtils.isEmpty(replace) && !replace.startsWith("https://") && !replace.startsWith("http://")) {
                    File file = new File(ac, replace);
                    if (file.exists() && Qhi(Qhi3, replace, file) && file.getCanonicalPath().startsWith(ac.getCanonicalPath())) {
                        return new WebResourceResponse(Qhi2, "utf-8", new FileInputStream(file));
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File ac(File file) {
        File[] listFiles;
        if (file != null && file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length != 0) {
            for (File file2 : listFiles) {
                if (file2 != null && file2.isFile() && "index.html".equals(file2.getName())) {
                    return file;
                }
            }
            for (File file3 : listFiles) {
                if (file3 != null && file3.isDirectory()) {
                    return ac(file3);
                }
            }
        }
        return null;
    }

    private String Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("\\?");
        if (split != null && split.length == 2) {
            String str2 = split[0];
            if (str2 != null && str2.endsWith("/")) {
                str = str.substring(0, split.length - 1);
            }
            String str3 = split[0];
            if (str3 != null && str3.endsWith("index.html")) {
                str = split[0];
            }
        }
        return str.replace("index.html", "");
    }

    private boolean Qhi(String str, String str2, File file) {
        if (file != null && file.exists()) {
            JSONObject jSONObject = this.CJ.get(str);
            if (jSONObject == null) {
                return true;
            }
            String optString = jSONObject.optString(str2);
            if (optString != null && optString.equalsIgnoreCase(Tgh.Qhi(file))) {
                return true;
            }
        }
        return false;
    }

    public void Qhi(final tP tPVar, final InterfaceC0235Qhi interfaceC0235Qhi) {
        File file;
        if (tPVar == null || tPVar.FQ() == null || TextUtils.isEmpty(tPVar.FQ().ABk())) {
            com.bytedance.sdk.openadsdk.core.video.cJ.cJ.Qhi(tPVar, -701, (String) null);
            Qhi(interfaceC0235Qhi, false);
            return;
        }
        final String ABk = tPVar.FQ().ABk();
        if (this.Tgh.contains(ABk)) {
            return;
        }
        this.ac.put(tPVar, new cJ().Qhi(System.currentTimeMillis()));
        com.bytedance.sdk.openadsdk.core.video.cJ.cJ.Qhi(tPVar);
        String Qhi2 = Tgh.Qhi(ABk);
        final File file2 = new File(ac(), Qhi2);
        String str = this.ROR.get(Qhi2);
        if (TextUtils.isEmpty(str)) {
            file = ac(file2);
            if (file != null && file.exists()) {
                this.ROR.put(Qhi2, file.getAbsolutePath());
            }
        } else {
            file = new File(str);
        }
        if (file != null && file.exists()) {
            com.bytedance.sdk.openadsdk.core.video.cJ.cJ.Qhi(tPVar, -702, (String) null);
            fl(file2);
            this.ac.remove(tPVar);
            Qhi(interfaceC0235Qhi, true);
            return;
        }
        try {
            ROR.ac(file2);
        } catch (Throwable unused) {
        }
        this.Tgh.add(ABk);
        File file3 = new File(CJ(), Qhi2 + ".zip");
        com.bytedance.sdk.component.ROR.cJ.Qhi CJ = com.bytedance.sdk.openadsdk.iMK.ac.Qhi().cJ().CJ();
        CJ.cJ(ABk);
        CJ.Qhi(file3.getParent(), file3.getName());
        CJ.Qhi(7);
        CJ.Qhi("playable_download");
        CJ.Qhi(new com.bytedance.sdk.component.ROR.Qhi.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.2
            @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
            public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, final com.bytedance.sdk.component.ROR.cJ cJVar) {
                Qhi.this.Tgh.remove(ABk);
                final cJ cJVar2 = (cJ) Qhi.this.ac.remove(tPVar);
                if (cJVar2 != null) {
                    cJVar2.cJ(System.currentTimeMillis());
                }
                if (cJVar.Tgh() && cJVar.fl() != null && cJVar.fl().exists()) {
                    lG.cJ(new hm("downloadZip") { // from class: com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            boolean z;
                            long j;
                            long j2;
                            try {
                                cJ cJVar3 = cJVar2;
                                if (cJVar3 != null) {
                                    cJVar3.ac(System.currentTimeMillis());
                                }
                                Eh.Qhi(cJVar.fl().getAbsolutePath(), file2.getAbsolutePath());
                                cJ cJVar4 = cJVar2;
                                if (cJVar4 != null) {
                                    cJVar4.CJ(System.currentTimeMillis());
                                }
                                cJ cJVar5 = cJVar2;
                                if (cJVar5 != null) {
                                    j = cJVar5.Qhi();
                                    j2 = cJVar2.cJ();
                                } else {
                                    j = 0;
                                    j2 = 0;
                                }
                                com.bytedance.sdk.openadsdk.core.video.cJ.cJ.Qhi(tPVar, j, j2);
                                Qhi.this.CJ(file2);
                                z = true;
                                try {
                                    File ac = Qhi.this.ac(file2);
                                    if (ac != null && ac.exists()) {
                                        Qhi.this.ROR.put(file2.getName(), ac.getAbsolutePath());
                                    }
                                    Qhi.this.Qhi(Qhi.this.Qhi(ac), true);
                                } catch (Throwable unused2) {
                                }
                            } catch (Throwable th) {
                                ABk.Qhi("PlayableCache", "unzip error: ", th);
                                com.bytedance.sdk.openadsdk.core.video.cJ.cJ.Qhi(tPVar, -704, th.getMessage());
                                z = false;
                            }
                            try {
                                cJVar.fl().delete();
                            } catch (Throwable unused3) {
                            }
                            Qhi.this.Qhi(interfaceC0235Qhi, z);
                        }
                    });
                    return;
                }
                com.bytedance.sdk.openadsdk.core.video.cJ.cJ.Qhi(tPVar, cJVar.Qhi() != 0 ? cJVar.Qhi() : -700, (String) null);
                Qhi.this.Qhi(interfaceC0235Qhi, false);
            }

            @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
            public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, IOException iOException) {
                Qhi.this.Tgh.remove(ABk);
                Qhi.this.ac.remove(tPVar);
                com.bytedance.sdk.openadsdk.core.video.cJ.cJ.Qhi(tPVar, -700, iOException.getMessage());
                Qhi.this.Qhi(interfaceC0235Qhi, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final InterfaceC0235Qhi interfaceC0235Qhi, final boolean z) {
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.3
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ(File file) {
        fl(file);
        try {
            com.bytedance.sdk.openadsdk.core.hm.cJ().iMK().Qhi(file);
        } catch (Throwable unused) {
        }
    }

    private void fl(File file) {
        try {
            if (!file.exists() || file.setLastModified(System.currentTimeMillis())) {
                return;
            }
            file.renameTo(file);
            file.lastModified();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String ac() {
        File file = new File(CJ(), "games");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    private String CJ() {
        if (TextUtils.isEmpty(this.cJ)) {
            try {
                File file = new File(HzH.Qhi().getCacheDir(), "playable");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.cJ = file.getAbsolutePath();
            } catch (Throwable th) {
                ABk.Qhi("PlayableCache", "init root path error: ".concat(String.valueOf(th)));
            }
        }
        return this.cJ;
    }

    /* compiled from: PlayableCache.java */
    /* loaded from: classes2.dex */
    private static class cJ {
        long CJ;
        long Qhi;
        long ac;
        long cJ;

        private cJ() {
        }

        public long Qhi() {
            return this.cJ - this.Qhi;
        }

        public long cJ() {
            return this.CJ - this.ac;
        }

        public cJ Qhi(long j) {
            this.Qhi = j;
            return this;
        }

        public cJ cJ(long j) {
            this.cJ = j;
            return this;
        }

        public cJ ac(long j) {
            this.ac = j;
            return this;
        }

        public cJ CJ(long j) {
            this.CJ = j;
            return this;
        }
    }
}
