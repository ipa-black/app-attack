package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.b.s;
import com.applovin.exoplayer2.e.h.h;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Arrays;
/* loaded from: classes.dex */
final class g extends h {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f2380a = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: b  reason: collision with root package name */
    private boolean f2381b;

    private long a(byte[] bArr) {
        int i;
        int i2;
        byte b2 = bArr[0];
        int i3 = b2 & 255;
        int i4 = b2 & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1 && i4 != 2) {
                i = bArr[1] & 63;
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        return i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i5 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2);
    }

    public static boolean a(y yVar) {
        int a2 = yVar.a();
        byte[] bArr = f2380a;
        if (a2 < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        yVar.a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e.h.h
    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.f2381b = false;
        }
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected boolean a(y yVar, long j, h.a aVar) {
        if (this.f2381b) {
            com.applovin.exoplayer2.l.a.b(aVar.f2390a);
            boolean z = yVar.q() == 1332770163;
            yVar.d(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(yVar.d(), yVar.b());
        aVar.f2390a = new v.a().f(MimeTypes.AUDIO_OPUS).k(s.a(copyOf)).l(OpusUtil.SAMPLE_RATE).a(s.b(copyOf)).a();
        this.f2381b = true;
        return true;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected long b(y yVar) {
        return b(a(yVar.d()));
    }
}
