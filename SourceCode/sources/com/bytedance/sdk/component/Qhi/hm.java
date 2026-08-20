package com.bytedance.sdk.component.Qhi;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataConverterActual.java */
/* loaded from: classes2.dex */
public class hm {
    private ABk Qhi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static hm Qhi(ABk aBk) {
        return new hm(aBk);
    }

    private hm(ABk aBk) {
        this.Qhi = aBk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T Qhi(String str, Type type) throws JSONException {
        Qhi(str);
        if (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) {
            return (T) new JSONObject(str);
        }
        return (T) this.Qhi.Qhi(str, type);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> String Qhi(T t) {
        String obj;
        if (t == null) {
            return JsonUtils.EMPTY_JSON;
        }
        if ((t instanceof JSONObject) || (t instanceof JSONArray)) {
            obj = t.toString();
        } else {
            obj = this.Qhi.Qhi(t);
        }
        Qhi(obj);
        return obj;
    }

    private static void Qhi(String str) {
        if (str.startsWith("{") && str.endsWith("}")) {
            return;
        }
        WAv.Qhi(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(String.valueOf(str))));
    }
}
