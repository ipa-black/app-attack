package com.iab.omid.library.ironsrc.adsession;

import com.onesignal.OSInAppMessageContentKt;
/* loaded from: classes2.dex */
public enum AdSessionContextType {
    HTML(OSInAppMessageContentKt.HTML),
    NATIVE("native"),
    JAVASCRIPT("javascript");
    
    private final String typeString;

    AdSessionContextType(String str) {
        this.typeString = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.typeString;
    }
}
