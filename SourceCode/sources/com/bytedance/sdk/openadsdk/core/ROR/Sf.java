package com.bytedance.sdk.openadsdk.core.ROR;

import android.util.Pair;
import android.view.View;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.bytedance2.adsession.media.Position;
import com.iab.omid.library.bytedance2.adsession.media.VastProperties;
import java.util.Set;
/* compiled from: ViewabilityTracker.java */
/* loaded from: classes2.dex */
public class Sf {
    protected VastProperties CJ;
    private final AdEvents Tgh;
    protected String ac;
    private final AdSession fl;
    private boolean ROR = false;
    protected boolean Qhi = false;
    protected int cJ = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(float f2, boolean z) {
    }

    public void Qhi(boolean z) {
    }

    public void Qhi(boolean z, float f2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cJ(int i) {
    }

    public Sf(AdSession adSession, AdEvents adEvents, View view) {
        this.fl = adSession;
        this.Tgh = adEvents;
        this.ac = adSession.getAdSessionId();
        Qhi(view);
    }

    void Qhi(View view) {
        AdSession adSession;
        if (view == null || (adSession = this.fl) == null) {
            return;
        }
        adSession.registerAdView(view);
    }

    public void Qhi(View view, FriendlyObstructionPurpose friendlyObstructionPurpose) {
        AdSession adSession = this.fl;
        if (adSession != null) {
            adSession.addFriendlyObstruction(view, friendlyObstructionPurpose, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean Qhi() {
        return this.Qhi;
    }

    public void Qhi(int i) {
        int i2;
        if (this.fl == null || this.Tgh == null || !Tgh.ac()) {
            return;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4 || (i2 = this.cJ) == 0 || i2 == 4) {
                        return;
                    }
                    this.fl.finish();
                    this.Qhi = false;
                } else if (this.ROR) {
                    return;
                } else {
                    int i3 = this.cJ;
                    if (i3 != 1 && i3 != 2) {
                        return;
                    }
                    this.Tgh.impressionOccurred();
                    this.ROR = true;
                }
            } else if (this.cJ != 0) {
                return;
            } else {
                this.fl.start();
                if (this.CJ == null) {
                    this.CJ = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
                }
                this.Tgh.loaded(this.CJ);
                this.Qhi = true;
                this.CJ = null;
            }
        } else if (this.cJ != 0) {
            return;
        } else {
            this.fl.start();
            this.Tgh.loaded();
            this.Qhi = true;
        }
        this.cJ = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cJ() {
        Qhi(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ac() {
        Qhi(4);
    }

    public void CJ() {
        Qhi(3);
    }

    public void Qhi(Set<Pair<View, FriendlyObstructionPurpose>> set) {
        for (Pair<View, FriendlyObstructionPurpose> pair : set) {
            Qhi((View) pair.first, (FriendlyObstructionPurpose) pair.second);
        }
    }
}
