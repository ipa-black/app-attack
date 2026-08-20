package com.yandex.metrica.impl.ob;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.kk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1667kk {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedList<JSONObject> f15034a;

    /* renamed from: b  reason: collision with root package name */
    private final C1432b9 f15035b;

    /* renamed from: c  reason: collision with root package name */
    private final LinkedList<String> f15036c;

    /* renamed from: d  reason: collision with root package name */
    private final Gk f15037d;

    /* renamed from: e  reason: collision with root package name */
    private int f15038e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1667kk(int i, C1432b9 c1432b9) {
        this(i, c1432b9, new C1543fk());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        if (this.f15034a.size() == this.f15038e) {
            this.f15034a.removeLast();
            this.f15036c.removeLast();
        }
        String jSONObject2 = jSONObject.toString();
        this.f15034a.addFirst(jSONObject);
        this.f15036c.addFirst(jSONObject2);
        if (this.f15036c.isEmpty()) {
            return;
        }
        this.f15035b.a(this.f15036c);
    }

    public List<JSONObject> b() {
        return this.f15034a;
    }

    C1667kk(int i, C1432b9 c1432b9, Gk gk) {
        this.f15034a = new LinkedList<>();
        this.f15036c = new LinkedList<>();
        this.f15038e = i;
        this.f15035b = c1432b9;
        this.f15037d = gk;
        a(c1432b9);
    }

    private void a(C1432b9 c1432b9) {
        List<String> h2 = c1432b9.h();
        for (int max = Math.max(0, h2.size() - this.f15038e); max < h2.size(); max++) {
            String str = h2.get(max);
            try {
                this.f15034a.addLast(new JSONObject(str));
                this.f15036c.addLast(str);
            } catch (Throwable unused) {
            }
        }
    }

    public JSONObject a() {
        return this.f15037d.a(new JSONArray((Collection) this.f15034a));
    }
}
