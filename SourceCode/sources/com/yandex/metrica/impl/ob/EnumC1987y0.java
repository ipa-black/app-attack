package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.y0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public enum EnumC1987y0 {
    NATIVE(0),
    JS(1);
    

    /* renamed from: a  reason: collision with root package name */
    public final int f16067a;

    EnumC1987y0(int i) {
        this.f16067a = i;
    }

    public static EnumC1987y0 a(int i) {
        EnumC1987y0[] values = values();
        for (int i2 = 0; i2 < 2; i2++) {
            EnumC1987y0 enumC1987y0 = values[i2];
            if (enumC1987y0.f16067a == i) {
                return enumC1987y0;
            }
        }
        return NATIVE;
    }
}
