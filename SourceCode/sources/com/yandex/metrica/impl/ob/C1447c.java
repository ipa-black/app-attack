package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.c  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1447c implements InterfaceC1671l {

    /* renamed from: a  reason: collision with root package name */
    private boolean f14504a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1721n f14505b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, com.yandex.metrica.billing_interface.a> f14506c = new HashMap();

    public C1447c(InterfaceC1721n interfaceC1721n) {
        C1451c3 c1451c3 = (C1451c3) interfaceC1721n;
        for (com.yandex.metrica.billing_interface.a aVar : c1451c3.a()) {
            this.f14506c.put(aVar.f12478b, aVar);
        }
        this.f14504a = c1451c3.b();
        this.f14505b = c1451c3;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1671l
    public void a(Map<String, com.yandex.metrica.billing_interface.a> map) {
        for (com.yandex.metrica.billing_interface.a aVar : map.values()) {
            this.f14506c.put(aVar.f12478b, aVar);
        }
        ((C1451c3) this.f14505b).a(new ArrayList(this.f14506c.values()), this.f14504a);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1671l
    public void b() {
        if (this.f14504a) {
            return;
        }
        this.f14504a = true;
        ((C1451c3) this.f14505b).a(new ArrayList(this.f14506c.values()), this.f14504a);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1671l
    public com.yandex.metrica.billing_interface.a a(String str) {
        return this.f14506c.get(str);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1671l
    public boolean a() {
        return this.f14504a;
    }
}
