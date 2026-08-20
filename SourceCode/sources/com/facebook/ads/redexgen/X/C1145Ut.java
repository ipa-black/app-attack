package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroup;
import com.google.android.exoplayer2.ExoPlayer;
/* renamed from: com.facebook.ads.redexgen.X.Ut  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1145Ut implements GI {
    public final float A00;
    public final float A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final long A05;
    public final GS A06;
    public final HG A07;

    public C1145Ut(GS gs) {
        this(gs, 10000, 25000, 25000, 0.75f, 0.75f, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS, HG.A00);
    }

    public C1145Ut(GS gs, int i, int i2, int i3, float f2, float f3, long j, HG hg) {
        this.A06 = gs;
        this.A03 = i;
        this.A02 = i2;
        this.A04 = i3;
        this.A00 = f2;
        this.A01 = f3;
        this.A05 = j;
        this.A07 = hg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.GI
    /* renamed from: A00 */
    public final BD A4X(TrackGroup trackGroup, int... iArr) {
        return new BD(trackGroup, iArr, this.A06, this.A03, this.A02, this.A04, this.A00, this.A01, this.A05, this.A07);
    }
}
