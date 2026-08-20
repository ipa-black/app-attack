package com.ironsource.sdk.b;

import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    int f11540b = 4;

    /* renamed from: c  reason: collision with root package name */
    int f11541c = 4;

    /* renamed from: a  reason: collision with root package name */
    HashMap<String, Boolean> f11539a = new HashMap<String, Boolean>() { // from class: com.ironsource.sdk.b.d.1
        {
            put("isVisible", Boolean.valueOf(d.this.f11540b == 0));
            put("isWindowVisible", Boolean.valueOf(d.this.f11541c == 0));
            put("isShown", Boolean.FALSE);
            put("isViewVisible", Boolean.FALSE);
        }
    };

    public final JSONObject a() {
        return new JSONObject(this.f11539a);
    }
}
