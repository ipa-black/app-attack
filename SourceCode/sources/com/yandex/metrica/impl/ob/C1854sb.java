package com.yandex.metrica.impl.ob;

import com.unity3d.ads.metadata.MediationMetaData;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.sb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1854sb {

    /* renamed from: a  reason: collision with root package name */
    private final String f15710a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15711b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f15712c;

    public C1854sb(JSONObject jSONObject) throws JSONException {
        this.f15710a = jSONObject.getString("name");
        this.f15712c = jSONObject.getBoolean("required");
        this.f15711b = jSONObject.optInt(MediationMetaData.KEY_VERSION, -1);
    }

    public JSONObject a() throws JSONException {
        JSONObject put = new JSONObject().put("name", this.f15710a).put("required", this.f15712c);
        int i = this.f15711b;
        if (i != -1) {
            put.put(MediationMetaData.KEY_VERSION, i);
        }
        return put;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1854sb.class != obj.getClass()) {
            return false;
        }
        C1854sb c1854sb = (C1854sb) obj;
        if (this.f15711b == c1854sb.f15711b && this.f15712c == c1854sb.f15712c) {
            String str = this.f15710a;
            String str2 = c1854sb.f15710a;
            return str != null ? str.equals(str2) : str2 == null;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f15710a;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.f15711b) * 31) + (this.f15712c ? 1 : 0);
    }

    public C1854sb(String str, int i, boolean z) {
        this.f15710a = str;
        this.f15711b = i;
        this.f15712c = z;
    }
}
