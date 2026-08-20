package com.bytedance.sdk.component.adexpress.Qhi.cJ;

import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.component.adexpress.CJ.Eh;
import com.bytedance.sdk.component.adexpress.CJ.qMt;
import com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi;
import com.bytedance.sdk.component.utils.ABk;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: TTDynamic.java */
/* loaded from: classes2.dex */
public class cJ {
    static Object Qhi = new Object();

    public static void Qhi() {
        Tgh.cJ();
    }

    public static void cJ() {
        try {
            hm.CJ();
            File Sf = Tgh.Sf();
            if (Sf == null || !Sf.exists()) {
                return;
            }
            if (Sf.getParentFile() != null) {
                com.bytedance.sdk.component.utils.ROR.ac(Sf.getParentFile());
            } else {
                com.bytedance.sdk.component.utils.ROR.ac(Sf);
            }
        } catch (Throwable unused) {
        }
    }

    public static String ac() {
        return ROR.ac();
    }

    public static com.bytedance.sdk.component.adexpress.Qhi.ac.cJ Qhi(String str) {
        return Sf.Qhi().Qhi(str);
    }

    public static void Qhi(com.bytedance.sdk.component.adexpress.Qhi.ac.fl flVar) {
        Sf.Qhi().Qhi(flVar, flVar.Tgh);
    }

    public static Set<String> cJ(String str) {
        return Sf.Qhi().cJ(str);
    }

    public static com.bytedance.sdk.component.adexpress.Qhi.ac.cJ ac(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.Qhi.ac.cJ Qhi2 = Sf.Qhi().Qhi(str);
        if (Qhi2 != null) {
            Qhi2.Qhi(Long.valueOf(System.currentTimeMillis()));
            Qhi(Qhi2);
        }
        return Qhi2;
    }

    private static void Qhi(final com.bytedance.sdk.component.adexpress.Qhi.ac.cJ cJVar) {
        qMt.Qhi(new com.bytedance.sdk.component.Sf.hm("updateTmplTime") { // from class: com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (cJ.Qhi) {
                    ROR.Qhi().Qhi(cJVar, true);
                }
            }
        }, 10);
    }

    public static com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi CJ() {
        return Tgh.cJ().Tgh();
    }

    @Deprecated
    private static String Tgh() {
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi CJ = CJ();
        if (CJ == null) {
            return null;
        }
        return CJ.CJ();
    }

    public static String CJ(String str) {
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi;
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi CJ = CJ();
        if (CJ == null) {
            return null;
        }
        if (!TextUtils.isEmpty(str)) {
            Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> Qhi2 = CJ.Qhi();
            if (Qhi2 == null || Qhi2.size() <= 0 || (qhi = Qhi2.get(str)) == null) {
                return null;
            }
            return qhi.CJ();
        }
        return Tgh();
    }

    public static boolean fl() {
        return Tgh.cJ().fl();
    }

    public static Qhi Qhi(String str, Eh.Qhi qhi, String str2, String str3) {
        File file;
        Qhi qhi2 = new Qhi();
        if (TextUtils.isEmpty(str3)) {
            file = null;
        } else {
            file = cJ(str3, str);
            if (file != null) {
                qhi2.Qhi(1);
            }
        }
        if (file == null && (file = ROR(str)) != null) {
            qhi2.Qhi(3);
        }
        if (file == null && (file = Tgh(str)) != null) {
            qhi2.Qhi(2);
        }
        if (!TextUtils.isEmpty(str3)) {
            if (!Qhi(str, str3)) {
                qhi2.Qhi(4);
            }
        } else if (!fl(str)) {
            qhi2.Qhi(6);
        }
        qhi2.cJ();
        if (file != null) {
            try {
                qhi2.Qhi(new WebResourceResponse(qhi.Qhi(), "utf-8", new FileInputStream(file)));
            } catch (Throwable th) {
                ABk.Qhi("TTDynamic", "get html WebResourceResponse error", th);
            }
        }
        return qhi2;
    }

    private static boolean Qhi(String str, String str2) {
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi CJ;
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi;
        if (!fl() || (CJ = CJ()) == null) {
            return false;
        }
        Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> Qhi2 = CJ.Qhi();
        if (Qhi2.size() == 0 || (qhi = Qhi2.get(str2)) == null) {
            return false;
        }
        for (Qhi.C0188Qhi c0188Qhi : qhi.Tgh()) {
            if (c0188Qhi != null && TextUtils.equals(str, c0188Qhi.Qhi())) {
                return true;
            }
        }
        return false;
    }

    private static boolean fl(String str) {
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi CJ;
        List<Qhi.C0188Qhi> Tgh;
        if (!fl() || (CJ = CJ()) == null || (Tgh = CJ.Tgh()) == null) {
            return false;
        }
        for (Qhi.C0188Qhi c0188Qhi : Tgh) {
            if (c0188Qhi != null && TextUtils.equals(str, c0188Qhi.Qhi())) {
                return true;
            }
        }
        return false;
    }

    private static File Tgh(String str) {
        if (fl()) {
            for (Qhi.C0188Qhi c0188Qhi : CJ().Tgh()) {
                if (c0188Qhi.Qhi() != null && c0188Qhi.Qhi().equals(str)) {
                    File file = new File(Tgh.Sf(), com.bytedance.sdk.component.utils.Tgh.Qhi(c0188Qhi.Qhi()));
                    String Qhi2 = com.bytedance.sdk.component.utils.Tgh.Qhi(file);
                    if (c0188Qhi.cJ() == null || !c0188Qhi.cJ().equals(Qhi2)) {
                        return null;
                    }
                    return file;
                }
            }
            return null;
        }
        return null;
    }

    private static File ROR(String str) {
        List<Pair<String, String>> cJ;
        Qhi.cJ fl = CJ().fl();
        if (fl == null || (cJ = fl.cJ()) == null || cJ.size() <= 0) {
            return null;
        }
        for (Pair<String, String> pair : cJ) {
            if (pair.second != null && ((String) pair.second).equals(str)) {
                return new File(Tgh.Sf(), (String) pair.first);
            }
        }
        return null;
    }

    private static File cJ(String str, String str2) {
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi;
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi CJ = CJ();
        if (CJ == null || !fl()) {
            return null;
        }
        Map<String, com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi> Qhi2 = CJ.Qhi();
        if (Qhi2.size() == 0 || (qhi = Qhi2.get(str)) == null) {
            return null;
        }
        for (Qhi.C0188Qhi c0188Qhi : qhi.Tgh()) {
            if (c0188Qhi.Qhi() != null && c0188Qhi.Qhi().equals(str2)) {
                File file = new File(Tgh.Sf(), com.bytedance.sdk.component.utils.Tgh.Qhi(c0188Qhi.Qhi()));
                String Qhi3 = com.bytedance.sdk.component.utils.Tgh.Qhi(file);
                if (c0188Qhi.cJ() == null || !c0188Qhi.cJ().equals(Qhi3)) {
                    return null;
                }
                return file;
            }
        }
        return null;
    }

    public static boolean Qhi(JSONObject jSONObject) {
        Object opt;
        return (jSONObject == null || (opt = jSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(opt.toString())) ? false : true;
    }

    public static boolean cJ(JSONObject jSONObject) {
        Object opt;
        if (jSONObject == null) {
            return false;
        }
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("creatives");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject == null || (opt = optJSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(opt.toString())) {
                        return false;
                    }
                }
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }
}
