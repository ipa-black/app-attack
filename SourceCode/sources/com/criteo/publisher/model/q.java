package com.criteo.publisher.model;

import com.criteo.publisher.model.i;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import java.util.Collection;
import java.util.Collections;
/* compiled from: CdbRequestSlot.java */
/* loaded from: classes2.dex */
public abstract class q {
    @SerializedName("impId")
    public abstract String a();

    @SerializedName("placementId")
    public abstract String b();

    @SerializedName("sizes")
    public abstract Collection<String> c();

    @SerializedName("interstitial")
    public abstract Boolean d();

    @SerializedName("isNative")
    public abstract Boolean e();

    @SerializedName("rewarded")
    public abstract Boolean f();

    public static q a(String str, String str2, com.criteo.publisher.n0.a aVar, AdSize adSize) {
        return new i(str, str2, aVar == com.criteo.publisher.n0.a.CRITEO_CUSTOM_NATIVE ? true : null, aVar == com.criteo.publisher.n0.a.CRITEO_INTERSTITIAL ? true : null, aVar == com.criteo.publisher.n0.a.CRITEO_REWARDED ? true : null, Collections.singletonList(adSize.getFormattedSize()));
    }

    public static TypeAdapter<q> a(Gson gson) {
        return new i.a(gson);
    }
}
