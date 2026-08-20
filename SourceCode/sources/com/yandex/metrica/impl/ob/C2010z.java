package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.z  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2010z {

    /* renamed from: a  reason: collision with root package name */
    public final a f16122a;

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f16123b;

    /* renamed from: com.yandex.metrica.impl.ob.z$a */
    /* loaded from: classes5.dex */
    public enum a {
        ACTIVE,
        WORKING_SET,
        FREQUENT,
        RARE,
        RESTRICTED
    }

    public C2010z(a aVar, Boolean bool) {
        this.f16122a = aVar;
        this.f16123b = bool;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2010z.class != obj.getClass()) {
            return false;
        }
        C2010z c2010z = (C2010z) obj;
        if (this.f16122a != c2010z.f16122a) {
            return false;
        }
        Boolean bool = this.f16123b;
        if (bool != null) {
            return bool.equals(c2010z.f16123b);
        }
        return c2010z.f16123b == null;
    }

    public int hashCode() {
        a aVar = this.f16122a;
        int hashCode = (aVar != null ? aVar.hashCode() : 0) * 31;
        Boolean bool = this.f16123b;
        return hashCode + (bool != null ? bool.hashCode() : 0);
    }
}
