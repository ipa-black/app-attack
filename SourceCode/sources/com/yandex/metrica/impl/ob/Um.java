package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Um implements Vm {

    /* renamed from: a  reason: collision with root package name */
    public final int f14130a;

    public Um(int i) {
        this.f14130a = i;
    }

    @Override // com.yandex.metrica.impl.ob.Vm
    public int a() {
        return this.f14130a;
    }

    public String toString() {
        return "BytesTruncatedInfo{bytesTruncated=" + this.f14130a + '}';
    }

    public static Vm a(Vm... vmArr) {
        int i = 0;
        for (Vm vm : vmArr) {
            if (vm != null) {
                i += vm.a();
            }
        }
        return new Um(i);
    }
}
