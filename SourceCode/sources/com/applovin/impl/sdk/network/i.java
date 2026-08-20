package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.c;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class i<T> extends c {

    /* renamed from: a  reason: collision with root package name */
    private String f5990a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5991b;

    /* loaded from: classes.dex */
    public static class a<T> extends c.a<T> {
        private String o;
        private boolean p;

        public a(n nVar) {
            super(nVar);
            this.f5923h = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cP)).intValue();
            this.i = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cO)).intValue();
            this.j = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cU)).intValue();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.impl.sdk.network.c.a
        public /* synthetic */ c.a a(Object obj) {
            return b((a<T>) obj);
        }

        public a b(T t) {
            this.f5922g = t;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: b */
        public a a(JSONObject jSONObject) {
            this.f5921f = jSONObject;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: b */
        public i<T> a() {
            return new i<>(this);
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: c */
        public a a(Map<String, String> map) {
            this.f5919d = map;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: d */
        public a a(int i) {
            this.f5923h = i;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: d */
        public a a(String str) {
            this.f5917b = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: d */
        public a b(Map<String, String> map) {
            this.f5920e = map;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: e */
        public a b(int i) {
            this.i = i;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: e */
        public a c(String str) {
            this.f5918c = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: e */
        public a c(boolean z) {
            this.m = z;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: f */
        public a c(int i) {
            this.j = i;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: f */
        public a b(String str) {
            this.f5916a = str;
            return this;
        }

        @Override // com.applovin.impl.sdk.network.c.a
        /* renamed from: f */
        public a d(boolean z) {
            this.n = z;
            return this;
        }

        public a g(String str) {
            this.o = str;
            return this;
        }

        public a g(boolean z) {
            this.p = z;
            return this;
        }
    }

    protected i(a aVar) {
        super(aVar);
        this.f5990a = aVar.o;
        this.f5991b = aVar.p;
    }

    public static a b(n nVar) {
        return new a(nVar);
    }

    public boolean p() {
        return this.f5990a != null;
    }

    public String q() {
        return this.f5990a;
    }

    public boolean r() {
        return this.f5991b;
    }
}
