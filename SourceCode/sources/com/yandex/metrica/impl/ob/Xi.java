package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Xi {

    /* renamed from: a  reason: collision with root package name */
    private C1458ca f14278a;

    /* renamed from: b  reason: collision with root package name */
    private final Zi f14279b;

    public Xi() {
        this(new C1458ca(), new Zi());
    }

    public C1594hl a(JSONObject jSONObject, String str, If.v vVar) {
        C1458ca c1458ca = this.f14278a;
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject != null) {
            vVar.f13173a = optJSONObject.optBoolean("text_size_collecting", vVar.f13173a);
            vVar.f13174b = optJSONObject.optBoolean("relative_text_size_collecting", vVar.f13174b);
            vVar.f13175c = optJSONObject.optBoolean("text_visibility_collecting", vVar.f13175c);
            vVar.f13176d = optJSONObject.optBoolean("text_style_collecting", vVar.f13176d);
            vVar.i = optJSONObject.optBoolean("info_collecting", vVar.i);
            vVar.j = optJSONObject.optBoolean("non_content_view_collecting", vVar.j);
            vVar.k = optJSONObject.optBoolean("text_length_collecting", vVar.k);
            vVar.l = optJSONObject.optBoolean("view_hierarchical", vVar.l);
            vVar.n = optJSONObject.optBoolean("ignore_filtered", vVar.n);
            vVar.o = optJSONObject.optBoolean("web_view_urls_collecting", vVar.o);
            vVar.f13177e = optJSONObject.optInt("too_long_text_bound", vVar.f13177e);
            vVar.f13178f = optJSONObject.optInt("truncated_text_bound", vVar.f13178f);
            vVar.f13179g = optJSONObject.optInt("max_entities_count", vVar.f13179g);
            vVar.f13180h = optJSONObject.optInt("max_full_content_length", vVar.f13180h);
            vVar.p = optJSONObject.optInt("web_view_url_limit", vVar.p);
            vVar.m = this.f14279b.a(optJSONObject.optJSONArray("filters"));
        }
        return c1458ca.toModel(vVar);
    }

    Xi(C1458ca c1458ca, Zi zi) {
        this.f14278a = c1458ca;
        this.f14279b = zi;
    }
}
