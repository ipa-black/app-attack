package com.criteo.publisher.n0;

import com.criteo.publisher.f0.t;
import com.criteo.publisher.model.v;
import com.criteo.publisher.model.w;
import com.criteo.publisher.model.y;
import com.criteo.publisher.model.z;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValueGson_CustomAdapterFactory.java */
/* loaded from: classes2.dex */
public final class f extends j {
    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (com.criteo.publisher.model.o.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.model.o.a(gson);
        }
        if (com.criteo.publisher.model.q.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.model.q.a(gson);
        }
        if (com.criteo.publisher.l0.d.c.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.l0.d.c.a(gson);
        }
        if (com.criteo.publisher.f0.n.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.f0.n.a(gson);
        }
        if (com.criteo.publisher.f0.t.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.f0.t.a(gson);
        }
        if (t.a.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) t.a.a(gson);
        }
        if (t.b.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) t.b.a(gson);
        }
        if (com.criteo.publisher.model.b0.m.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.model.b0.m.a(gson);
        }
        if (com.criteo.publisher.model.b0.n.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.model.b0.n.a(gson);
        }
        if (com.criteo.publisher.model.b0.o.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.model.b0.o.a(gson);
        }
        if (com.criteo.publisher.model.b0.p.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.model.b0.p.a(gson);
        }
        if (com.criteo.publisher.model.b0.q.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.model.b0.q.a(gson);
        }
        if (com.criteo.publisher.model.b0.r.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) com.criteo.publisher.model.b0.r.a(gson);
        }
        if (v.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) v.a(gson);
        }
        if (w.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) w.a(gson);
        }
        if (y.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) y.a(gson);
        }
        if (z.class.isAssignableFrom(rawType)) {
            return (TypeAdapter<T>) z.a(gson);
        }
        return null;
    }
}
