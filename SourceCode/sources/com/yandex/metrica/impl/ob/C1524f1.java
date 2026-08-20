package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.f1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1524f1 {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1753o6 f14709a;

    /* renamed from: b  reason: collision with root package name */
    private final J2 f14710b;

    /* renamed from: c  reason: collision with root package name */
    private final C f14711c;

    /* renamed from: d  reason: collision with root package name */
    private final C1938w f14712d;

    /* renamed from: e  reason: collision with root package name */
    private final List<InterfaceC1674l2> f14713e;

    public C1524f1(Context context, ICommonExecutor iCommonExecutor) {
        this(A2.a(21) ? new C1778p6(context) : new C1802q6(), new J2(context, iCommonExecutor), new C(context, iCommonExecutor), new C1938w());
    }

    public synchronized void a(InterfaceC1674l2 interfaceC1674l2) {
        this.f14713e.add(interfaceC1674l2);
    }

    public C b() {
        return this.f14711c;
    }

    public InterfaceC1753o6 c() {
        return this.f14709a;
    }

    public J2 d() {
        return this.f14710b;
    }

    public synchronized void e() {
        for (InterfaceC1674l2 interfaceC1674l2 : this.f14713e) {
            interfaceC1674l2.a();
        }
    }

    public synchronized void f() {
        for (InterfaceC1674l2 interfaceC1674l2 : this.f14713e) {
            interfaceC1674l2.b();
        }
    }

    public C1938w a() {
        return this.f14712d;
    }

    C1524f1(InterfaceC1753o6 interfaceC1753o6, J2 j2, C c2, C1938w c1938w) {
        ArrayList arrayList = new ArrayList();
        this.f14713e = arrayList;
        this.f14709a = interfaceC1753o6;
        arrayList.add(interfaceC1753o6);
        this.f14710b = j2;
        arrayList.add(j2);
        this.f14711c = c2;
        arrayList.add(c2);
        this.f14712d = c1938w;
        arrayList.add(c1938w);
    }
}
