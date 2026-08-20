package com.bytedance.adsdk.Qhi.cJ.CJ;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.slf4j.Marker;
/* compiled from: Operator.java */
/* loaded from: classes2.dex */
public enum Tgh implements Sf {
    QUESTION("?", 0),
    COLON(":", 0),
    DOUBLE_AMP("&&", 1),
    DOUBLE_BAR("||", 1),
    EQ("==", 2),
    GT(">", 2),
    LT("<", 2),
    LT_EQ("<=", 2),
    GT_EQ(">=", 2),
    NOT_EQ("!=", 2),
    PLUS(Marker.ANY_NON_NULL_MARKER, 3),
    MINUS("-", 3),
    MULTI(Marker.ANY_MARKER, 4),
    DIVISION("/", 4),
    MOD("%", 4);
    
    private final String kYc;
    private final int tP;
    private static final Map<String, Tgh> hpZ = new HashMap(128);
    private static final Set<Tgh> HzH = new HashSet();

    static {
        Tgh[] values;
        for (Tgh tgh : values()) {
            hpZ.put(tgh.Qhi(), tgh);
            HzH.add(tgh);
        }
    }

    Tgh(String str, int i) {
        this.kYc = str;
        this.tP = i;
    }

    public static Tgh Qhi(String str) {
        return hpZ.get(str);
    }

    public static boolean Qhi(Sf sf) {
        return sf instanceof Tgh;
    }

    public String Qhi() {
        return this.kYc;
    }

    public int cJ() {
        return this.tP;
    }
}
