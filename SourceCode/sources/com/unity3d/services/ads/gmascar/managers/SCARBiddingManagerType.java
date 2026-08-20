package com.unity3d.services.ads.gmascar.managers;
/* loaded from: classes3.dex */
public enum SCARBiddingManagerType {
    DISABLED("dis"),
    EAGER("eag"),
    LAZY("laz"),
    HYBRID("hyb");
    
    private final String name;

    SCARBiddingManagerType(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static SCARBiddingManagerType fromName(String str) {
        char c2;
        switch (str.hashCode()) {
            case 99470:
                if (str.equals("dis")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 100171:
                if (str.equals("eag")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 103793:
                if (str.equals("hyb")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 106917:
                if (str.equals("laz")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                if (c2 == 2) {
                    return HYBRID;
                }
                return DISABLED;
            }
            return LAZY;
        }
        return EAGER;
    }

    /* loaded from: classes3.dex */
    private static class Constants {
        private static final String DIS = "dis";
        private static final String EAG = "eag";
        private static final String HYB = "hyb";
        private static final String LAZ = "laz";

        private Constants() {
        }
    }
}
