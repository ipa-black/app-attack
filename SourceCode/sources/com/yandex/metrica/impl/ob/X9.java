package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1814qi;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class X9 implements ProtobufConverter<C1814qi, If> {

    /* renamed from: a  reason: collision with root package name */
    private L9 f14255a = new L9();

    /* renamed from: b  reason: collision with root package name */
    private W9 f14256b = new W9();

    /* renamed from: c  reason: collision with root package name */
    private Q9 f14257c = new Q9();

    /* renamed from: d  reason: collision with root package name */
    private S9 f14258d = new S9();

    /* renamed from: e  reason: collision with root package name */
    private E9 f14259e = new E9();

    /* renamed from: f  reason: collision with root package name */
    private O9 f14260f = new O9();

    /* renamed from: g  reason: collision with root package name */
    private Z9 f14261g = new Z9();

    /* renamed from: h  reason: collision with root package name */
    private U9 f14262h = new U9();
    private J9 i = new J9();
    private C1483da j = new C1483da();
    private C1458ca k = new C1458ca();
    private C1876t9 l = new C1876t9();
    private C1408aa m = new C1408aa();
    private C1948w9 n = new C1948w9();
    private A9 o = new A9();
    private C1852s9 p = new C1852s9();
    private B9 q = new B9();
    private C9 r = new C9();
    private C1996y9 s = new C1996y9();
    private Y9 t = new Y9();
    private N9 u = new N9();

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1814qi c1814qi = (C1814qi) obj;
        If r0 = new If();
        r0.C = c1814qi.G;
        r0.D = c1814qi.H;
        r0.l = new If.k[c1814qi.s.size()];
        int i = 0;
        int i2 = 0;
        for (C1759oc c1759oc : c1814qi.s) {
            r0.l[i2] = this.f14255a.fromModel(c1759oc);
            i2++;
        }
        String str = c1814qi.f15579a;
        if (str != null) {
            r0.f13071a = str;
        }
        String str2 = c1814qi.f15580b;
        if (str2 != null) {
            r0.y = str2;
        }
        String str3 = c1814qi.f15581c;
        if (str3 != null) {
            r0.z = str3;
        }
        List<String> list = c1814qi.j;
        if (list != null) {
            r0.f13077g = (String[]) list.toArray(new String[list.size()]);
        }
        List<String> list2 = c1814qi.k;
        if (list2 != null) {
            r0.f13078h = (String[]) list2.toArray(new String[list2.size()]);
        }
        List<String> list3 = c1814qi.f15582d;
        if (list3 != null) {
            r0.f13073c = (String[]) list3.toArray(new String[list3.size()]);
        }
        List<String> list4 = c1814qi.i;
        if (list4 != null) {
            r0.f13076f = (String[]) list4.toArray(new String[list4.size()]);
        }
        List<String> list5 = c1814qi.l;
        if (list5 != null) {
            r0.t = (String[]) list5.toArray(new String[list5.size()]);
        }
        List<String> list6 = c1814qi.m;
        if (list6 != null) {
            r0.i = (String[]) list6.toArray(new String[list6.size()]);
        }
        Map<String, List<String>> map = c1814qi.n;
        if (map != null) {
            r0.j = this.s.fromModel(map);
        }
        C1491di c1491di = c1814qi.t;
        if (c1491di != null) {
            r0.m = this.f14256b.fromModel(c1491di);
        }
        C1416ai c1416ai = c1814qi.A;
        if (c1416ai != null) {
            this.f14257c.getClass();
            If.n nVar = new If.n();
            nVar.f13143a = c1416ai.f14420a;
            nVar.f13144b = c1416ai.f14421b;
            r0.F = nVar;
        }
        String str4 = c1814qi.o;
        if (str4 != null) {
            r0.o = str4;
        }
        String str5 = c1814qi.f15583e;
        if (str5 != null) {
            r0.f13074d = str5;
        }
        String str6 = c1814qi.f15584f;
        if (str6 != null) {
            r0.f13075e = str6;
        }
        String str7 = c1814qi.f15585g;
        if (str7 != null) {
            r0.A = str7;
        }
        String str8 = c1814qi.f15586h;
        if (str8 != null) {
            r0.B = str8;
        }
        r0.k = this.f14259e.fromModel(c1814qi.r);
        String str9 = c1814qi.p;
        if (str9 != null) {
            r0.p = str9;
        }
        String str10 = c1814qi.q;
        if (str10 != null) {
            r0.q = str10;
        }
        r0.r = c1814qi.w;
        r0.f13072b = c1814qi.u;
        r0.v = c1814qi.v;
        RetryPolicyConfig retryPolicyConfig = c1814qi.E;
        r0.H = retryPolicyConfig.maxIntervalSeconds;
        r0.I = retryPolicyConfig.exponentialMultiplier;
        List<C1441bi> list7 = c1814qi.x;
        if (list7 != null) {
            If.o[] oVarArr = new If.o[list7.size()];
            for (C1441bi c1441bi : list7) {
                oVarArr[i] = this.f14258d.fromModel(c1441bi);
                i++;
            }
            r0.n = oVarArr;
        }
        String str11 = c1814qi.y;
        if (str11 != null) {
            r0.s = str11;
        }
        List<String> list8 = c1814qi.Q;
        r0.Q = (String[]) list8.toArray(new String[list8.size()]);
        List<Bd> list9 = c1814qi.B;
        if (list9 != null) {
            r0.w = this.f14260f.fromModel(list9);
        }
        C1466ci c1466ci = c1814qi.C;
        if (c1466ci != null) {
            r0.x = this.f14262h.fromModel(c1466ci);
        }
        C1885ti c1885ti = c1814qi.z;
        if (c1885ti != null) {
            this.f14261g.getClass();
            If.s sVar = new If.s();
            sVar.f13168a = c1885ti.f15780a;
            r0.u = sVar;
        }
        r0.E = c1814qi.I;
        Zh zh = c1814qi.D;
        if (zh != null) {
            this.i.getClass();
            If.j jVar = new If.j();
            jVar.f13112a = zh.f14358a;
            r0.G = jVar;
        }
        C1960wl c1960wl = c1814qi.J;
        if (c1960wl != null) {
            r0.J = this.j.fromModel(c1960wl);
        }
        C1594hl c1594hl = c1814qi.K;
        if (c1594hl != null) {
            r0.L = this.k.fromModel(c1594hl);
        }
        C1594hl c1594hl2 = c1814qi.L;
        if (c1594hl2 != null) {
            r0.M = this.k.fromModel(c1594hl2);
        }
        C1594hl c1594hl3 = c1814qi.M;
        if (c1594hl3 != null) {
            r0.K = this.k.fromModel(c1594hl3);
        }
        C1597i c1597i = c1814qi.N;
        if (c1597i != null) {
            this.l.getClass();
            If.b bVar = new If.b();
            bVar.f13084a = c1597i.f14885a;
            bVar.f13085b = c1597i.f14886b;
            r0.R = bVar;
        }
        C1909ui c1909ui = c1814qi.F;
        if (c1909ui != null) {
            r0.N = this.m.fromModel(c1909ui);
        }
        Ph ph = c1814qi.O;
        if (ph != null) {
            r0.O = this.n.fromModel(ph);
        }
        r0.P = this.o.fromModel(c1814qi.P);
        Oh oh = c1814qi.R;
        if (oh != null) {
            r0.S = this.p.fromModel(oh);
        }
        C1939w0 c1939w0 = c1814qi.S;
        if (c1939w0 != null) {
            this.q.getClass();
            If.g gVar = new If.g();
            gVar.f13098a = c1939w0.a();
            r0.U = gVar;
        }
        Uh uh = c1814qi.T;
        if (uh != null) {
            r0.T = this.r.fromModel(uh);
        }
        Y9 y9 = this.t;
        C1861si c1861si = c1814qi.U;
        y9.getClass();
        If.r rVar = new If.r();
        rVar.f13167a = c1861si.a();
        r0.V = rVar;
        r0.W = this.u.fromModel(c1814qi.V);
        return r0;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        If r9 = (If) obj;
        C1814qi.b a2 = new C1814qi.b(this.f14259e.toModel(r9.k)).k(r9.f13071a).c(r9.y).d(r9.z).e(r9.o).f(r9.f13074d).i(Arrays.asList(r9.f13073c)).e(Arrays.asList(r9.f13076f)).b(Arrays.asList(r9.f13078h)).c(Arrays.asList(r9.f13077g)).i(r9.f13075e).j(r9.A).a(r9.B).a(Arrays.asList(r9.t)).g(Arrays.asList(r9.i)).h(r9.p).g(r9.q).c(r9.r).c(r9.f13072b).a(r9.v);
        If.o[] oVarArr = r9.n;
        ArrayList arrayList = new ArrayList(oVarArr.length);
        int i = 0;
        for (If.o oVar : oVarArr) {
            arrayList.add(this.f14258d.toModel(oVar));
        }
        C1814qi.b a3 = a2.j(arrayList).b(r9.C).a(r9.D).b(r9.s).b(r9.E).a(new RetryPolicyConfig(r9.H, r9.I)).f(Arrays.asList(r9.Q)).a(this.s.toModel(r9.j));
        if (r9.l != null) {
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                If.k[] kVarArr = r9.l;
                if (i >= kVarArr.length) {
                    break;
                }
                arrayList2.add(this.f14255a.toModel(kVarArr[i]));
                i++;
            }
            a3.d(arrayList2);
        }
        If.q qVar = r9.m;
        if (qVar != null) {
            a3.a(this.f14256b.toModel(qVar));
        }
        If.n nVar = r9.F;
        if (nVar != null) {
            this.f14257c.getClass();
            a3.a(new C1416ai(nVar.f13143a, nVar.f13144b));
        }
        If.m[] mVarArr = r9.w;
        if (mVarArr != null) {
            a3.h(this.f14260f.toModel(mVarArr));
        }
        If.p pVar = r9.x;
        if (pVar != null) {
            a3.a(this.f14262h.toModel(pVar));
        }
        If.s sVar = r9.u;
        if (sVar != null) {
            a3.a(this.f14261g.toModel(sVar));
        }
        If.j jVar = r9.G;
        if (jVar != null) {
            a3.a(this.i.toModel(jVar));
        }
        If.w wVar = r9.J;
        if (wVar != null) {
            a3.a(this.j.toModel(wVar));
        }
        If.v vVar = r9.L;
        if (vVar != null) {
            a3.b(this.k.toModel(vVar));
        }
        If.v vVar2 = r9.M;
        if (vVar2 != null) {
            a3.c(this.k.toModel(vVar2));
        }
        If.v vVar3 = r9.K;
        if (vVar3 != null) {
            a3.a(this.k.toModel(vVar3));
        }
        If.b bVar = r9.R;
        if (bVar != null) {
            a3.a(this.l.toModel(bVar));
        }
        If.t tVar = r9.N;
        if (tVar != null) {
            a3.a(this.m.toModel(tVar));
        }
        If.c cVar = r9.O;
        if (cVar != null) {
            a3.a(this.n.toModel(cVar));
        }
        If.f fVar = r9.P;
        if (fVar != null) {
            a3.a(this.o.a(fVar));
        }
        If.a aVar = r9.S;
        if (aVar != null) {
            a3.a(this.p.toModel(aVar));
        }
        If.h hVar = r9.T;
        if (hVar != null) {
            a3.a(this.r.toModel(hVar));
        }
        If.g gVar = r9.U;
        if (gVar != null) {
            a3.a(this.q.toModel(gVar));
        }
        If.r rVar = r9.V;
        if (rVar != null) {
            a3.a(this.t.toModel(rVar));
        }
        a3.b(this.u.toModel(r9.W));
        return a3.a();
    }
}
