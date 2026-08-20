package com.applovin.exoplayer2.k;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.k.t;
import com.applovin.exoplayer2.k.v;
import com.applovin.exoplayer2.k.w;
import com.google.android.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes.dex */
public class r implements v {

    /* renamed from: a  reason: collision with root package name */
    private final int f3692a;

    public r() {
        this(-1);
    }

    public r(int i) {
        this.f3692a = i;
    }

    @Override // com.applovin.exoplayer2.k.v
    public int a(int i) {
        int i2 = this.f3692a;
        return i2 == -1 ? i == 7 ? 6 : 3 : i2;
    }

    @Override // com.applovin.exoplayer2.k.v
    public long a(v.a aVar) {
        IOException iOException = aVar.f3711c;
        return ((iOException instanceof ai) || (iOException instanceof FileNotFoundException) || (iOException instanceof t.a) || (iOException instanceof w.g) || j.a(iOException)) ? C.TIME_UNSET : Math.min((aVar.f3712d - 1) * 1000, 5000);
    }
}
