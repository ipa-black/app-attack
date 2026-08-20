package com.bytedance.sdk.component.Tgh.Qhi.Tgh;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.security.SecureRandom;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: TrackAdUrlImpl.java */
/* loaded from: classes2.dex */
public class ac implements cJ {
    private final Context Qhi;
    private final Tgh cJ;

    static /* synthetic */ Random cJ() {
        return ac();
    }

    public ac(Context context, Tgh tgh) {
        this.Qhi = context;
        this.cJ = tgh;
    }

    public Context Qhi() {
        Context context = this.Qhi;
        return context == null ? hm.ROR().Tgh() : context;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Tgh.cJ
    public void Qhi(String str, List<String> list, boolean z, Map<String, String> map, int i, String str2) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (hpZ == null || hm.ROR().Tgh() == null || hpZ.CJ() == null || !hpZ.ac() || list == null || list.size() == 0) {
            return;
        }
        for (String str3 : list) {
            hpZ.CJ().execute(new Qhi(new fl(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), str3, z, i, str2), str, map));
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Tgh.cJ
    public Runnable Qhi(final fl flVar, final String str, final Map<String, String> map) {
        if (flVar == null || TextUtils.isEmpty(flVar.Qhi())) {
            return null;
        }
        return new Runnable() { // from class: com.bytedance.sdk.component.Tgh.Qhi.Tgh.ac.1
            @Override // java.lang.Runnable
            public void run() {
                if (ac.this.cJ.Qhi(flVar.Qhi()) != null) {
                    new Qhi(flVar, str, map).run();
                }
            }
        };
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Tgh.cJ
    public void Qhi(final String str, final boolean z) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (hpZ == null || hm.ROR().Tgh() == null || !hpZ.ac()) {
            return;
        }
        com.bytedance.sdk.component.Tgh.Qhi.fl.Tgh tgh = new com.bytedance.sdk.component.Tgh.Qhi.fl.Tgh("trackFailedUrls") { // from class: com.bytedance.sdk.component.Tgh.Qhi.Tgh.ac.2
            @Override // java.lang.Runnable
            public void run() {
                ac.this.Qhi(ac.this.cJ.Qhi(), str, z);
            }
        };
        tgh.Qhi(1);
        if (hpZ.CJ() != null) {
            hpZ.CJ().execute(tgh);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(List<fl> list, String str, boolean z) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        for (fl flVar : list) {
            if (hpZ != null && hpZ.CJ() != null) {
                flVar.Qhi(z);
                hpZ.CJ().execute(new Qhi(flVar, str, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TrackAdUrlImpl.java */
    /* loaded from: classes2.dex */
    public class Qhi extends com.bytedance.sdk.component.Tgh.Qhi.fl.Tgh {
        private final Map<String, String> CJ;
        private final String ac;
        private final fl cJ;

        private Qhi(fl flVar, String str, Map<String, String> map) {
            super("AdsStats");
            this.cJ = flVar;
            this.ac = str;
            this.CJ = map;
        }

        private String ac(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            if (str.contains("{TS}") || str.contains("__TS__")) {
                long currentTimeMillis = System.currentTimeMillis();
                str = str.replace("{TS}", String.valueOf(currentTimeMillis)).replace("__TS__", String.valueOf(currentTimeMillis));
            }
            return ((str.contains("{UID}") || str.contains("__UID__")) && !TextUtils.isEmpty(this.ac)) ? str.replace("{UID}", this.ac).replace("__UID__", this.ac) : str;
        }

        boolean Qhi(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.startsWith("http://") || str.startsWith("https://");
        }

        String cJ(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            try {
                return str.replace("[ss_random]", String.valueOf(ac.cJ().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
            } catch (Exception unused) {
                return str;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.Tgh.Qhi.fl.fl flVar;
            com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
            if (hpZ == null || hm.ROR().Tgh() == null || !hpZ.ac() || !Qhi(this.cJ.cJ())) {
                return;
            }
            if (this.cJ.CJ() >= hpZ.ac(this.cJ.Tgh())) {
                ac.this.cJ.ac(this.cJ);
                return;
            }
            try {
                hpZ.ABk();
                if (this.cJ.Gm()) {
                    ac.this.cJ.Qhi(this.cJ);
                }
                if (hpZ.Qhi(ac.this.Qhi())) {
                    long currentTimeMillis = System.currentTimeMillis();
                    String cJ = this.cJ.cJ();
                    if (hpZ.Tgh() == 0) {
                        cJ = ac(this.cJ.cJ());
                        if (this.cJ.ac()) {
                            cJ = cJ(cJ);
                        }
                    }
                    com.bytedance.sdk.component.Tgh.Qhi.fl.ac WAv = hpZ.WAv();
                    if (WAv == null) {
                        return;
                    }
                    WAv.Qhi("User-Agent", hpZ.hm());
                    WAv.Qhi("csj_client_source_from", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    if (this.CJ != null) {
                        JSONObject jSONObject = new JSONObject();
                        for (Map.Entry<String, String> entry : this.CJ.entrySet()) {
                            jSONObject.put(entry.getKey(), entry.getValue());
                        }
                        WAv.Qhi("csj_extra_info", jSONObject.toString());
                    }
                    WAv.Qhi(cJ);
                    try {
                        flVar = WAv.Qhi();
                        try {
                            hpZ.Qhi(flVar.Qhi());
                        } catch (Throwable unused) {
                        }
                    } catch (Throwable unused2) {
                        flVar = null;
                    }
                    fl flVar2 = this.cJ;
                    flVar2.Qhi(flVar2.CJ() + 1);
                    if (flVar != null && flVar.Qhi()) {
                        ac.this.cJ.ac(this.cJ);
                        this.cJ.cJ();
                        hpZ.Qhi(true, 200, System.currentTimeMillis() - currentTimeMillis, this.cJ);
                        return;
                    }
                    if (flVar != null) {
                        this.cJ.cJ(flVar.cJ());
                        this.cJ.ac(flVar.ac());
                    }
                    if (flVar != null && flVar.cJ() == 8848) {
                        flVar.ac();
                        ac.this.cJ.ac(this.cJ);
                    } else {
                        this.cJ.cJ();
                        if (this.cJ.CJ() >= hpZ.ac(this.cJ.Tgh())) {
                            ac.this.cJ.ac(this.cJ);
                            this.cJ.cJ();
                        } else {
                            ac.this.cJ.cJ(this.cJ);
                        }
                    }
                    hpZ.Qhi(false, this.cJ.Sf(), System.currentTimeMillis() - currentTimeMillis, this.cJ);
                }
            } catch (Throwable unused3) {
            }
        }
    }

    private static Random ac() {
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }
}
