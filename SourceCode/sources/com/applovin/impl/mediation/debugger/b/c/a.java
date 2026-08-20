package com.applovin.impl.mediation.debugger.b.c;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f4958a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4959b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4960c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(JSONObject jSONObject, n nVar) {
        this.f4958a = JsonUtils.getString(jSONObject, "name", "");
        this.f4959b = JsonUtils.getString(jSONObject, "description", "");
        List list = JsonUtils.getList(jSONObject, "existence_classes", null);
        this.f4960c = list != null ? Utils.checkClassesExistence(list) : Utils.checkClassExistence(JsonUtils.getString(jSONObject, "existence_class", ""));
    }

    public static boolean a(String str, String str2, String str3) {
        if (str == null) {
            return true;
        }
        if (str2 == null || Utils.compare(str2, str) != 1) {
            return str3 == null || Utils.compare(str3, str) != -1;
        }
        return false;
    }

    public String a() {
        return this.f4958a;
    }

    public String b() {
        return this.f4959b;
    }

    public boolean c() {
        return this.f4960c;
    }
}
