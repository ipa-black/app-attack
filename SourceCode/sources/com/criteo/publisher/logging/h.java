package com.criteo.publisher.logging;

import com.criteo.publisher.s;
import java.util.List;
/* compiled from: LoggerFactory.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.criteo.publisher.g0.a<d>> f8968a;

    public h(List<com.criteo.publisher.g0.a<d>> list) {
        this.f8968a = list;
    }

    public static g b(Class<?> cls) {
        return s.c().J0().a(cls);
    }

    public g a(Class<?> cls) {
        return new g(cls, this.f8968a);
    }
}
