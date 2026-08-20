package com.yandex.metrica.impl.ob;

import com.appodeal.ads.modules.common.internal.Constants;
import com.yandex.metrica.impl.ob.C1630j8;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes5.dex */
public class P7 {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, List<String>> f13684a;

    public P7() {
        HashMap<String, List<String>> hashMap = new HashMap<>();
        this.f13684a = hashMap;
        hashMap.put("reports", C1630j8.d.f14982a);
        hashMap.put(Constants.SESSIONS, C1630j8.e.f14984a);
        hashMap.put("preferences", C1630j8.c.f14981a);
        hashMap.put("binary_data", C1630j8.b.f14980a);
    }

    public HashMap<String, List<String>> a() {
        return this.f13684a;
    }
}
