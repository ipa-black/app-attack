package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1725n3;
/* renamed from: com.yandex.metrica.impl.ob.p3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1775p3<T extends C1725n3> {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1750o3<T> f15358a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1700m3<T> f15359b;

    /* renamed from: com.yandex.metrica.impl.ob.p3$b */
    /* loaded from: classes5.dex */
    public static final class b<T extends C1725n3> {

        /* renamed from: a  reason: collision with root package name */
        final InterfaceC1750o3<T> f15360a;

        /* renamed from: b  reason: collision with root package name */
        InterfaceC1700m3<T> f15361b;

        b(InterfaceC1750o3<T> interfaceC1750o3) {
            this.f15360a = interfaceC1750o3;
        }

        public b<T> a(InterfaceC1700m3<T> interfaceC1700m3) {
            this.f15361b = interfaceC1700m3;
            return this;
        }

        public C1775p3<T> a() {
            return new C1775p3<>(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(C1725n3 c1725n3) {
        InterfaceC1700m3<T> interfaceC1700m3 = this.f15359b;
        if (interfaceC1700m3 == null) {
            return false;
        }
        return interfaceC1700m3.a(c1725n3);
    }

    public void b(C1725n3 c1725n3) {
        this.f15358a.a(c1725n3);
    }

    private C1775p3(b bVar) {
        this.f15358a = bVar.f15360a;
        this.f15359b = bVar.f15361b;
    }

    public static <T extends C1725n3> b<T> a(InterfaceC1750o3<T> interfaceC1750o3) {
        return new b<>(interfaceC1750o3);
    }
}
