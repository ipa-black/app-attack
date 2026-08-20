package com.applovin.impl.mediation.debugger.b.a;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a implements Comparable<a> {

    /* renamed from: a  reason: collision with root package name */
    private final String f4930a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4931b;

    /* renamed from: c  reason: collision with root package name */
    private final MaxAdFormat f4932c;

    /* renamed from: d  reason: collision with root package name */
    private final c f4933d;

    /* renamed from: e  reason: collision with root package name */
    private final List<c> f4934e;

    public a(JSONObject jSONObject, Map<String, com.applovin.impl.mediation.debugger.b.c.b> map, n nVar) {
        this.f4930a = JsonUtils.getString(jSONObject, "name", "");
        this.f4931b = JsonUtils.getString(jSONObject, "display_name", "");
        this.f4932c = MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, "format", null));
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "waterfalls", new JSONArray());
        this.f4934e = new ArrayList(jSONArray.length());
        c cVar = null;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                c cVar2 = new c(jSONObject2, map, this.f4932c, nVar);
                this.f4934e.add(cVar2);
                if (cVar == null && cVar2.c()) {
                    cVar = cVar2;
                }
            }
        }
        this.f4933d = cVar;
    }

    private c g() {
        if (this.f4934e.isEmpty()) {
            return null;
        }
        return this.f4934e.get(0);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(a aVar) {
        return this.f4931b.compareToIgnoreCase(aVar.f4931b);
    }

    public String a() {
        return this.f4930a;
    }

    public String b() {
        return this.f4931b;
    }

    public String c() {
        MaxAdFormat maxAdFormat = this.f4932c;
        return maxAdFormat != null ? maxAdFormat.getLabel() : LogConstants.KEY_UNKNOWN;
    }

    public MaxAdFormat d() {
        return this.f4932c;
    }

    public c e() {
        c cVar = this.f4933d;
        return cVar != null ? cVar : g();
    }

    public String f() {
        StringBuilder sb = new StringBuilder("\n---------- ");
        sb.append(this.f4931b).append(" ----------\nIdentifier - ").append(this.f4930a).append("\nFormat     - ").append(c());
        return sb.toString();
    }
}
