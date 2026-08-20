package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import com.appodeal.ads.networking.binders.b;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class f4 {
    public static final void a(JSONObject jSONObject, com.appodeal.ads.networking.binders.b data) {
        Function1 j3Var;
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Intrinsics.checkNotNullParameter(data, "data");
        if (data instanceof b.a) {
            j3Var = new k3(data);
        } else if (data instanceof b.j) {
            j3Var = new n3(data);
        } else if (data instanceof b.c) {
            j3Var = new r3(data);
        } else if (data instanceof b.d) {
            j3Var = new s3(data);
        } else if (data instanceof b.f) {
            j3Var = new t3(data);
        } else if (data instanceof b.h) {
            j3Var = new u3(data);
        } else if (data instanceof b.n) {
            j3Var = new v3(data);
        } else if (data instanceof b.i) {
            j3Var = new w3(data);
        } else if (data instanceof b.k) {
            j3Var = new e4(data);
        } else if (data instanceof b.l) {
            j3Var = new e3(data);
        } else if (data instanceof b.m) {
            j3Var = new f3(data);
        } else if (data instanceof b.C0134b) {
            j3Var = new h3(data);
        } else if (data instanceof b.g) {
            j3Var = new i3(data);
        } else if (!(data instanceof b.e)) {
            throw new NoWhenBranchMatchedException();
        } else {
            j3Var = new j3(data);
        }
        JsonObjectBuilderKt.jsonObject(jSONObject, j3Var);
    }
}
