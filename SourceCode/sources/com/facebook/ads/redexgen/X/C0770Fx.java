package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Fx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0770Fx implements InterfaceC1341bD {
    public final List<InterfaceC1342bE> A00 = new ArrayList();

    @Override // com.facebook.ads.redexgen.X.InterfaceC1341bD
    public final InterfaceC1342bE A5a(int i) {
        return this.A00.get(i);
    }

    @Override // java.lang.Iterable
    public final Iterator<InterfaceC1342bE> iterator() {
        return this.A00.iterator();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1341bD
    public final int size() {
        return this.A00.size();
    }
}
