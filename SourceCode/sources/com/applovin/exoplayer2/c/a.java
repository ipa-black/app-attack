package com.applovin.exoplayer2.c;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f1655a;

    public void a() {
        this.f1655a = 0;
    }

    public final void a_(int i) {
        this.f1655a = i;
    }

    public final void b(int i) {
        this.f1655a = i | this.f1655a;
    }

    public final boolean b() {
        return d(Integer.MIN_VALUE);
    }

    public final void c(int i) {
        this.f1655a = (~i) & this.f1655a;
    }

    public final boolean c() {
        return d(4);
    }

    public final boolean d() {
        return d(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d(int i) {
        return (this.f1655a & i) == i;
    }

    public final boolean e() {
        return d(268435456);
    }
}
