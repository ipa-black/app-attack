package com.facebook.ads.redexgen.X;

import java.util.Comparator;
/* renamed from: com.facebook.ads.redexgen.X.Hl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0808Hl implements Comparator<C0809Hm> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* renamed from: A00 */
    public final int compare(C0809Hm c0809Hm, C0809Hm c0809Hm2) {
        if (c0809Hm.A00 < c0809Hm2.A00) {
            return -1;
        }
        return c0809Hm2.A00 < c0809Hm.A00 ? 1 : 0;
    }
}
