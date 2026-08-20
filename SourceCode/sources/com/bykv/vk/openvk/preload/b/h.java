package com.bykv.vk.openvk.preload.b;
/* compiled from: Pipe.java */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    Class<? extends d> f8415a;

    /* renamed from: b  reason: collision with root package name */
    com.bykv.vk.openvk.preload.b.b.a f8416b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f8417c;

    /* synthetic */ h(a aVar, byte b2) {
        this(aVar);
    }

    private h(a aVar) {
        this.f8415a = aVar.f8418a;
        this.f8416b = aVar.f8419b;
        this.f8417c = aVar.f8420c;
        if (this.f8415a == null) {
            throw new IllegalArgumentException("Interceptor class == null");
        }
    }

    /* compiled from: Pipe.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        Class<? extends d> f8418a;

        /* renamed from: b  reason: collision with root package name */
        public com.bykv.vk.openvk.preload.b.b.a f8419b;

        /* renamed from: c  reason: collision with root package name */
        public Object[] f8420c;

        public final a a(Class<? extends d> cls) {
            if (cls == null) {
                throw new IllegalArgumentException("interceptor class == null");
            }
            this.f8418a = cls;
            return this;
        }

        public final h a() {
            return new h(this, (byte) 0);
        }
    }
}
