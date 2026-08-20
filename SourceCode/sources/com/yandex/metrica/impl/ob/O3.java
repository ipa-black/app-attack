package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class O3 {

    /* renamed from: a  reason: collision with root package name */
    private final Y8 f13570a;

    /* renamed from: b  reason: collision with root package name */
    private final C1431b8 f13571b;

    public O3(C1431b8 c1431b8) {
        this(c1431b8, new Y8(c1431b8));
    }

    public int a() {
        int b2 = this.f13571b.b();
        this.f13571b.a(b2 + 1);
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public O3(C1431b8 c1431b8, Y8 y8) {
        this.f13571b = c1431b8;
        this.f13570a = y8;
    }

    public int a(int i) {
        int a2 = this.f13570a.a(i);
        this.f13570a.a(i, a2 + 1);
        return a2;
    }
}
