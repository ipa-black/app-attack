package com.bytedance.sdk.component.cJ.Qhi.cJ;

import android.support.v4.media.session.PlaybackStateCompat;
/* compiled from: SegmentPool.java */
/* loaded from: classes2.dex */
final class ROR {
    static Tgh Qhi;
    static long cJ;

    private ROR() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Tgh Qhi() {
        synchronized (ROR.class) {
            Tgh tgh = Qhi;
            if (tgh != null) {
                Qhi = tgh.Tgh;
                tgh.Tgh = null;
                cJ -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return tgh;
            }
            return new Tgh();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Qhi(Tgh tgh) {
        if (tgh.Tgh != null || tgh.ROR != null) {
            throw new IllegalArgumentException();
        }
        if (tgh.CJ) {
            return;
        }
        synchronized (ROR.class) {
            long j = cJ;
            if (j + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                return;
            }
            cJ = j + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            tgh.Tgh = Qhi;
            tgh.ac = 0;
            tgh.cJ = 0;
            Qhi = tgh;
        }
    }
}
