package com.bytedance.sdk.component.adexpress.Qhi.ac;

import android.text.TextUtils;
import android.util.Pair;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: TempPkgModel.java */
/* loaded from: classes2.dex */
public class Qhi {
    private List<C0188Qhi> CJ;
    private String Qhi;
    private Map<String, Qhi> Tgh = new ConcurrentHashMap();
    private String ac;
    private String cJ;
    private cJ fl;

    public Map<String, Qhi> Qhi() {
        return this.Tgh;
    }

    public String cJ() {
        return this.Qhi;
    }

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public String ac() {
        return this.cJ;
    }

    public void cJ(String str) {
        this.cJ = str;
    }

    public String CJ() {
        return this.ac;
    }

    public void ac(String str) {
        this.ac = str;
    }

    public void Qhi(cJ cJVar) {
        this.fl = cJVar;
    }

    public cJ fl() {
        return this.fl;
    }

    public List<C0188Qhi> Tgh() {
        if (this.CJ == null) {
            this.CJ = new ArrayList();
        }
        return this.CJ;
    }

    public void Qhi(List<C0188Qhi> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.CJ = list;
    }

    public boolean ROR() {
        return (TextUtils.isEmpty(CJ()) || TextUtils.isEmpty(ac()) || TextUtils.isEmpty(cJ())) ? false : true;
    }

    public JSONObject Sf() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", cJ());
            jSONObject.putOpt(MediationMetaData.KEY_VERSION, ac());
            jSONObject.putOpt("main", CJ());
            JSONArray jSONArray = new JSONArray();
            if (Tgh() != null) {
                for (C0188Qhi c0188Qhi : Tgh()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", c0188Qhi.Qhi());
                    jSONObject2.putOpt("md5", c0188Qhi.cJ());
                    jSONObject2.putOpt("level", Integer.valueOf(c0188Qhi.ac()));
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            if (!this.Tgh.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                boolean z = false;
                for (String str : this.Tgh.keySet()) {
                    Qhi qhi = this.Tgh.get(str);
                    if (qhi != null) {
                        jSONObject3.put(str, qhi.Sf());
                        z = true;
                    }
                }
                if (z) {
                    jSONObject.put("engines", jSONObject3);
                }
            }
            cJ fl = fl();
            if (fl != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("url", fl.Qhi);
                jSONObject4.put("md5", fl.cJ);
                JSONObject jSONObject5 = new JSONObject();
                List<Pair<String, String>> cJ2 = fl.cJ();
                if (cJ2 != null) {
                    for (Pair<String, String> pair : cJ2) {
                        jSONObject5.put((String) pair.first, pair.second);
                    }
                }
                jSONObject4.put("map", jSONObject5);
                jSONObject.putOpt("resources_archive", jSONObject4);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String hm() {
        JSONObject Sf;
        if (!ROR() || (Sf = Sf()) == null) {
            return null;
        }
        return Sf.toString();
    }

    /* compiled from: TempPkgModel.java */
    /* renamed from: com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0188Qhi {
        private String Qhi;
        private int ac;
        private String cJ;

        public boolean equals(Object obj) {
            String str;
            if (obj instanceof C0188Qhi) {
                String str2 = this.Qhi;
                if (str2 != null) {
                    C0188Qhi c0188Qhi = (C0188Qhi) obj;
                    if (str2.equals(c0188Qhi.Qhi()) && (str = this.cJ) != null && str.equals(c0188Qhi.cJ())) {
                        return true;
                    }
                }
                return false;
            }
            return super.equals(obj);
        }

        public String Qhi() {
            return this.Qhi;
        }

        public void Qhi(String str) {
            this.Qhi = str;
        }

        public String cJ() {
            return this.cJ;
        }

        public void cJ(String str) {
            this.cJ = str;
        }

        public int ac() {
            return this.ac;
        }

        public void Qhi(int i) {
            this.ac = i;
        }
    }

    /* compiled from: TempPkgModel.java */
    /* loaded from: classes2.dex */
    public static class cJ {
        private String Qhi;
        private List<Pair<String, String>> ac;
        private String cJ;

        public String Qhi() {
            return this.Qhi;
        }

        public void Qhi(String str) {
            this.Qhi = str;
        }

        public void cJ(String str) {
            this.cJ = str;
        }

        public void Qhi(List<Pair<String, String>> list) {
            this.ac = list;
        }

        public List<Pair<String, String>> cJ() {
            return this.ac;
        }
    }

    public static Qhi CJ(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Qhi(new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public static Qhi Qhi(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null) {
            return null;
        }
        Qhi qhi = new Qhi();
        qhi.Qhi(jSONObject.optString("name"));
        qhi.cJ(jSONObject.optString(MediationMetaData.KEY_VERSION));
        qhi.ac(jSONObject.optString("main"));
        JSONArray optJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray != null && optJSONArray.length() > 0) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                C0188Qhi c0188Qhi = new C0188Qhi();
                c0188Qhi.Qhi(optJSONObject2.optString("url"));
                c0188Qhi.cJ(optJSONObject2.optString("md5"));
                c0188Qhi.Qhi(optJSONObject2.optInt("level"));
                arrayList.add(c0188Qhi);
            }
        }
        qhi.Qhi(arrayList);
        try {
            JSONObject optJSONObject3 = jSONObject.optJSONObject("engines");
            if (optJSONObject3 != null) {
                Iterator<String> keys = optJSONObject3.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Qhi Qhi = Qhi(optJSONObject3.optJSONObject(next));
                    if (Qhi != null) {
                        qhi.Qhi().put(next, Qhi);
                    }
                }
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
        if (jSONObject.has("resources_archive") && (optJSONObject = jSONObject.optJSONObject("resources_archive")) != null) {
            cJ cJVar = new cJ();
            cJVar.Qhi(optJSONObject.optString("url"));
            cJVar.cJ(optJSONObject.optString("md5"));
            JSONObject optJSONObject4 = optJSONObject.optJSONObject("map");
            if (optJSONObject4 != null) {
                Iterator<String> keys2 = optJSONObject4.keys();
                ArrayList arrayList2 = new ArrayList();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    arrayList2.add(new Pair<>(next2, optJSONObject4.optString(next2)));
                }
                cJVar.Qhi(arrayList2);
            }
            qhi.Qhi(cJVar);
        }
        if (qhi.ROR()) {
            return qhi;
        }
        return null;
    }
}
