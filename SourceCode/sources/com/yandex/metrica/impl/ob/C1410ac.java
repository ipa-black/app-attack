package com.yandex.metrica.impl.ob;

import com.yandex.metrica.gpllibrary.a;
/* renamed from: com.yandex.metrica.impl.ob.ac  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1410ac {

    /* renamed from: a  reason: collision with root package name */
    public final a.b f14408a;

    /* renamed from: b  reason: collision with root package name */
    public final long f14409b;

    /* renamed from: c  reason: collision with root package name */
    public final long f14410c;

    public C1410ac(a.b bVar, long j, long j2) {
        this.f14408a = bVar;
        this.f14409b = j;
        this.f14410c = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1410ac.class != obj.getClass()) {
            return false;
        }
        C1410ac c1410ac = (C1410ac) obj;
        return this.f14409b == c1410ac.f14409b && this.f14410c == c1410ac.f14410c && this.f14408a == c1410ac.f14408a;
    }

    public int hashCode() {
        long j = this.f14409b;
        long j2 = this.f14410c;
        return (((this.f14408a.hashCode() * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "GplArguments{priority=" + this.f14408a + ", durationSeconds=" + this.f14409b + ", intervalSeconds=" + this.f14410c + '}';
    }
}
