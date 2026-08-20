package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
/* loaded from: classes5.dex */
public class G4 extends K4<M4> {

    /* renamed from: a  reason: collision with root package name */
    private final C1896u5 f12970a;

    public G4(F3 f3) {
        this.f12970a = new C1896u5(f3);
    }

    @Override // com.yandex.metrica.impl.ob.K4
    public H4<M4> a(int i) {
        ArrayList arrayList = new ArrayList();
        int ordinal = EnumC1399a1.a(i).ordinal();
        if (ordinal == 16) {
            arrayList.add(this.f12970a.a());
        } else if (ordinal == 24) {
            arrayList.add(this.f12970a.b());
        } else if (ordinal == 47) {
            arrayList.add(this.f12970a.c());
        }
        return new H4<>(arrayList);
    }
}
