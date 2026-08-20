package com.appodeal.ads.waterfall_filter;

import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.n5;
import com.appodeal.ads.r;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList f7883d;

    /* renamed from: e  reason: collision with root package name */
    public d f7884e;

    /* renamed from: f  reason: collision with root package name */
    public final AdType f7885f;

    public a(JSONObject jSONObject, AdType adType) {
        ArrayList arrayList = new ArrayList();
        this.f7883d = arrayList;
        a(jSONObject);
        JSONArray optJSONArray = jSONObject.optJSONArray("networks");
        this.f7885f = adType;
        arrayList.add(new c(adType));
        arrayList.add(new b(optJSONArray));
        this.f7884e = a();
    }

    public final void a(r rVar) {
        this.f7884e = a();
        Iterator it = this.f7883d.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a(this.f7884e.f7893c, rVar);
        }
        d dVar = this.f7884e;
        dVar.f7891a.clear();
        dVar.f7892b.clear();
        Iterator it2 = dVar.f7893c.iterator();
        while (it2.hasNext()) {
            JSONObject jSONObject = (JSONObject) it2.next();
            (jSONObject.optBoolean("is_precache") ? dVar.f7891a : dVar.f7892b).add(jSONObject);
        }
        n5.a(this.f7885f, this);
    }

    public final ArrayList b() {
        return this.f7884e.f7891a;
    }

    public final ArrayList c() {
        return this.f7884e.f7892b;
    }
}
