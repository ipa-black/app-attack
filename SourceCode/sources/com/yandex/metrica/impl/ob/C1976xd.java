package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.xd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1976xd implements InterfaceC1952wd {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f16038a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1976xd(boolean z) {
        this.f16038a = z;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1952wd
    public boolean a(String str) {
        if ("android.permission.ACCESS_FINE_LOCATION".equals(str) || "android.permission.ACCESS_COARSE_LOCATION".equals(str)) {
            return this.f16038a;
        }
        return true;
    }

    public String toString() {
        return "LocationFlagStrategy{mEnabled=" + this.f16038a + '}';
    }
}
