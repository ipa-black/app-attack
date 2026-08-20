package com.applovin.exoplayer2.m.a;

import android.media.MediaFormat;
import com.applovin.exoplayer2.l.af;
import com.applovin.exoplayer2.m.l;
import com.applovin.exoplayer2.v;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
final class h implements a, l {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f3913a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3914b;

    /* renamed from: c  reason: collision with root package name */
    private final af<Long> f3915c;

    /* renamed from: d  reason: collision with root package name */
    private final af<e> f3916d;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f3917e;

    /* renamed from: f  reason: collision with root package name */
    private int f3918f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f3919g;

    private void a(byte[] bArr, int i, long j) {
        byte[] bArr2 = this.f3919g;
        int i2 = this.f3918f;
        this.f3919g = bArr;
        if (i == -1) {
            i = this.f3917e;
        }
        this.f3918f = i;
        if (i2 == i && Arrays.equals(bArr2, this.f3919g)) {
            return;
        }
        byte[] bArr3 = this.f3919g;
        e a2 = bArr3 != null ? f.a(bArr3, this.f3918f) : null;
        if (a2 == null || !g.a(a2)) {
            a2 = e.a(this.f3918f);
        }
        this.f3916d.a(j, (long) a2);
    }

    @Override // com.applovin.exoplayer2.m.a.a
    public void a() {
        this.f3915c.a();
        this.f3914b.a();
        this.f3913a.set(true);
    }

    public void a(int i) {
        this.f3917e = i;
    }

    @Override // com.applovin.exoplayer2.m.l
    public void a(long j, long j2, v vVar, MediaFormat mediaFormat) {
        this.f3915c.a(j2, (long) Long.valueOf(j));
        a(vVar.v, vVar.w, j2);
    }

    @Override // com.applovin.exoplayer2.m.a.a
    public void a(long j, float[] fArr) {
        this.f3914b.a(j, fArr);
    }
}
