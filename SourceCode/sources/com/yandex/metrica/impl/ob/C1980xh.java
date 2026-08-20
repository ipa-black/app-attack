package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.xh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1980xh {

    /* renamed from: a  reason: collision with root package name */
    private final C1965x2 f16055a;

    /* renamed from: b  reason: collision with root package name */
    private final C1956wh f16056b;

    public C1980xh(C1956wh c1956wh) {
        this(c1956wh, new C1965x2());
    }

    public long a(int i) {
        return a().optLong(String.valueOf(i));
    }

    C1980xh(C1956wh c1956wh, C1965x2 c1965x2) {
        this.f16056b = c1956wh;
        this.f16055a = c1965x2;
    }

    public void a(int i, long j) {
        JSONObject a2 = a();
        try {
            a2.put(String.valueOf(i), j);
        } catch (Throwable unused) {
        }
        this.f16056b.a(a2.toString());
    }

    public void a(long j) {
        ArrayList arrayList = new ArrayList();
        JSONObject a2 = a();
        Iterator<String> keys = a2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (this.f16055a.b(a2.optLong(next), j, "last socket open on " + next)) {
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a2.remove((String) it.next());
        }
        this.f16056b.a(a2.toString());
    }

    private JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        String a2 = this.f16056b.a();
        if (TextUtils.isEmpty(a2)) {
            return jSONObject;
        }
        try {
            return new JSONObject(a2);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }
}
