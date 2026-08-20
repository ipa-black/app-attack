package com.applovin.impl.mediation.debugger.b.a;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.appnext.ads.fullscreen.RewardedVideo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f4938a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f4939b;

    /* renamed from: c  reason: collision with root package name */
    private final List<b> f4940c;

    /* renamed from: d  reason: collision with root package name */
    private final List<b> f4941d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4942e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(JSONObject jSONObject, Map<String, com.applovin.impl.mediation.debugger.b.c.b> map, MaxAdFormat maxAdFormat, n nVar) {
        this.f4938a = JsonUtils.getString(jSONObject, "name", "");
        this.f4939b = JsonUtils.getBoolean(jSONObject, RewardedVideo.VIDEO_MODE_DEFAULT, false).booleanValue();
        this.f4940c = a("bidders", jSONObject, map, maxAdFormat, nVar);
        this.f4941d = a("waterfall", jSONObject, map, maxAdFormat, nVar);
    }

    private List<b> a(String str, JSONObject jSONObject, Map<String, com.applovin.impl.mediation.debugger.b.c.b> map, MaxAdFormat maxAdFormat, n nVar) {
        com.applovin.impl.mediation.debugger.b.c.b bVar;
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, str, new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null && (bVar = map.get(JsonUtils.getString(jSONObject2, "adapter_class", ""))) != null) {
                if (bVar.A()) {
                    this.f4942e = true;
                }
                arrayList.add(new b(jSONObject2, maxAdFormat, bVar, nVar));
            }
        }
        return arrayList;
    }

    public List<b> a() {
        return this.f4940c;
    }

    public List<b> b() {
        return this.f4941d;
    }

    public boolean c() {
        return this.f4939b;
    }

    public boolean d() {
        return this.f4942e;
    }
}
