package com.bykv.vk.openvk.preload.a.c;

import com.bykv.vk.openvk.preload.a.b.b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* compiled from: TypeToken.java */
/* loaded from: classes2.dex */
public class a<T> {

    /* renamed from: b  reason: collision with root package name */
    public final Class<? super T> f8337b;

    /* renamed from: c  reason: collision with root package name */
    public final Type f8338c;

    /* renamed from: d  reason: collision with root package name */
    final int f8339d;

    /* JADX INFO: Access modifiers changed from: protected */
    public a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        Type a2 = b.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.f8338c = a2;
        this.f8337b = (Class<? super T>) b.b(a2);
        this.f8339d = a2.hashCode();
    }

    private a(Type type) {
        Type a2 = b.a((Type) com.bykv.vk.openvk.preload.a.b.a.a(type));
        this.f8338c = a2;
        this.f8337b = (Class<? super T>) b.b(a2);
        this.f8339d = a2.hashCode();
    }

    public final int hashCode() {
        return this.f8339d;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && b.a(this.f8338c, ((a) obj).f8338c);
    }

    public final String toString() {
        return b.c(this.f8338c);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls);
    }
}
