package com.ironsource.mediationsdk.server;

import com.ironsource.mediationsdk.impressionData.ImpressionData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f11383a;

    /* renamed from: b  reason: collision with root package name */
    private String f11384b;

    /* renamed from: c  reason: collision with root package name */
    private String f11385c;

    /* renamed from: d  reason: collision with root package name */
    private List<String> f11386d;

    /* renamed from: e  reason: collision with root package name */
    private List<String> f11387e;

    /* renamed from: f  reason: collision with root package name */
    private List<String> f11388f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11389g;

    /* renamed from: h  reason: collision with root package name */
    private ImpressionData f11390h;

    public b(String str) {
        this.f11383a = str;
        this.f11384b = "";
        this.f11385c = "";
        this.f11386d = new ArrayList();
        this.f11387e = new ArrayList();
        this.f11388f = new ArrayList();
        this.f11389g = true;
        this.f11390h = null;
    }

    public b(JSONObject jSONObject) {
        this(jSONObject, null);
    }

    public b(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f11389g = false;
        try {
            if (jSONObject.has("instance")) {
                this.f11383a = jSONObject.getString("instance");
            }
            this.f11384b = jSONObject.has("adMarkup") ? jSONObject.getString("adMarkup") : jSONObject.has("serverData") ? jSONObject.getString("serverData") : "";
            this.f11385c = jSONObject.has("price") ? jSONObject.getString("price") : "0";
            this.f11386d = new ArrayList();
            this.f11387e = new ArrayList();
            this.f11388f = new ArrayList();
            if (jSONObject.has("notifications")) {
                JSONObject optJSONObject = jSONObject.optJSONObject("notifications");
                if (optJSONObject.has("burl")) {
                    JSONArray jSONArray = optJSONObject.getJSONArray("burl");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        this.f11386d.add(jSONArray.getString(i));
                    }
                }
                if (optJSONObject.has("lurl")) {
                    JSONArray jSONArray2 = optJSONObject.getJSONArray("lurl");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        this.f11387e.add(jSONArray2.getString(i2));
                    }
                }
                if (optJSONObject.has("nurl")) {
                    JSONArray jSONArray3 = optJSONObject.getJSONArray("nurl");
                    for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                        this.f11388f.add(jSONArray3.getString(i3));
                    }
                }
            }
            this.f11390h = new ImpressionData(com.ironsource.mediationsdk.c.b.a(jSONObject2, jSONObject.has("armData") ? jSONObject.optJSONObject("armData") : null));
            this.f11389g = true;
        } catch (Exception unused) {
        }
    }

    public ImpressionData a(String str) {
        ImpressionData impressionData = this.f11390h;
        if (impressionData != null) {
            impressionData.replaceMacroForPlacementWithValue("${PLACEMENT_NAME}", str);
        }
        return this.f11390h;
    }

    public String a() {
        return this.f11383a;
    }

    public String b() {
        return this.f11384b;
    }

    public String c() {
        return this.f11385c;
    }

    public List<String> d() {
        return this.f11386d;
    }

    public List<String> e() {
        return this.f11387e;
    }

    public List<String> f() {
        return this.f11388f;
    }

    public boolean g() {
        return this.f11389g;
    }
}
