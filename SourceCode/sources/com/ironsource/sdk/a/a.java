package com.ironsource.sdk.a;

import com.ironsource.sdk.utils.SDKUtils;
import java.util.HashMap;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public HashMap<String, Object> f11500a = new HashMap<>();

    public final a a(String str, Object obj) {
        if (obj != null) {
            this.f11500a.put(str, SDKUtils.encodeString(obj.toString()));
        }
        return this;
    }
}
