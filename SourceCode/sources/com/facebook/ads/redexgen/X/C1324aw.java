package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.facebook.ads.redexgen.X.aw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1324aw {
    public final Map<String, C1337b9> A00;
    public final Set<C1337b9> A01;

    public C1324aw() {
        this.A00 = new HashMap();
        this.A01 = new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Collection<C1337b9> A00() {
        return this.A01;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Collection<C1337b9> A01() {
        return this.A00.values();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        this.A00.clear();
        for (C1337b9 c1337b9 : this.A01) {
            this.A00.put(c1337b9.A04, c1337b9);
        }
        this.A01.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A06(C1337b9 c1337b9) {
        if (this.A01.add(c1337b9)) {
            this.A00.remove(c1337b9.A04);
            return true;
        }
        return false;
    }
}
