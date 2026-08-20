package com.bytedance.sdk.openadsdk.core.ROR;

import android.view.View;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.media.InteractionType;
import com.iab.omid.library.bytedance2.adsession.media.MediaEvents;
import com.iab.omid.library.bytedance2.adsession.media.PlayerState;
import com.iab.omid.library.bytedance2.adsession.media.Position;
import com.iab.omid.library.bytedance2.adsession.media.VastProperties;
/* compiled from: ViewabilityTrackerForVideo.java */
/* loaded from: classes2.dex */
public class WAv extends Sf {
    private boolean Tgh;
    private final MediaEvents fl;

    public WAv(AdSession adSession, AdEvents adEvents, View view, MediaEvents mediaEvents) {
        super(adSession, adEvents, view);
        this.fl = mediaEvents;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ROR.Sf
    public void Qhi(boolean z, float f2) {
        if (z) {
            this.CJ = VastProperties.createVastPropertiesForSkippableMedia(f2, true, Position.STANDALONE);
        } else {
            this.CJ = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
        }
        Qhi(2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ROR.Sf
    public void Qhi(float f2, boolean z) {
        if (Qhi()) {
            this.fl.start(f2, z ? 0.0f : 1.0f);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ROR.Sf
    public void Qhi(boolean z) {
        this.Tgh = z;
        cJ(12);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ROR.Sf
    public void cJ(int i) {
        if (Qhi()) {
            switch (i) {
                case 0:
                    this.fl.pause();
                    return;
                case 1:
                    this.fl.resume();
                    return;
                case 2:
                case 14:
                    this.fl.skipped();
                    return;
                case 3:
                default:
                    return;
                case 4:
                    this.fl.bufferStart();
                    return;
                case 5:
                    this.fl.bufferFinish();
                    return;
                case 6:
                    this.fl.firstQuartile();
                    return;
                case 7:
                    this.fl.midpoint();
                    return;
                case 8:
                    this.fl.thirdQuartile();
                    return;
                case 9:
                    this.fl.complete();
                    return;
                case 10:
                    this.fl.playerStateChange(PlayerState.FULLSCREEN);
                    return;
                case 11:
                    this.fl.playerStateChange(PlayerState.NORMAL);
                    return;
                case 12:
                    this.fl.volumeChange(this.Tgh ? 0.0f : 1.0f);
                    return;
                case 13:
                    this.fl.adUserInteraction(InteractionType.CLICK);
                    return;
            }
        }
    }
}
