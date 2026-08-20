package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.LinkedHashMap;
/* renamed from: com.facebook.ads.redexgen.X.Ft  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0766Ft implements InterfaceC1332b4 {
    public final /* synthetic */ C1331b3 A00;

    public C0766Ft(C1331b3 c1331b3) {
        this.A00 = c1331b3;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1332b4
    public final void ACU() {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        ArrayList<Runnable> arrayList;
        LinkedHashMap linkedHashMap3;
        LinkedHashMap linkedHashMap4;
        InterfaceC1332b4 interfaceC1332b4;
        InterfaceC1332b4 interfaceC1332b42;
        linkedHashMap = this.A00.A06;
        synchronized (linkedHashMap) {
            linkedHashMap2 = this.A00.A06;
            arrayList = new ArrayList(linkedHashMap2.size());
            linkedHashMap3 = this.A00.A06;
            for (Runnable runnable : linkedHashMap3.values()) {
                if (runnable != null) {
                    arrayList.add(runnable);
                }
            }
            linkedHashMap4 = this.A00.A06;
            linkedHashMap4.clear();
        }
        for (Runnable runnable2 : arrayList) {
            runnable2.run();
        }
        interfaceC1332b4 = this.A00.A01;
        if (interfaceC1332b4 == null) {
            return;
        }
        interfaceC1332b42 = this.A00.A01;
        interfaceC1332b42.ACU();
    }
}
