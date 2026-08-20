package com.appnext.base.services;
/* loaded from: classes.dex */
public final class a {
    private static volatile a eA;
    private String dP;

    private a() {
    }

    public static a aK() {
        if (eA == null) {
            synchronized (com.appnext.base.operations.b.class) {
                if (eA == null) {
                    eA = new a();
                }
            }
        }
        return eA;
    }

    public final synchronized void setKey(String str) {
        this.dP = str;
    }

    public final synchronized String getKey() {
        return this.dP;
    }
}
