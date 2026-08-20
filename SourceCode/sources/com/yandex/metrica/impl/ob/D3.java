package com.yandex.metrica.impl.ob;

import android.location.Location;
import android.os.ResultReceiver;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.Mg;
import java.util.Map;
/* loaded from: classes5.dex */
public class D3 {

    /* renamed from: a  reason: collision with root package name */
    public final Mg.b f12780a;

    /* renamed from: b  reason: collision with root package name */
    public final a f12781b;

    /* renamed from: c  reason: collision with root package name */
    public final ResultReceiver f12782c;

    /* loaded from: classes5.dex */
    public static class a implements Dg<a, a> {

        /* renamed from: a  reason: collision with root package name */
        public final String f12783a;

        /* renamed from: b  reason: collision with root package name */
        public final String f12784b;

        /* renamed from: c  reason: collision with root package name */
        public final String f12785c;

        /* renamed from: d  reason: collision with root package name */
        public final String f12786d;

        /* renamed from: e  reason: collision with root package name */
        public final Boolean f12787e;

        /* renamed from: f  reason: collision with root package name */
        public final Location f12788f;

        /* renamed from: g  reason: collision with root package name */
        public final Boolean f12789g;

        /* renamed from: h  reason: collision with root package name */
        public final Integer f12790h;
        public final Integer i;
        public final Integer j;
        public final Boolean k;
        public final Boolean l;
        public final Map<String, String> m;
        public final Integer n;
        public final Boolean o;
        public final Boolean p;
        public final Boolean q;

        a(String str, String str2, String str3, String str4, Boolean bool, Location location, Boolean bool2, Integer num, Integer num2, Integer num3, Boolean bool3, Boolean bool4, Map<String, String> map, Integer num4, Boolean bool5, Boolean bool6, Boolean bool7) {
            this.f12783a = str;
            this.f12784b = str2;
            this.f12785c = str3;
            this.f12786d = str4;
            this.f12787e = bool;
            this.f12788f = location;
            this.f12789g = bool2;
            this.f12790h = num;
            this.i = num2;
            this.j = num3;
            this.k = bool3;
            this.l = bool4;
            this.m = map;
            this.n = num4;
            this.o = bool5;
            this.p = bool6;
            this.q = bool7;
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public boolean b(a aVar) {
            return equals(aVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            String str = this.f12783a;
            if (str == null ? aVar.f12783a == null : str.equals(aVar.f12783a)) {
                String str2 = this.f12784b;
                if (str2 == null ? aVar.f12784b == null : str2.equals(aVar.f12784b)) {
                    String str3 = this.f12785c;
                    if (str3 == null ? aVar.f12785c == null : str3.equals(aVar.f12785c)) {
                        String str4 = this.f12786d;
                        if (str4 == null ? aVar.f12786d == null : str4.equals(aVar.f12786d)) {
                            Boolean bool = this.f12787e;
                            if (bool == null ? aVar.f12787e == null : bool.equals(aVar.f12787e)) {
                                Location location = this.f12788f;
                                if (location == null ? aVar.f12788f == null : location.equals(aVar.f12788f)) {
                                    Boolean bool2 = this.f12789g;
                                    if (bool2 == null ? aVar.f12789g == null : bool2.equals(aVar.f12789g)) {
                                        Integer num = this.f12790h;
                                        if (num == null ? aVar.f12790h == null : num.equals(aVar.f12790h)) {
                                            Integer num2 = this.i;
                                            if (num2 == null ? aVar.i == null : num2.equals(aVar.i)) {
                                                Integer num3 = this.j;
                                                if (num3 == null ? aVar.j == null : num3.equals(aVar.j)) {
                                                    Boolean bool3 = this.k;
                                                    if (bool3 == null ? aVar.k == null : bool3.equals(aVar.k)) {
                                                        Boolean bool4 = this.l;
                                                        if (bool4 == null ? aVar.l == null : bool4.equals(aVar.l)) {
                                                            Map<String, String> map = this.m;
                                                            if (map == null ? aVar.m == null : map.equals(aVar.m)) {
                                                                Integer num4 = this.n;
                                                                if (num4 == null ? aVar.n == null : num4.equals(aVar.n)) {
                                                                    Boolean bool5 = this.o;
                                                                    if (bool5 == null ? aVar.o == null : bool5.equals(aVar.o)) {
                                                                        Boolean bool6 = this.p;
                                                                        if (bool6 == null ? aVar.p == null : bool6.equals(aVar.p)) {
                                                                            Boolean bool7 = this.q;
                                                                            if (bool7 != null) {
                                                                                return bool7.equals(aVar.q);
                                                                            }
                                                                            return aVar.q == null;
                                                                        }
                                                                        return false;
                                                                    }
                                                                    return false;
                                                                }
                                                                return false;
                                                            }
                                                            return false;
                                                        }
                                                        return false;
                                                    }
                                                    return false;
                                                }
                                                return false;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f12783a;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f12784b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f12785c;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f12786d;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            Boolean bool = this.f12787e;
            int hashCode5 = (hashCode4 + (bool != null ? bool.hashCode() : 0)) * 31;
            Location location = this.f12788f;
            int hashCode6 = (hashCode5 + (location != null ? location.hashCode() : 0)) * 31;
            Boolean bool2 = this.f12789g;
            int hashCode7 = (hashCode6 + (bool2 != null ? bool2.hashCode() : 0)) * 31;
            Integer num = this.f12790h;
            int hashCode8 = (hashCode7 + (num != null ? num.hashCode() : 0)) * 31;
            Integer num2 = this.i;
            int hashCode9 = (hashCode8 + (num2 != null ? num2.hashCode() : 0)) * 31;
            Integer num3 = this.j;
            int hashCode10 = (hashCode9 + (num3 != null ? num3.hashCode() : 0)) * 31;
            Boolean bool3 = this.k;
            int hashCode11 = (hashCode10 + (bool3 != null ? bool3.hashCode() : 0)) * 31;
            Boolean bool4 = this.l;
            int hashCode12 = (hashCode11 + (bool4 != null ? bool4.hashCode() : 0)) * 31;
            Map<String, String> map = this.m;
            int hashCode13 = (hashCode12 + (map != null ? map.hashCode() : 0)) * 31;
            Integer num4 = this.n;
            int hashCode14 = (hashCode13 + (num4 != null ? num4.hashCode() : 0)) * 31;
            Boolean bool5 = this.o;
            int hashCode15 = (hashCode14 + (bool5 != null ? bool5.hashCode() : 0)) * 31;
            Boolean bool6 = this.p;
            int hashCode16 = (hashCode15 + (bool6 != null ? bool6.hashCode() : 0)) * 31;
            Boolean bool7 = this.q;
            return hashCode16 + (bool7 != null ? bool7.hashCode() : 0);
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public a a(a aVar) {
            String str = this.f12783a;
            String str2 = aVar.f12783a;
            if (str == null) {
                str = str2;
            }
            String str3 = this.f12784b;
            String str4 = aVar.f12784b;
            if (str3 == null) {
                str3 = str4;
            }
            String str5 = this.f12785c;
            String str6 = aVar.f12785c;
            if (str5 == null) {
                str5 = str6;
            }
            String str7 = this.f12786d;
            String str8 = aVar.f12786d;
            if (str7 == null) {
                str7 = str8;
            }
            Boolean bool = this.f12787e;
            Boolean bool2 = aVar.f12787e;
            if (bool == null) {
                bool = bool2;
            }
            Location location = this.f12788f;
            Location location2 = aVar.f12788f;
            if (location == null) {
                location = location2;
            }
            Boolean bool3 = this.f12789g;
            Boolean bool4 = aVar.f12789g;
            if (bool3 == null) {
                bool3 = bool4;
            }
            Integer num = this.f12790h;
            Integer num2 = aVar.f12790h;
            if (num == null) {
                num = num2;
            }
            Integer num3 = this.i;
            Integer num4 = aVar.i;
            if (num3 == null) {
                num3 = num4;
            }
            Integer num5 = this.j;
            Integer num6 = aVar.j;
            if (num5 == null) {
                num5 = num6;
            }
            Boolean bool5 = this.k;
            Boolean bool6 = aVar.k;
            if (bool5 == null) {
                bool5 = bool6;
            }
            Boolean bool7 = this.l;
            Boolean bool8 = aVar.l;
            if (bool7 == null) {
                bool7 = bool8;
            }
            Map<String, String> map = this.m;
            Map<String, String> map2 = aVar.m;
            if (map == null) {
                map = map2;
            }
            Integer num7 = this.n;
            Map<String, String> map3 = map;
            Integer num8 = aVar.n;
            if (num7 == null) {
                num7 = num8;
            }
            Boolean bool9 = this.o;
            Integer num9 = num7;
            Boolean bool10 = bool9 == null ? aVar.o : bool9;
            Boolean bool11 = this.p;
            Boolean bool12 = bool11 == null ? aVar.p : bool11;
            Boolean bool13 = this.q;
            return new a(str, str3, str5, str7, bool, location, bool3, num, num3, num5, bool5, bool7, map3, num9, bool10, bool12, bool13 == null ? aVar.q : bool13);
        }

        public a(CounterConfiguration counterConfiguration, Map<String, String> map) {
            this(counterConfiguration.d(), counterConfiguration.c(), counterConfiguration.b(), counterConfiguration.a(), counterConfiguration.o(), counterConfiguration.g(), counterConfiguration.n(), counterConfiguration.l(), counterConfiguration.h(), counterConfiguration.e(), counterConfiguration.p(), counterConfiguration.m(), map, counterConfiguration.i(), counterConfiguration.j(), counterConfiguration.f(), counterConfiguration.q());
        }

        public a() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
        }
    }

    public D3(C2014z3 c2014z3) {
        this(new Mg.b(c2014z3), new a(c2014z3.b(), c2014z3.a().a()), c2014z3.a().c());
    }

    public D3(Mg.b bVar, a aVar, ResultReceiver resultReceiver) {
        this.f12780a = bVar;
        this.f12781b = aVar;
        this.f12782c = resultReceiver;
    }
}
