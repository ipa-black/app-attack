package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1930vf;
/* loaded from: classes5.dex */
public class Re implements Je {

    /* renamed from: a  reason: collision with root package name */
    private final Wm f13803a;

    public Re(Wm wm) {
        this.f13803a = wm;
    }

    @Override // com.yandex.metrica.impl.ob.Je
    public C1930vf.a a(C1413af c1413af, C1930vf.a aVar) {
        if (c1413af.a() == this.f13803a.a()) {
            if (c1413af.a(aVar.f15925b, new String(aVar.f15924a)) != null) {
                c1413af.a(aVar);
            }
        } else if (c1413af.a() < this.f13803a.a()) {
            c1413af.a(aVar);
            c1413af.b();
        }
        return aVar;
    }
}
