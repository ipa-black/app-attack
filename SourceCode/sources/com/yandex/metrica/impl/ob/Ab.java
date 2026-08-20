package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Ab {

    /* renamed from: a  reason: collision with root package name */
    private final String f12630a;

    /* renamed from: b  reason: collision with root package name */
    private final com.yandex.metrica.appsetid.c f12631b;

    public Ab(String str, com.yandex.metrica.appsetid.c cVar) {
        this.f12630a = str;
        this.f12631b = cVar;
    }

    public final String a() {
        return this.f12630a;
    }

    public final com.yandex.metrica.appsetid.c b() {
        return this.f12631b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Ab) {
                Ab ab = (Ab) obj;
                return Intrinsics.areEqual(this.f12630a, ab.f12630a) && Intrinsics.areEqual(this.f12631b, ab.f12631b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f12630a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        com.yandex.metrica.appsetid.c cVar = this.f12631b;
        return hashCode + (cVar != null ? cVar.hashCode() : 0);
    }

    public String toString() {
        return "AppSetId(id=" + this.f12630a + ", scope=" + this.f12631b + ")";
    }
}
