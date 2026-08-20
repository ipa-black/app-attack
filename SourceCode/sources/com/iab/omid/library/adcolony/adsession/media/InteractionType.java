package com.iab.omid.library.adcolony.adsession.media;

import com.appodeal.ads.modules.common.internal.Constants;
/* loaded from: classes2.dex */
public enum InteractionType {
    CLICK(Constants.CLICK),
    INVITATION_ACCEPTED("invitationAccept");
    
    String interactionType;

    InteractionType(String str) {
        this.interactionType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.interactionType;
    }
}
