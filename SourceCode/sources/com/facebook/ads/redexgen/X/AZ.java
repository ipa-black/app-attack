package com.facebook.ads.redexgen.X;

import android.media.AudioTrack;
/* loaded from: assets/audience_network.dex */
public class AZ extends Thread {
    public final /* synthetic */ AudioTrack A00;
    public final /* synthetic */ C1188Wn A01;

    public AZ(C1188Wn c1188Wn, AudioTrack audioTrack) {
        this.A01 = c1188Wn;
        this.A00 = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A00.release();
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
