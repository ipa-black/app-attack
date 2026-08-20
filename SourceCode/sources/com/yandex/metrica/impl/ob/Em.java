package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public enum Em {
    NONE(0),
    EXTERNALLY_ENCRYPTED_EVENT_CRYPTER(1),
    AES_VALUE_ENCRYPTION(2);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f12905a;

    Em(int i) {
        this.f12905a = i;
    }

    public int a() {
        return this.f12905a;
    }

    public static Em a(Integer num) {
        if (num != null) {
            Em[] values = values();
            for (int i = 0; i < 3; i++) {
                Em em = values[i];
                if (em.f12905a == num.intValue()) {
                    return em;
                }
            }
        }
        return NONE;
    }
}
