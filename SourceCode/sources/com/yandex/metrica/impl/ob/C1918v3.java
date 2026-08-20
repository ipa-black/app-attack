package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.v3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1918v3 implements InterfaceC1843s0<a, a> {

    /* renamed from: a  reason: collision with root package name */
    private final a f15892a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f15893b;

    /* renamed from: com.yandex.metrica.impl.ob.v3$a */
    /* loaded from: classes5.dex */
    public static final class a implements InterfaceC1915v0 {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f15894a;

        /* renamed from: b  reason: collision with root package name */
        private final EnumC1891u0 f15895b;

        public a(Map<String, String> map, EnumC1891u0 enumC1891u0) {
            this.f15894a = map;
            this.f15895b = enumC1891u0;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1915v0
        public EnumC1891u0 a() {
            return this.f15895b;
        }

        public final Map<String, String> b() {
            return this.f15894a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    return Intrinsics.areEqual(this.f15894a, aVar.f15894a) && Intrinsics.areEqual(this.f15895b, aVar.f15895b);
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            Map<String, String> map = this.f15894a;
            int hashCode = (map != null ? map.hashCode() : 0) * 31;
            EnumC1891u0 enumC1891u0 = this.f15895b;
            return hashCode + (enumC1891u0 != null ? enumC1891u0.hashCode() : 0);
        }

        public String toString() {
            return "Candidate(clids=" + this.f15894a + ", source=" + this.f15895b + ")";
        }
    }

    public C1918v3(a aVar, List<a> list) {
        this.f15892a = aVar;
        this.f15893b = list;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1843s0
    public List<a> a() {
        return this.f15893b;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1843s0
    public a b() {
        return this.f15892a;
    }

    public a c() {
        return this.f15892a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C1918v3) {
                C1918v3 c1918v3 = (C1918v3) obj;
                return Intrinsics.areEqual(this.f15892a, c1918v3.f15892a) && Intrinsics.areEqual(this.f15893b, c1918v3.f15893b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        a aVar = this.f15892a;
        int hashCode = (aVar != null ? aVar.hashCode() : 0) * 31;
        List<a> list = this.f15893b;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "ClidsInfo(chosen=" + this.f15892a + ", candidates=" + this.f15893b + ")";
    }
}
