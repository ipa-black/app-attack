package com.appodeal.ads;

import com.appodeal.ads.api.Stats;
/* loaded from: classes.dex */
public enum e0 {
    Successful(Stats.AdUnitRequestResult.SUCCESSFUL),
    NoFill(Stats.AdUnitRequestResult.NOFILL),
    TimeOutReached(Stats.AdUnitRequestResult.TIMEOUTREACHED),
    Exception(Stats.AdUnitRequestResult.EXCEPTION),
    UndefinedAdapter(Stats.AdUnitRequestResult.UNDEFINEDADAPTER),
    IncorrectAdunit(Stats.AdUnitRequestResult.INCORRECTADUNIT),
    InvalidAssets(Stats.AdUnitRequestResult.INVALIDASSETS),
    /* JADX INFO: Fake field, exist only in values array */
    Unrecognized(Stats.AdUnitRequestResult.UNRECOGNIZED),
    Canceled(Stats.AdUnitRequestResult.CANCELED),
    IncorrectCreative(Stats.AdUnitRequestResult.EXCEPTION);
    

    /* renamed from: a  reason: collision with root package name */
    public final Stats.AdUnitRequestResult f6640a;

    e0(Stats.AdUnitRequestResult adUnitRequestResult) {
        this.f6640a = adUnitRequestResult;
    }

    public final Stats.AdUnitRequestResult a() {
        return this.f6640a;
    }
}
