package com.ironsource.mediationsdk.model;

import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<j> f11267a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public j f11268b;

    /* renamed from: c  reason: collision with root package name */
    public com.ironsource.sdk.g.d f11269c;

    /* renamed from: d  reason: collision with root package name */
    public JSONObject f11270d;

    public i(com.ironsource.sdk.g.d dVar) {
        this.f11269c = dVar;
    }

    public final j a() {
        Iterator<j> it = this.f11267a.iterator();
        while (it.hasNext()) {
            j next = it.next();
            if (next.f11273c) {
                return next;
            }
        }
        return this.f11268b;
    }

    public final j a(String str) {
        Iterator<j> it = this.f11267a.iterator();
        while (it.hasNext()) {
            j next = it.next();
            if (next.f11272b.equals(str)) {
                return next;
            }
        }
        return null;
    }

    public final String b() {
        JSONObject jSONObject = this.f11270d;
        return (jSONObject == null || TextUtils.isEmpty(jSONObject.optString("adapterName"))) ? IronSourceConstants.SUPERSONIC_CONFIG_NAME : this.f11270d.optString("adapterName");
    }
}
