package com.appodeal.consent.internal;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.consent.Consent;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class k {

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Consent f8136a;

        /* renamed from: b  reason: collision with root package name */
        public final String f8137b;

        /* renamed from: c  reason: collision with root package name */
        public final Boolean f8138c;

        public a(Consent consent, String str, Boolean bool) {
            this.f8136a = consent;
            this.f8137b = str;
            this.f8138c = bool;
        }

        public final Consent a() {
            return this.f8136a;
        }

        public final String b() {
            return this.f8137b;
        }

        public final Boolean c() {
            return this.f8138c;
        }
    }

    public static a a(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        JSONObject optJSONObject = jsonObject.optJSONObject("consent");
        Consent consent = optJSONObject == null ? null : new Consent(optJSONObject);
        JSONObject optJSONObject2 = jsonObject.optJSONObject("form");
        return new a(consent, optJSONObject2 == null ? null : optJSONObject2.optString("url"), optJSONObject2 != null ? Boolean.valueOf(optJSONObject2.optBoolean(Constants.SHOW)) : null);
    }
}
