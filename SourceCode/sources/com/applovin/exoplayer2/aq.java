package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.g;
/* loaded from: classes.dex */
public abstract class aq implements g {

    /* renamed from: b  reason: collision with root package name */
    public static final g.a<aq> f1393b = new g.a() { // from class: com.applovin.exoplayer2.aq$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            aq a2;
            a2 = aq.a(bundle);
            return a2;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static aq a(Bundle bundle) {
        g.a aVar;
        int i = bundle.getInt(a(0), -1);
        if (i == 0) {
            aVar = x.f4196a;
        } else if (i == 1) {
            aVar = aj.f1350a;
        } else if (i == 2) {
            aVar = ax.f1423a;
        } else if (i != 3) {
            throw new IllegalArgumentException("Encountered unknown rating type: " + i);
        } else {
            aVar = az.f1435a;
        }
        return (aq) aVar.fromBundle(bundle);
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }
}
