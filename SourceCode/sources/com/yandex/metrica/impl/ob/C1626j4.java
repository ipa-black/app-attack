package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: com.yandex.metrica.impl.ob.j4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1626j4 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f14949a;

    /* renamed from: b  reason: collision with root package name */
    private final C1776p4 f14950b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<C1602i4, InterfaceC1651k4> f14951c;

    /* renamed from: d  reason: collision with root package name */
    private final C1841rm<a, C1602i4> f14952d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f14953e;

    /* renamed from: f  reason: collision with root package name */
    private volatile int f14954f;

    /* renamed from: g  reason: collision with root package name */
    private final C1701m4 f14955g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.j4$a */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f14956a;

        /* renamed from: b  reason: collision with root package name */
        private final Integer f14957b;

        /* renamed from: c  reason: collision with root package name */
        private final String f14958c;

        a(String str, Integer num, String str2) {
            this.f14956a = str;
            this.f14957b = num;
            this.f14958c = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f14956a.equals(aVar.f14956a)) {
                Integer num = this.f14957b;
                if (num == null ? aVar.f14957b == null : num.equals(aVar.f14957b)) {
                    String str = this.f14958c;
                    String str2 = aVar.f14958c;
                    return str != null ? str.equals(str2) : str2 == null;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f14956a.hashCode() * 31;
            Integer num = this.f14957b;
            int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
            String str = this.f14958c;
            return hashCode2 + (str != null ? str.hashCode() : 0);
        }
    }

    public C1626j4(Context context, C1776p4 c1776p4) {
        this(context, c1776p4, new C1701m4());
    }

    public InterfaceC1651k4 a(C1602i4 c1602i4, D3 d3) {
        InterfaceC1651k4 interfaceC1651k4;
        synchronized (this.f14949a) {
            interfaceC1651k4 = this.f14951c.get(c1602i4);
            if (interfaceC1651k4 == null) {
                interfaceC1651k4 = this.f14955g.a(c1602i4).a(this.f14953e, this.f14950b, c1602i4, d3);
                this.f14951c.put(c1602i4, interfaceC1651k4);
                this.f14952d.a(new a(c1602i4.b(), c1602i4.c(), c1602i4.d()), c1602i4);
                this.f14954f++;
            }
        }
        return interfaceC1651k4;
    }

    C1626j4(Context context, C1776p4 c1776p4, C1701m4 c1701m4) {
        this.f14949a = new Object();
        this.f14951c = new HashMap<>();
        this.f14952d = new C1841rm<>();
        this.f14954f = 0;
        this.f14953e = context.getApplicationContext();
        this.f14950b = c1776p4;
        this.f14955g = c1701m4;
    }

    public void a(String str, int i, String str2) {
        Integer valueOf = Integer.valueOf(i);
        synchronized (this.f14949a) {
            Collection<C1602i4> b2 = this.f14952d.b(new a(str, valueOf, str2));
            if (!A2.b(b2)) {
                this.f14954f -= b2.size();
                ArrayList arrayList = new ArrayList(b2.size());
                for (C1602i4 c1602i4 : b2) {
                    arrayList.add(this.f14951c.remove(c1602i4));
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((InterfaceC1651k4) it.next()).a();
                }
            }
        }
    }
}
