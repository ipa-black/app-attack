package com.applovin.impl.mediation.debugger;

import com.applovin.impl.mediation.debugger.c.a;
import com.applovin.impl.mediation.debugger.c.b;
import com.applovin.impl.sdk.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class a implements a.InterfaceC0071a, b.a {

    /* renamed from: a  reason: collision with root package name */
    private final n f4906a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0068a f4907b;

    /* renamed from: c  reason: collision with root package name */
    private com.applovin.impl.mediation.debugger.b.b.a f4908c;

    /* renamed from: com.applovin.impl.mediation.debugger.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0068a {
        void a();

        void a(com.applovin.impl.mediation.debugger.b.b.a aVar);
    }

    public a(n nVar, InterfaceC0068a interfaceC0068a) {
        this.f4906a = nVar;
        this.f4907b = interfaceC0068a;
    }

    public void a() {
        com.applovin.impl.mediation.debugger.b.b.a aVar = this.f4908c;
        if (aVar != null) {
            this.f4907b.a(aVar);
            return;
        }
        this.f4906a.V().a((com.applovin.impl.sdk.e.a) new com.applovin.impl.mediation.debugger.c.b(this.f4906a, this));
    }

    @Override // com.applovin.impl.mediation.debugger.c.b.a
    public void a(String str) {
        this.f4906a.V().a((com.applovin.impl.sdk.e.a) new com.applovin.impl.mediation.debugger.c.a(this.f4906a, str, this));
    }

    @Override // com.applovin.impl.mediation.debugger.c.b.a
    public void b() {
        this.f4907b.a();
    }

    @Override // com.applovin.impl.mediation.debugger.c.a.InterfaceC0071a
    public void b(String str) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        String[] split = str.split("\n");
        int length = split.length;
        int i = 1;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            com.applovin.impl.mediation.debugger.b.b.b bVar = new com.applovin.impl.mediation.debugger.b.b.b(split[i2], i);
            if (bVar.e()) {
                String a2 = bVar.a();
                List arrayList2 = hashMap.containsKey(a2) ? (List) hashMap.get(a2) : new ArrayList();
                if (arrayList2 != null) {
                    arrayList2.add(bVar);
                    hashMap.put(a2, arrayList2);
                }
            } else {
                arrayList.add(bVar);
            }
            i2++;
            i = i3;
        }
        com.applovin.impl.mediation.debugger.b.b.a aVar = new com.applovin.impl.mediation.debugger.b.b.a(hashMap, arrayList);
        this.f4908c = aVar;
        this.f4907b.a(aVar);
    }

    @Override // com.applovin.impl.mediation.debugger.c.a.InterfaceC0071a
    public void c() {
        this.f4907b.a();
    }
}
