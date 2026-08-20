package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Handler;
import com.google.android.exoplayer2.ExoPlayer;
/* loaded from: assets/audience_network.dex */
public class PV extends AnimatorListenerAdapter {
    public final /* synthetic */ C05496i A00;

    public PV(C05496i c05496i) {
        this.A00 = c05496i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Handler handler;
        handler = this.A00.A00.A04;
        handler.postDelayed(new C0865Ju(this), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }
}
