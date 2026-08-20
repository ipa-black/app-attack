package com.facebook.ads.redexgen.X;

import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
/* loaded from: assets/audience_network.dex */
public class PU implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ C05546q A00;

    public PU(C05546q c05546q) {
        this.A00 = c05546q;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        new Handler(Looper.getMainLooper()).post(new C0866Jw(this, i));
    }
}
