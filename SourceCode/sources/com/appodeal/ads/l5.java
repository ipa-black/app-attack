package com.appodeal.ads;

import com.appodeal.ads.UserSettings;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
import com.ironsource.mediationsdk.IronSourceSegment;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class l5 implements UserData {
    public static volatile l5 l;

    /* renamed from: a  reason: collision with root package name */
    public String f6845a;

    /* renamed from: b  reason: collision with root package name */
    public UserSettings.Gender f6846b;

    /* renamed from: c  reason: collision with root package name */
    public Integer f6847c;

    /* renamed from: d  reason: collision with root package name */
    public String f6848d;

    /* renamed from: e  reason: collision with root package name */
    public String f6849e;

    /* renamed from: f  reason: collision with root package name */
    public String f6850f;

    /* renamed from: g  reason: collision with root package name */
    public String f6851g;

    /* renamed from: h  reason: collision with root package name */
    public Float f6852h;
    public Float i;
    public String j;
    public String k;

    public static l5 a() {
        if (l == null) {
            synchronized (l5.class) {
                if (l == null) {
                    l = new l5();
                }
            }
        }
        return l;
    }

    public static void a(JSONObject jSONObject) {
        int optInt;
        int optInt2;
        UserSettings.Gender fromInteger;
        if (jSONObject == null) {
            return;
        }
        l5 a2 = a();
        JSONObject optJSONObject = jSONObject.optJSONObject("user_settings");
        if (optJSONObject != null) {
            if (a2.f6846b == null && optJSONObject.has("gender") && (optInt2 = optJSONObject.optInt("gender", -1)) > -1 && (fromInteger = UserSettings.Gender.fromInteger(Integer.valueOf(optInt2))) != null) {
                a2.f6846b = fromInteger;
            }
            if (a2.f6847c == null && optJSONObject.has(IronSourceSegment.AGE) && (optInt = optJSONObject.optInt(IronSourceSegment.AGE, -1)) > -1) {
                a2.f6847c = Integer.valueOf(optInt);
            }
            if (optJSONObject.has(com.appnext.base.b.i.fC)) {
                float optDouble = (float) optJSONObject.optDouble(com.appnext.base.b.i.fC, -1.0d);
                if (optDouble > -1.0f) {
                    a2.f6852h = Float.valueOf(optDouble);
                }
            }
            if (optJSONObject.has("lon")) {
                float optDouble2 = (float) optJSONObject.optDouble("lon", -1.0d);
                if (optDouble2 > -1.0f) {
                    a2.i = Float.valueOf(optDouble2);
                }
            }
            a2.j = n5.a(optJSONObject, "city", a2.j);
            a2.k = n5.a(optJSONObject, "zip", a2.k);
        }
        a2.f6848d = n5.a(jSONObject, "ip", a2.f6848d);
        a2.f6849e = n5.a(jSONObject, "ipv6", a2.f6849e);
        a2.f6850f = n5.a(jSONObject, "country_id", a2.f6850f);
        a2.f6851g = n5.a(jSONObject, "address", a2.f6851g);
    }

    @Override // com.appodeal.ads.UserData
    public final String getAddress() {
        return this.f6851g;
    }

    @Override // com.appodeal.ads.UserSettings
    @Deprecated
    public final Integer getAge() {
        return this.f6847c;
    }

    @Override // com.appodeal.ads.UserData
    public final String getCity() {
        return this.j;
    }

    @Override // com.appodeal.ads.UserData
    public final String getCountryId() {
        return this.f6850f;
    }

    @Override // com.appodeal.ads.UserSettings
    @Deprecated
    public final UserSettings.Gender getGender() {
        return this.f6846b;
    }

    @Override // com.appodeal.ads.UserData
    public final String getIp() {
        return this.f6848d;
    }

    @Override // com.appodeal.ads.UserData
    public final String getIpv6() {
        return this.f6849e;
    }

    @Override // com.appodeal.ads.UserData
    public final Float getLat() {
        return this.f6852h;
    }

    @Override // com.appodeal.ads.UserData
    public final Float getLon() {
        return this.i;
    }

    @Override // com.appodeal.ads.UserSettings
    public final String getUserId() {
        return this.f6845a;
    }

    @Override // com.appodeal.ads.UserData
    public final String getZip() {
        return this.k;
    }

    @Override // com.appodeal.ads.UserSettings
    @Deprecated
    public final UserSettings setAge(int i) {
        Log.log("UserSettings", LogConstants.EVENT_SET, String.format("age: %s", Integer.valueOf(i)), Log.LogLevel.verbose);
        this.f6847c = Integer.valueOf(i);
        return this;
    }

    @Override // com.appodeal.ads.UserSettings
    @Deprecated
    public final UserSettings setGender(UserSettings.Gender gender) {
        if (gender == null) {
            Log.log(new com.appodeal.ads.utils.exception_handler.a("Unable to set gender to null"));
            return this;
        }
        Log.log("UserSettings", LogConstants.EVENT_SET, String.format("gender: %s", gender), Log.LogLevel.verbose);
        this.f6846b = gender;
        return this;
    }

    @Override // com.appodeal.ads.UserSettings
    public final UserSettings setUserId(String str) {
        if (str == null) {
            Log.log(new com.appodeal.ads.utils.exception_handler.a("Unable to set user id to null"));
            return this;
        }
        Log.log("UserSettings", LogConstants.EVENT_SET, String.format("userId: %s", str), Log.LogLevel.verbose);
        this.f6845a = str;
        return this;
    }
}
