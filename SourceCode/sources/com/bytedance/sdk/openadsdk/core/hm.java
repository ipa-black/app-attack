package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.core.bannerexpress.Qhi;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import com.bytedance.sdk.openadsdk.utils.js;
import com.onesignal.outcomes.OSOutcomeConstants;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GlobalInfo.java */
/* loaded from: classes2.dex */
public class hm {
    public static ABk Qhi = null;
    public static final Set<String> cJ = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.hm.1
        {
            add("8025677");
            add("5001121");
        }
    };
    private static boolean kYc = false;
    private boolean ABk;
    private String CJ;
    private com.bytedance.sdk.openadsdk.core.video.cJ.ac EBS;
    private int Gm;
    private Integer HzH;
    private boolean MQ;
    private int ROR;
    private boolean Sf;
    private String Tgh;
    private String WAv;
    private boolean ac;
    private volatile ConcurrentHashMap<String, Qhi.InterfaceC0223Qhi> bxS;
    private String fl;
    private String hm;
    private Integer hpZ;
    private Bitmap iMK;
    private Integer pA;
    private String qMt;
    private int tP;
    private boolean zc;

    public boolean pA() {
        return true;
    }

    public static void Qhi(ABk aBk) {
        Qhi = aBk;
    }

    public boolean Qhi() {
        return this.MQ;
    }

    public void Qhi(boolean z) {
        this.MQ = z;
    }

    private hm() {
        this.ac = false;
        this.Gm = 0;
        this.zc = true;
        this.ABk = false;
        this.iMK = null;
        this.pA = null;
        this.hpZ = null;
        this.HzH = null;
        this.tP = 0;
        this.bxS = null;
        try {
            com.bykv.vk.openvk.component.video.api.Tgh.Qhi.Qhi(HzH.Qhi());
        } catch (Throwable unused) {
        }
    }

    public static hm cJ() {
        return Qhi.Qhi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GlobalInfo.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private static final hm Qhi = new hm();
    }

    public boolean ac() {
        return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_file", "sdk_activate_init", true);
    }

    public void cJ(boolean z) {
        com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_file", "sdk_activate_init", Boolean.valueOf(z));
    }

    public String CJ() {
        if (TextUtils.isEmpty(this.CJ)) {
            String Qhi2 = Qhi(OSOutcomeConstants.APP_ID, Long.MAX_VALUE);
            if (!TextUtils.isEmpty(Qhi2)) {
                this.CJ = Qhi2;
            }
        }
        return this.CJ;
    }

    public void Qhi(String str) {
        Sf(str);
        this.CJ = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Qhi(OSOutcomeConstants.APP_ID, str);
        com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CJ(7);
    }

    public String fl() {
        String str = this.fl;
        if (str != null) {
            return str;
        }
        String Qhi2 = Qhi("mediation_info", Long.MAX_VALUE);
        this.fl = Qhi2;
        if (Qhi2 == null) {
            this.fl = "";
        }
        return this.fl;
    }

    public void cJ(String str) {
        this.fl = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Qhi("mediation_info", str);
    }

    public String Tgh() {
        if (TextUtils.isEmpty(this.Tgh)) {
            this.Tgh = Qhi(HzH.Qhi());
        }
        return this.Tgh;
    }

    private String Qhi(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public void Qhi(int i) {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_icon_id", "icon_id", Integer.valueOf(i));
        }
        this.ROR = i;
    }

    public int ROR() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_icon_id", "icon_id", 0);
        }
        return this.ROR;
    }

    public void cJ(final int i) {
        if (i == 0 || i == 1 || i == -1) {
            final Integer num = this.pA;
            if (num == null || num.intValue() != i) {
                this.pA = Integer.valueOf(i);
                if (!com.bytedance.sdk.openadsdk.utils.lG.fl()) {
                    Qhi(num, i);
                } else {
                    iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.hm.2
                        @Override // java.lang.Runnable
                        public void run() {
                            hm.this.Qhi(num, i);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(Integer num, int i) {
        if (num != null) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "sdk_coppa", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Qhi(3, true);
        } else if (com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "sdk_coppa", -1) != i) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "sdk_coppa", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Qhi(3, true);
        }
    }

    public int Sf() {
        Integer num = this.pA;
        if (num != null) {
            return num.intValue();
        }
        return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "sdk_coppa", -1);
    }

    public int hm() {
        Integer num = this.hpZ;
        if (num != null) {
            return num.intValue();
        }
        return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "tt_gdpr", -1);
    }

    public void ac(final int i) {
        if (i == 1) {
            i = 0;
        } else if (i == 0) {
            i = 1;
        }
        if (i == 0 || i == 1 || i == -1) {
            final Integer num = this.hpZ;
            if (num == null || num.intValue() != i) {
                this.hpZ = Integer.valueOf(i);
                if (!com.bytedance.sdk.openadsdk.utils.lG.fl()) {
                    cJ(num, i);
                } else {
                    iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.hm.3
                        @Override // java.lang.Runnable
                        public void run() {
                            hm.this.cJ(num, i);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(Integer num, int i) {
        if (num != null) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "tt_gdpr", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Qhi(4, true);
        } else if (com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "tt_gdpr", -1) != i) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "tt_gdpr", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Qhi(4, true);
        }
    }

    public void CJ(int i) {
        if (i != 0 && i != 1) {
            i = -99;
        }
        com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "global_coppa", Integer.valueOf(i));
        this.tP = i;
    }

    public int WAv() {
        int Qhi2 = com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "global_coppa", -99);
        this.tP = Qhi2;
        if (Qhi2 == -99) {
            this.tP = Sf();
        }
        return this.tP;
    }

    public boolean Gm() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_file", "is_paid", false);
        }
        return this.Sf;
    }

    public String zc() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.cJ("sp_global_file", "keywords", null);
        }
        return this.hm;
    }

    public String ABk() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.cJ("sp_global_file", "extra_data", null);
        }
        return this.WAv;
    }

    public void ac(final String str) {
        hm(str);
        if (com.bytedance.sdk.openadsdk.utils.lG.fl()) {
            iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.hm.4
                @Override // java.lang.Runnable
                public void run() {
                    if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                        com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_file", "extra_data", str);
                    }
                }
            });
        } else if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_file", "extra_data", str);
        }
        this.WAv = str;
    }

    public void fl(int i) {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_file", "title_bar_theme", Integer.valueOf(i));
        }
        this.Gm = i;
    }

    private static void Sf(String str) {
        ABk aBk;
        if (TextUtils.isEmpty(str) && (aBk = Qhi) != null) {
            aBk.fail(4000, "appid cannot be empty");
        }
        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.GlobalInfo", "appid cannot be empty");
    }

    private static void hm(String str) {
        if (TextUtils.isEmpty(str) || str.length() <= 1000) {
            return;
        }
        ABk aBk = Qhi;
        if (aBk != null) {
            aBk.fail(4000, "Data is very long, the longest is 1000");
        }
        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.GlobalInfo", "Data is very long, the longest is 1000");
    }

    public com.bytedance.sdk.openadsdk.core.video.cJ.ac iMK() {
        if (this.EBS == null) {
            this.EBS = new com.bytedance.sdk.openadsdk.core.video.cJ.ac(10, 8);
        }
        return this.EBS;
    }

    public Bitmap hpZ() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            return com.bytedance.sdk.component.utils.fl.Qhi(com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.cJ("sp_global_file", "pause_icon", null));
        }
        return this.iMK;
    }

    public boolean HzH() {
        return cJ.contains(this.CJ);
    }

    public boolean kYc() {
        return "com.union_test.internationad".equals(js.fl());
    }

    public String tP() {
        if (!TextUtils.isEmpty(this.qMt)) {
            return this.qMt;
        }
        String Qhi2 = com.bytedance.sdk.openadsdk.utils.WAv.Qhi();
        this.qMt = Qhi2;
        if (!TextUtils.isEmpty(Qhi2)) {
            return this.qMt;
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        com.bytedance.sdk.openadsdk.utils.WAv.Qhi(valueOf);
        this.qMt = valueOf;
        return valueOf;
    }

    private static JSONObject WAv(String str) {
        String cJ2 = com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.cJ("sp_global_file", str, null);
        if (TextUtils.isEmpty(cJ2)) {
            return null;
        }
        try {
            return new JSONObject(cJ2);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.GlobalInfo", e2.getMessage());
            return null;
        }
    }

    public static void Qhi(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("value", str2);
            jSONObject.put("time", System.currentTimeMillis());
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_file", str, jSONObject.toString());
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.GlobalInfo", e2.getMessage());
        }
    }

    public static String Qhi(String str, long j) {
        JSONObject WAv;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            WAv = WAv(str);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.GlobalInfo", e2.getMessage());
        }
        if (WAv == null) {
            return null;
        }
        if (System.currentTimeMillis() - WAv.getLong("time") <= j) {
            return WAv.getString("value");
        }
        return null;
    }

    public static Pair<String, Long> CJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject WAv = WAv(str);
            if (WAv == null) {
                return null;
            }
            return new Pair<>(WAv.getString("value"), Long.valueOf(WAv.getLong("time")));
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.GlobalInfo", e2.getMessage());
            return null;
        }
    }

    public int MQ() {
        Integer num = this.HzH;
        if (num != null) {
            return num.intValue();
        }
        return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "global_ccpa", -1);
    }

    public void Tgh(final int i) {
        if (i == 0 || i == 1 || i == -1) {
            final Integer num = this.HzH;
            if (num == null || num.intValue() != i) {
                this.HzH = Integer.valueOf(i);
                if (!com.bytedance.sdk.openadsdk.utils.lG.fl()) {
                    ac(num, i);
                } else {
                    iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.hm.5
                        @Override // java.lang.Runnable
                        public void run() {
                            hm.this.ac(num, i);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac(Integer num, int i) {
        if (num != null) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "global_ccpa", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Qhi(5, true);
        } else if (com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "global_ccpa", -1) != i) {
            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("sp_global_privacy", "global_ccpa", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.HzH.YD().Qhi(5, true);
        }
    }

    public Qhi.InterfaceC0223Qhi fl(String str) {
        if (this.bxS == null || str == null) {
            return null;
        }
        return this.bxS.get(str);
    }

    public void Qhi(String str, Qhi.InterfaceC0223Qhi interfaceC0223Qhi) {
        if (TextUtils.isEmpty(str) || interfaceC0223Qhi == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            TTDislikeListView.Qhi(6, str, interfaceC0223Qhi);
            return;
        }
        if (this.bxS == null) {
            synchronized (hm.class) {
                if (this.bxS == null) {
                    this.bxS = new ConcurrentHashMap<>();
                }
            }
        }
        if (this.bxS != null) {
            this.bxS.put(str, interfaceC0223Qhi);
        }
    }

    public void Tgh(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            TTDislikeListView.Qhi(6, str);
        } else if (this.bxS != null) {
            this.bxS.remove(str);
        }
    }

    public void qMt() {
        try {
            if (this.bxS == null || this.bxS.size() != 0) {
                return;
            }
            this.bxS = null;
        } catch (NullPointerException e2) {
            new Object[]{"removeClickCloseListenerObj()", e2.getMessage()};
        }
    }

    public void ac(boolean z) {
        this.ac = z;
    }

    public static boolean EBS() {
        return kYc;
    }

    public static void bxS() {
        if (Build.VERSION.SDK_INT == 26 && "MI 6".equals(Build.MODEL)) {
            kYc = true;
        }
    }

    public static boolean ROR(String str) {
        return (!com.bytedance.sdk.openadsdk.utils.Dww.Qhi || str.contains("sp_full_screen_video") || str.contains("sp_reward_video") || str.contains("tt_openad") || str.contains("pag_sp_bad_par")) ? false : true;
    }
}
