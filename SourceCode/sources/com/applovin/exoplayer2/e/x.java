package com.applovin.exoplayer2.e;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes.dex */
public interface x {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2715a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f2716b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2717c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2718d;

        public a(int i, byte[] bArr, int i2, int i3) {
            this.f2715a = i;
            this.f2716b = bArr;
            this.f2717c = i2;
            this.f2718d = i3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f2715a == aVar.f2715a && this.f2717c == aVar.f2717c && this.f2718d == aVar.f2718d && Arrays.equals(this.f2716b, aVar.f2716b);
        }

        public int hashCode() {
            return (((((this.f2715a * 31) + Arrays.hashCode(this.f2716b)) * 31) + this.f2717c) * 31) + this.f2718d;
        }
    }

    default int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z) throws IOException {
        return a(gVar, i, z, 0);
    }

    int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z, int i2) throws IOException;

    void a(long j, int i, int i2, int i3, a aVar);

    default void a(com.applovin.exoplayer2.l.y yVar, int i) {
        a(yVar, i, 0);
    }

    void a(com.applovin.exoplayer2.l.y yVar, int i, int i2);

    void a(com.applovin.exoplayer2.v vVar);
}
