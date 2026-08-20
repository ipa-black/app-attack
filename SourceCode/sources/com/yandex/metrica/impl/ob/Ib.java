package com.yandex.metrica.impl.ob;

import com.appodeal.ads.AppodealNetworks;
import com.yandex.metrica.impl.ob.C1878tb;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class Ib {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, C1878tb.a> f13068a;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("google", C1878tb.a.GOOGLE);
        hashMap.put("huawei", C1878tb.a.HMS);
        hashMap.put(AppodealNetworks.YANDEX, C1878tb.a.YANDEX);
        f13068a = Collections.unmodifiableMap(hashMap);
    }
}
