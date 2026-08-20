package com.yandex.metrica.impl.ob;

import android.os.Handler;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.nj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1741nj implements S0 {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f15289a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f15290b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f15291c;

    public C1741nj(ICommonExecutor iCommonExecutor, Handler handler, ICommonExecutor iCommonExecutor2, Q q) {
        this.f15290b = iCommonExecutor;
        this.f15289a = handler;
        this.f15291c = iCommonExecutor2;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public C1890u a() {
        return new C1890u(this.f15291c);
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public void a(com.yandex.metrica.i iVar, O0 o0) {
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public void a(Map<String, Object> map) {
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public ICommonExecutor b() {
        return this.f15290b;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public Handler c() {
        return this.f15289a;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public Eb d() {
        return new C1998yb();
    }
}
