package com.bytedance.adsdk.Qhi.cJ;

import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.Gm;
import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ROR;
import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.Sf;
import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.Tgh;
import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.WAv;
import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ac;
import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.cJ;
import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.fl;
import com.bytedance.adsdk.Qhi.cJ.ac.Qhi.hm;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Expression.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static final com.bytedance.adsdk.Qhi.cJ.ac.Qhi Qhi;
    private Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> CJ = new LinkedList();
    private com.bytedance.adsdk.Qhi.cJ.cJ.Qhi ac;
    private final com.bytedance.adsdk.Qhi.cJ.ac.Qhi cJ;
    private String fl;

    static {
        int i = 8;
        ROR[] rorArr = {new Gm(), new fl(), new WAv(), new cJ(), new Tgh(), new com.bytedance.adsdk.Qhi.cJ.ac.Qhi.Qhi(), new Sf(), new ac(), new hm()};
        final com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi = new com.bytedance.adsdk.Qhi.cJ.ac.Qhi() { // from class: com.bytedance.adsdk.Qhi.cJ.Qhi.1
            @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi
            public int Qhi(String str, int i2, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque) {
                return i2;
            }
        };
        while (i >= 0) {
            final ROR ror = rorArr[i];
            i--;
            qhi = new com.bytedance.adsdk.Qhi.cJ.ac.Qhi() { // from class: com.bytedance.adsdk.Qhi.cJ.Qhi.2
                @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi
                public int Qhi(String str, int i2, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque) {
                    return ROR.this.Qhi(str, i2, deque, qhi);
                }
            };
        }
        Qhi = qhi;
    }

    private Qhi(String str, com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi) {
        this.cJ = qhi;
        this.fl = str;
        try {
            Qhi();
        } catch (Exception e2) {
            throw new com.bytedance.adsdk.Qhi.Qhi.cJ(str, e2);
        }
    }

    public static Qhi Qhi(String str) {
        return new Qhi(str, Qhi);
    }

    private void Qhi() {
        int length = this.fl.length();
        int i = 0;
        while (i < length) {
            int Qhi2 = this.cJ.Qhi(this.fl, i, this.CJ);
            if (Qhi2 == i) {
                throw new IllegalArgumentException("Unrecognized expression, unrecognized characters encountered during parsing:" + this.fl.substring(0, i));
            }
            i = Qhi2;
        }
        ArrayList arrayList = new ArrayList();
        while (true) {
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi pollFirst = this.CJ.pollFirst();
            if (pollFirst != null) {
                arrayList.add(0, pollFirst);
            } else {
                this.ac = com.bytedance.adsdk.Qhi.cJ.fl.cJ.Qhi(arrayList, this.fl, i);
                this.CJ = null;
                return;
            }
        }
    }

    public <T> T Qhi(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        hashMap.put("default_key", jSONObject);
        return (T) Qhi(hashMap);
    }

    public <T> T Qhi(Map<String, JSONObject> map) {
        return (T) this.ac.Qhi(map);
    }
}
