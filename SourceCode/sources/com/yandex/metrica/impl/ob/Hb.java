package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Hb implements Gb {

    /* renamed from: a  reason: collision with root package name */
    private final int f13036a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13037b;

    /* renamed from: c  reason: collision with root package name */
    private int f13038c = 0;

    public Hb(int i, int i2) {
        this.f13036a = i;
        this.f13037b = i2;
    }

    @Override // com.yandex.metrica.impl.ob.Gb
    public int a() {
        return this.f13037b;
    }

    @Override // com.yandex.metrica.impl.ob.Gb
    public boolean b() {
        int i = this.f13038c;
        this.f13038c = i + 1;
        return i < this.f13036a;
    }

    @Override // com.yandex.metrica.impl.ob.Gb
    public void c() {
        this.f13038c = 0;
    }
}
