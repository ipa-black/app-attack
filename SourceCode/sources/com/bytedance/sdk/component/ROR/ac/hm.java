package com.bytedance.sdk.component.ROR.ac;

import android.content.Context;
import java.util.HashMap;
/* compiled from: TncInstanceManager.java */
/* loaded from: classes2.dex */
public class hm {
    private static volatile hm Qhi;
    private static HashMap<Integer, Qhi> ac;
    private static HashMap<Integer, ROR> cJ;

    private hm() {
        cJ = new HashMap<>();
        ac = new HashMap<>();
    }

    public static synchronized hm Qhi() {
        hm hmVar;
        synchronized (hm.class) {
            if (Qhi == null) {
                synchronized (hm.class) {
                    if (Qhi == null) {
                        Qhi = new hm();
                    }
                }
            }
            hmVar = Qhi;
        }
        return hmVar;
    }

    public ROR Qhi(int i) {
        ROR ror = cJ.get(Integer.valueOf(i));
        if (ror == null) {
            ROR ror2 = new ROR(i);
            cJ.put(Integer.valueOf(i), ror2);
            return ror2;
        }
        return ror;
    }

    public Qhi Qhi(int i, Context context) {
        Qhi qhi = ac.get(Integer.valueOf(i));
        if (qhi == null) {
            Qhi qhi2 = new Qhi(context, i);
            ac.put(Integer.valueOf(i), qhi2);
            return qhi2;
        }
        return qhi;
    }
}
