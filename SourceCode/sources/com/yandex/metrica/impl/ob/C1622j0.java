package com.yandex.metrica.impl.ob;

import android.content.Intent;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.j0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1622j0 {

    /* renamed from: a  reason: collision with root package name */
    private final K0 f14936a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Boolean, String> f14937b = new HashMap();

    public C1622j0(K0 k0) {
        this.f14936a = k0;
    }

    public void a(Intent intent) {
        if (intent != null) {
            a(intent.getDataString(), false);
        }
    }

    public void b(String str) {
        a(str, true);
    }

    public void a(String str) {
        a(str, false);
    }

    private void a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!A2.a(str, this.f14937b.get(Boolean.valueOf(!z)))) {
            this.f14936a.a(str, z);
        }
        this.f14937b.put(Boolean.valueOf(z), str);
    }
}
