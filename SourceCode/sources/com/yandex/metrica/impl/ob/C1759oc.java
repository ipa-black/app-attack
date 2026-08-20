package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1938w;
/* renamed from: com.yandex.metrica.impl.ob.oc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1759oc {

    /* renamed from: a  reason: collision with root package name */
    public final C1709mc f15328a;

    /* renamed from: b  reason: collision with root package name */
    public final Ac f15329b;

    /* renamed from: com.yandex.metrica.impl.ob.oc$a */
    /* loaded from: classes5.dex */
    public enum a {
        UNKNOWN("unknown"),
        FOREGROUND("fg"),
        BACKGROUND("bg"),
        VISIBLE("visible");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f15335a;

        a(String str) {
            this.f15335a = str;
        }

        public String a() {
            return this.f15335a;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f15335a;
        }

        public static a a(String str) {
            a aVar = UNKNOWN;
            a[] values = values();
            for (int i = 0; i < 4; i++) {
                a aVar2 = values[i];
                if (aVar2.f15335a.equals(str)) {
                    aVar = aVar2;
                }
            }
            return aVar;
        }

        public static a a(C1938w.a aVar) {
            a aVar2 = UNKNOWN;
            if (aVar != null) {
                int ordinal = aVar.ordinal();
                if (ordinal != 1) {
                    return ordinal != 2 ? aVar2 : VISIBLE;
                }
                return BACKGROUND;
            }
            return aVar2;
        }
    }

    public C1759oc(C1709mc c1709mc, Ac ac) {
        this.f15328a = c1709mc;
        this.f15329b = ac;
    }

    public String toString() {
        return "LocationCollectionConfig{arguments=" + this.f15328a + ", preconditions=" + this.f15329b + '}';
    }
}
