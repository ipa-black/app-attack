package com.bytedance.adsdk.Qhi.cJ.CJ;

import java.util.HashMap;
import java.util.Map;
/* compiled from: KeyWord.java */
/* loaded from: classes2.dex */
public enum ac implements Sf {
    TRUE,
    FALSE,
    NULL;
    
    private static final Map<String, ac> CJ = new HashMap(128);

    static {
        ac[] values;
        for (ac acVar : values()) {
            CJ.put(acVar.name().toLowerCase(), acVar);
        }
    }

    public static ac Qhi(String str) {
        return CJ.get(str.toLowerCase());
    }
}
