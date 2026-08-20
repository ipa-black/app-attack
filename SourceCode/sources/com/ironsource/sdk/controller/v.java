package com.ironsource.sdk.controller;

import android.content.Context;
import com.ironsource.environment.a;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    static final String f11793a = "v";

    /* renamed from: b  reason: collision with root package name */
    com.ironsource.sdk.service.d f11794b;

    /* renamed from: d  reason: collision with root package name */
    Context f11796d;

    /* renamed from: e  reason: collision with root package name */
    private final String f11797e = "oneToken";

    /* renamed from: c  reason: collision with root package name */
    com.ironsource.sdk.service.c f11795c = new com.ironsource.sdk.service.c();

    /* renamed from: f  reason: collision with root package name */
    private com.ironsource.environment.f.b f11798f = new com.ironsource.environment.f.b();

    /* loaded from: classes3.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        String f11799a;

        /* renamed from: b  reason: collision with root package name */
        JSONObject f11800b;

        /* renamed from: c  reason: collision with root package name */
        String f11801c;

        /* renamed from: d  reason: collision with root package name */
        String f11802d;

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(byte b2) {
            this();
        }
    }

    public v(Context context, com.ironsource.sdk.service.d dVar) {
        this.f11794b = dVar;
        this.f11796d = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject a() {
        JSONObject a2 = this.f11798f.a();
        Iterator<String> keys = a2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = a2.get(next);
            if (obj instanceof String) {
                a2.put(next, a.AnonymousClass1.a((String) obj));
            }
        }
        return a2;
    }
}
