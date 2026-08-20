package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Bd {

    /* renamed from: a  reason: collision with root package name */
    public final String f12697a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f12698b;

    public Bd(String str, boolean z) {
        this.f12697a = str;
        this.f12698b = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Bd.class != obj.getClass()) {
            return false;
        }
        Bd bd = (Bd) obj;
        if (this.f12698b != bd.f12698b) {
            return false;
        }
        return this.f12697a.equals(bd.f12697a);
    }

    public int hashCode() {
        return (this.f12697a.hashCode() * 31) + (this.f12698b ? 1 : 0);
    }

    public String toString() {
        return "PermissionState{name='" + this.f12697a + "', granted=" + this.f12698b + '}';
    }
}
