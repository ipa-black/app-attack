package com.applovin.impl.sdk;

import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinUserSegment;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements AppLovinUserSegment {

    /* renamed from: a  reason: collision with root package name */
    private String f5790a;

    @Override // com.applovin.sdk.AppLovinUserSegment
    public String getName() {
        return this.f5790a;
    }

    @Override // com.applovin.sdk.AppLovinUserSegment
    public void setName(String str) {
        if (str != null) {
            if (str.length() > 32) {
                v.i("AppLovinUserSegment", "Setting name greater than 32 characters: " + str);
            }
            if (!StringUtils.isAlphaNumeric(str)) {
                v.i("AppLovinUserSegment", "Setting name that is not alphanumeric: " + str);
            }
        }
        this.f5790a = str;
    }

    public String toString() {
        return "AppLovinUserSegment{name=" + getName() + '}';
    }
}
