package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public final class Z5 {

    /* renamed from: a  reason: collision with root package name */
    private final EnumC1529f6 f14329a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f14330b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private EnumC1529f6 f14331a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f14332b;

        private b(EnumC1529f6 enumC1529f6) {
            this.f14331a = enumC1529f6;
        }

        public b a(int i) {
            this.f14332b = Integer.valueOf(i);
            return this;
        }

        public Z5 a() {
            return new Z5(this);
        }
    }

    public static final b a(EnumC1529f6 enumC1529f6) {
        return new b(enumC1529f6);
    }

    public EnumC1529f6 b() {
        return this.f14329a;
    }

    private Z5(b bVar) {
        this.f14329a = bVar.f14331a;
        this.f14330b = bVar.f14332b;
    }

    public Integer a() {
        return this.f14330b;
    }
}
