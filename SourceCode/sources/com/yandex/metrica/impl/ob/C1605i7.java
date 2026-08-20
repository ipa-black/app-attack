package com.yandex.metrica.impl.ob;

import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.i7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1605i7 implements InterfaceC1744nm<File, String> {

    /* renamed from: a  reason: collision with root package name */
    private final C1455c7 f14905a;

    /* renamed from: b  reason: collision with root package name */
    private final C1580h7 f14906b;

    public C1605i7(C1455c7 c1455c7, C1580h7 c1580h7) {
        this.f14905a = c1455c7;
        this.f14906b = c1580h7;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
    public String a(File file) {
        return this.f14906b.a(file, this.f14905a);
    }
}
