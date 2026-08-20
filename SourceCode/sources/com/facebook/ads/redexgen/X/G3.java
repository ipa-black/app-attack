package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
/* loaded from: assets/audience_network.dex */
public final class G3 implements Comparable<G3> {
    public final int A00;
    public final C0772Fz A01;

    public G3(int i, C0772Fz c0772Fz) {
        this.A00 = i;
        this.A01 = c0772Fz;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* renamed from: A00 */
    public final int compareTo(@NonNull G3 g3) {
        return this.A00 - g3.A00;
    }
}
