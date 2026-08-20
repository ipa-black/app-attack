package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes5.dex */
public class G1 {

    /* loaded from: classes5.dex */
    class a implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12958a;

        a(G1 g1, C2000yd c2000yd) {
            this.f12958a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            this.f12958a.getClass();
            return false;
        }
    }

    /* loaded from: classes5.dex */
    class b implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12959a;

        b(G1 g1, C2000yd c2000yd) {
            this.f12959a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            return this.f12959a.a(context) && this.f12959a.c(context);
        }
    }

    /* loaded from: classes5.dex */
    class c implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12960a;

        c(G1 g1, C2000yd c2000yd) {
            this.f12960a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            return this.f12960a.c(context);
        }
    }

    /* loaded from: classes5.dex */
    class d implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12961a;

        d(G1 g1, C2000yd c2000yd) {
            this.f12961a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            this.f12961a.getClass();
            return false;
        }
    }

    /* loaded from: classes5.dex */
    class e implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12962a;

        e(G1 g1, C2000yd c2000yd) {
            this.f12962a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            if (this.f12962a.a(context)) {
                this.f12962a.getClass();
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes5.dex */
    class f implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12963a;

        f(G1 g1, C2000yd c2000yd) {
            this.f12963a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            this.f12963a.getClass();
            return false;
        }
    }

    /* loaded from: classes5.dex */
    class g implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12964a;

        g(G1 g1, C2000yd c2000yd) {
            this.f12964a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            this.f12964a.getClass();
            return false;
        }
    }

    /* loaded from: classes5.dex */
    class h implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12965a;

        h(G1 g1, C2000yd c2000yd) {
            this.f12965a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            return this.f12965a.a(context);
        }
    }

    /* loaded from: classes5.dex */
    class i implements InterfaceC2024zd {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C2000yd f12966a;

        i(G1 g1, C2000yd c2000yd) {
            this.f12966a = c2000yd;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC2024zd
        public boolean a(Context context) {
            return this.f12966a.a(context);
        }
    }

    public InterfaceC2024zd a(C2000yd c2000yd) {
        return new i(this, c2000yd);
    }

    public InterfaceC2024zd b(C2000yd c2000yd) {
        return new h(this, c2000yd);
    }

    public InterfaceC2024zd c(C2000yd c2000yd) {
        return new g(this, c2000yd);
    }

    public InterfaceC2024zd d(C2000yd c2000yd) {
        if (A2.a(29)) {
            return new a(this, c2000yd);
        }
        if (A2.a(23)) {
            return new b(this, c2000yd);
        }
        return new c(this, c2000yd);
    }

    public InterfaceC2024zd e(C2000yd c2000yd) {
        if (A2.a(29)) {
            return new d(this, c2000yd);
        }
        if (A2.a(23)) {
            return new e(this, c2000yd);
        }
        return new f(this, c2000yd);
    }
}
