package com.criteo.publisher.i0;

import com.explorestack.iab.vast.VastError;
/* compiled from: Integration.kt */
/* loaded from: classes2.dex */
public enum a {
    FALLBACK(235),
    STANDALONE(295),
    IN_HOUSE(296),
    MOPUB_MEDIATION(297),
    ADMOB_MEDIATION(298),
    MOPUB_APP_BIDDING(299),
    GAM_APP_BIDDING(VastError.ERROR_CODE_GENERAL_WRAPPER),
    CUSTOM_APP_BIDDING(301);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f8871a;

    a(int i) {
        this.f8871a = i;
    }

    public final int a() {
        return this.f8871a;
    }
}
