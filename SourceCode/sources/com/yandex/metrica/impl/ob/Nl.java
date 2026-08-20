package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes5.dex */
public final class Nl {

    /* renamed from: c  reason: collision with root package name */
    public static final a f13557c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f13558a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13559b;

    /* loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Nl(long j, int i) {
        this.f13558a = j;
        this.f13559b = i;
    }

    public final int a() {
        return this.f13559b;
    }

    public final long b() {
        return this.f13558a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Nl) {
                Nl nl = (Nl) obj;
                return this.f13558a == nl.f13558a && this.f13559b == nl.f13559b;
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j = this.f13558a;
        return (((int) (j ^ (j >>> 32))) * 31) + this.f13559b;
    }

    public String toString() {
        return "DecimalProtoModel(mantissa=" + this.f13558a + ", exponent=" + this.f13559b + ")";
    }
}
