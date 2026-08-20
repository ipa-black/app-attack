package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.impl.ob.C1840rl;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.vk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1935vk {

    /* renamed from: a  reason: collision with root package name */
    private final C1794pm<C1959wk, Pair<Boolean, C1840rl.b>> f15936a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15937b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1935vk(int i, int i2) {
        this.f15936a = new C1983xk(i);
        this.f15937b = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, String str, boolean z, C1840rl.b bVar) {
        if (str.length() <= this.f15937b) {
            this.f15936a.a(new C1959wk(i, str), new Pair<>(Boolean.valueOf(z), bVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pair<Boolean, C1840rl.b> a(int i, String str) {
        if (str.length() > this.f15937b) {
            return null;
        }
        return this.f15936a.a((C1794pm<C1959wk, Pair<Boolean, C1840rl.b>>) new C1959wk(i, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f15936a.a();
    }
}
