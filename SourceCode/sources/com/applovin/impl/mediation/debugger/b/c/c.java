package com.applovin.impl.mediation.debugger.b.c;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.e;
import com.applovin.impl.sdk.utils.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4983a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f4984b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4985c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4986d;

    public c(JSONObject jSONObject, n nVar) {
        this.f4983a = e.a(nVar.P()).a();
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "cleartext_traffic", (JSONObject) null);
        boolean z = false;
        if (jSONObject2 == null) {
            this.f4984b = false;
            this.f4986d = "";
            this.f4985c = i.a();
            return;
        }
        this.f4984b = true;
        this.f4986d = JsonUtils.getString(jSONObject2, "description", "");
        if (i.a()) {
            this.f4985c = true;
            return;
        }
        List list = JsonUtils.getList(jSONObject2, "domains", new ArrayList());
        if (list.size() > 0) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                } else if (!i.a((String) it.next())) {
                    break;
                }
            }
        }
        this.f4985c = z;
    }

    public boolean a() {
        return this.f4984b;
    }

    public boolean b() {
        boolean z = this.f4985c;
        return z && (this.f4983a || z);
    }

    public String c() {
        return this.f4983a ? this.f4986d : "You must include an entry in your AndroidManifest.xml to point to your network_security_config.xml.\n\nFor more information, visit: https://developer.android.com/training/articles/security-config";
    }
}
