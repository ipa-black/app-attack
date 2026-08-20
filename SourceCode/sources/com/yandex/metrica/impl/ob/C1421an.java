package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.an  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1421an {

    /* renamed from: a  reason: collision with root package name */
    private final C1496dn f14424a;

    /* renamed from: b  reason: collision with root package name */
    private final C1496dn f14425b;

    /* renamed from: c  reason: collision with root package name */
    private final Wm f14426c;

    /* renamed from: d  reason: collision with root package name */
    private final C1470cm f14427d;

    /* renamed from: e  reason: collision with root package name */
    private final String f14428e;

    public C1421an(int i, int i2, int i3, String str, C1470cm c1470cm) {
        this(new Wm(i), new C1496dn(i2, str + "map key", c1470cm), new C1496dn(i3, str + "map value", c1470cm), str, c1470cm);
    }

    public Wm a() {
        return this.f14426c;
    }

    public C1496dn b() {
        return this.f14424a;
    }

    public C1496dn c() {
        return this.f14425b;
    }

    C1421an(Wm wm, C1496dn c1496dn, C1496dn c1496dn2, String str, C1470cm c1470cm) {
        this.f14426c = wm;
        this.f14424a = c1496dn;
        this.f14425b = c1496dn2;
        this.f14428e = str;
        this.f14427d = c1470cm;
    }

    public void a(String str) {
        if (this.f14427d.isEnabled()) {
            this.f14427d.fw("The %s has reached the limit of %d items. Item with key %s will be ignored", this.f14428e, Integer.valueOf(this.f14426c.a()), str);
        }
    }
}
