package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.im  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public enum EnumC1619im {
    LOGIN("login"),
    LOGOUT("logout"),
    SWITCH("switch"),
    UPDATE("update");
    

    /* renamed from: a  reason: collision with root package name */
    private String f14934a;

    EnumC1619im(String str) {
        this.f14934a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f14934a;
    }
}
