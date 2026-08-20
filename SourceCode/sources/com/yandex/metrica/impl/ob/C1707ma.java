package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.ma  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1707ma implements S7 {

    /* renamed from: a  reason: collision with root package name */
    private final S7 f15142a;

    public C1707ma(Context context, W7 w7, S7 s7) {
        this.f15142a = s7;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public int a(String str, int i) {
        return this.f15142a.a(str, i);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public void b() {
        this.f15142a.b();
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public long a(String str, long j) {
        return this.f15142a.a(str, j);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public String b(String str, String str2) {
        return this.f15142a.b(str, str2);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 a(String str, String str2) {
        this.f15142a.a(str, str2);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public boolean b(String str, boolean z) {
        return this.f15142a.b(str, z);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 a(String str, boolean z) {
        this.f15142a.a(str, z);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str) {
        this.f15142a.b(str);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public boolean a(String str) {
        return this.f15142a.a(str);
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str, long j) {
        this.f15142a.b(str, j);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public Set<String> a() {
        return this.f15142a.a();
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str, int i) {
        this.f15142a.b(str, i);
        return this;
    }
}
