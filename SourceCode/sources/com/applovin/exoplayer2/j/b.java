package com.applovin.exoplayer2.j;

import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.v;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes.dex */
public abstract class b implements d {

    /* renamed from: a  reason: collision with root package name */
    protected final ac f3483a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f3484b;

    /* renamed from: c  reason: collision with root package name */
    protected final int[] f3485c;

    /* renamed from: d  reason: collision with root package name */
    private final int f3486d;

    /* renamed from: e  reason: collision with root package name */
    private final v[] f3487e;

    /* renamed from: f  reason: collision with root package name */
    private final long[] f3488f;

    /* renamed from: g  reason: collision with root package name */
    private int f3489g;

    public b(ac acVar, int[] iArr, int i) {
        int i2 = 0;
        com.applovin.exoplayer2.l.a.b(iArr.length > 0);
        this.f3486d = i;
        this.f3483a = (ac) com.applovin.exoplayer2.l.a.b(acVar);
        int length = iArr.length;
        this.f3484b = length;
        this.f3487e = new v[length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.f3487e[i3] = acVar.a(iArr[i3]);
        }
        Arrays.sort(this.f3487e, new Comparator() { // from class: com.applovin.exoplayer2.j.b$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a2;
                a2 = b.a((v) obj, (v) obj2);
                return a2;
            }
        });
        this.f3485c = new int[this.f3484b];
        while (true) {
            int i4 = this.f3484b;
            if (i2 >= i4) {
                this.f3488f = new long[i4];
                return;
            } else {
                this.f3485c[i2] = acVar.a(this.f3487e[i2]);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(v vVar, v vVar2) {
        return vVar2.f4185h - vVar.f4185h;
    }

    @Override // com.applovin.exoplayer2.j.g
    public final v a(int i) {
        return this.f3487e[i];
    }

    @Override // com.applovin.exoplayer2.j.d
    public void a() {
    }

    @Override // com.applovin.exoplayer2.j.d
    public void a(float f2) {
    }

    @Override // com.applovin.exoplayer2.j.g
    public final int b(int i) {
        return this.f3485c[i];
    }

    @Override // com.applovin.exoplayer2.j.d
    public void b() {
    }

    @Override // com.applovin.exoplayer2.j.g
    public final ac d() {
        return this.f3483a;
    }

    @Override // com.applovin.exoplayer2.j.g
    public final int e() {
        return this.f3485c.length;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3483a == bVar.f3483a && Arrays.equals(this.f3485c, bVar.f3485c);
    }

    @Override // com.applovin.exoplayer2.j.d
    public final v f() {
        return this.f3487e[c()];
    }

    public int hashCode() {
        if (this.f3489g == 0) {
            this.f3489g = (System.identityHashCode(this.f3483a) * 31) + Arrays.hashCode(this.f3485c);
        }
        return this.f3489g;
    }
}
