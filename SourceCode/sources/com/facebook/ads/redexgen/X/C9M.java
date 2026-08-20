package com.facebook.ads.redexgen.X;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.9M  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C9M implements Comparable<C9M> {
    public int A00;
    public long A01;
    @Nullable
    public Object A02;
    public final C06229l A03;

    public C9M(C06229l c06229l) {
        this.A03 = c06229l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* renamed from: A00 */
    public final int compareTo(@NonNull C9M c9m) {
        if ((this.A02 == null) != (c9m.A02 == null)) {
            return this.A02 != null ? -1 : 1;
        } else if (this.A02 == null) {
            return 0;
        } else {
            int i = this.A00 - c9m.A00;
            if (i != 0) {
                return i;
            }
            int comparePeriodIndex = C0815Hs.A07(this.A01, c9m.A01);
            return comparePeriodIndex;
        }
    }

    public final void A01(int i, long j, Object obj) {
        this.A00 = i;
        this.A01 = j;
        this.A02 = obj;
    }
}
