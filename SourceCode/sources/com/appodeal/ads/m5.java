package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.data.UserPersonalData;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class m5 extends j4 implements UserPersonalData {

    /* renamed from: c  reason: collision with root package name */
    public static final m5 f6871c = new m5();

    @Override // com.appodeal.ads.modules.common.internal.data.UserPersonalData
    public final JSONObject getCachedToken() {
        return x2.f();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.UserPersonalData
    public final JSONObject getExtraData() {
        return ExtraData.INSTANCE.asJson();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.UserPersonalData
    public final boolean wasAdIdGenerated() {
        return x2.h();
    }
}
