package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class H6 {

    /* renamed from: a  reason: collision with root package name */
    public final F6 f13027a;

    /* renamed from: b  reason: collision with root package name */
    public final C1945w6 f13028b;

    /* renamed from: c  reason: collision with root package name */
    public final List<D6> f13029c;

    /* renamed from: d  reason: collision with root package name */
    public final String f13030d;

    /* renamed from: e  reason: collision with root package name */
    public final String f13031e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<String, String> f13032f;

    /* renamed from: g  reason: collision with root package name */
    public final String f13033g;

    /* renamed from: h  reason: collision with root package name */
    public final Boolean f13034h;

    public H6(F6 f6, C1945w6 c1945w6, List<D6> list, String str, String str2, Map<String, String> map, String str3, Boolean bool) {
        this.f13027a = f6;
        this.f13028b = c1945w6;
        this.f13029c = list;
        this.f13030d = str;
        this.f13031e = str2;
        this.f13032f = map;
        this.f13033g = str3;
        this.f13034h = bool;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        F6 f6 = this.f13027a;
        if (f6 != null) {
            for (D6 d6 : f6.d()) {
                sb.append("at " + d6.a() + "." + d6.e() + "(" + d6.c() + ":" + d6.d() + ":" + d6.b() + ")\n");
            }
        }
        return "UnhandledException{exception=" + this.f13027a + "\n" + sb.toString() + '}';
    }
}
