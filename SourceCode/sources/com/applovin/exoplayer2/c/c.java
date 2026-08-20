package com.applovin.exoplayer2.c;

import android.media.MediaCodec;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f1656a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f1657b;

    /* renamed from: c  reason: collision with root package name */
    public int f1658c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f1659d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f1660e;

    /* renamed from: f  reason: collision with root package name */
    public int f1661f;

    /* renamed from: g  reason: collision with root package name */
    public int f1662g;

    /* renamed from: h  reason: collision with root package name */
    public int f1663h;
    private final MediaCodec.CryptoInfo i;
    private final a j;

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final MediaCodec.CryptoInfo f1664a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaCodec.CryptoInfo.Pattern f1665b;

        private a(MediaCodec.CryptoInfo cryptoInfo) {
            this.f1664a = cryptoInfo;
            this.f1665b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, int i2) {
            this.f1665b.set(i, i2);
            this.f1664a.setPattern(this.f1665b);
        }
    }

    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.i = cryptoInfo;
        this.j = ai.f3781a >= 24 ? new a(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.i;
    }

    public void a(int i) {
        if (i == 0) {
            return;
        }
        if (this.f1659d == null) {
            int[] iArr = new int[1];
            this.f1659d = iArr;
            this.i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f1659d;
        iArr2[0] = iArr2[0] + i;
    }

    public void a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.f1661f = i;
        this.f1659d = iArr;
        this.f1660e = iArr2;
        this.f1657b = bArr;
        this.f1656a = bArr2;
        this.f1658c = i2;
        this.f1662g = i3;
        this.f1663h = i4;
        this.i.numSubSamples = i;
        this.i.numBytesOfClearData = iArr;
        this.i.numBytesOfEncryptedData = iArr2;
        this.i.key = bArr;
        this.i.iv = bArr2;
        this.i.mode = i2;
        if (ai.f3781a >= 24) {
            ((a) com.applovin.exoplayer2.l.a.b(this.j)).a(i3, i4);
        }
    }
}
