package com.applovin.exoplayer2.h;

import android.os.Bundle;
import com.applovin.exoplayer2.g;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class ad implements com.applovin.exoplayer2.g {

    /* renamed from: a  reason: collision with root package name */
    public static final ad f3008a = new ad(new ac[0]);

    /* renamed from: c  reason: collision with root package name */
    public static final g.a<ad> f3009c = new g.a() { // from class: com.applovin.exoplayer2.h.ad$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            ad a2;
            a2 = ad.a(bundle);
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final int f3010b;

    /* renamed from: d  reason: collision with root package name */
    private final ac[] f3011d;

    /* renamed from: e  reason: collision with root package name */
    private int f3012e;

    public ad(ac... acVarArr) {
        this.f3011d = acVarArr;
        this.f3010b = acVarArr.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ad a(Bundle bundle) {
        return new ad((ac[]) com.applovin.exoplayer2.l.c.a(ac.f3004b, bundle.getParcelableArrayList(b(0)), com.applovin.exoplayer2.common.a.s.g()).toArray(new ac[0]));
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    public int a(ac acVar) {
        for (int i = 0; i < this.f3010b; i++) {
            if (this.f3011d[i] == acVar) {
                return i;
            }
        }
        return -1;
    }

    public ac a(int i) {
        return this.f3011d[i];
    }

    public boolean a() {
        return this.f3010b == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ad adVar = (ad) obj;
        return this.f3010b == adVar.f3010b && Arrays.equals(this.f3011d, adVar.f3011d);
    }

    public int hashCode() {
        if (this.f3012e == 0) {
            this.f3012e = Arrays.hashCode(this.f3011d);
        }
        return this.f3012e;
    }
}
