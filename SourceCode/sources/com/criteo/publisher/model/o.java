package com.criteo.publisher.model;

import com.criteo.publisher.model.h;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* compiled from: CdbRequest.java */
/* loaded from: classes2.dex */
public abstract class o {
    @SerializedName("gdprConsent")
    public abstract com.criteo.publisher.l0.d.c a();

    public abstract String b();

    public abstract int c();

    public abstract v d();

    public abstract String e();

    public abstract List<q> f();

    public abstract z g();

    public static o a(String str, v vVar, z zVar, String str2, int i, com.criteo.publisher.l0.d.c cVar, List<q> list) {
        return new h(str, vVar, zVar, str2, i, cVar, list);
    }

    public static TypeAdapter<o> a(Gson gson) {
        return new h.a(gson);
    }
}
