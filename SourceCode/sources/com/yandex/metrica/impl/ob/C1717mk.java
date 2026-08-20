package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.mk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1717mk implements InterfaceC1984xl {

    /* renamed from: a  reason: collision with root package name */
    private final M0 f15226a;

    /* renamed from: b  reason: collision with root package name */
    private final TimeProvider f15227b;

    /* renamed from: c  reason: collision with root package name */
    private Map<Long, Long> f15228c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1717mk() {
        this(C1764oh.a(), new SystemTimeProvider());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1984xl
    public synchronized void a(Activity activity, long j) {
        this.f15228c.put(Long.valueOf(j), Long.valueOf(this.f15227b.currentTimeMillis()));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1984xl
    public void a(Activity activity, boolean z) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public void a(Throwable th, C1960wl c1960wl) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public boolean a(C1544fl c1544fl) {
        return false;
    }

    C1717mk(M0 m0, TimeProvider timeProvider) {
        this.f15228c = new HashMap();
        this.f15226a = m0;
        this.f15227b = timeProvider;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1936vl
    public synchronized void a(long j, Activity activity, C1494dl c1494dl, List<C1840rl> list, C1544fl c1544fl, Bk bk) {
        this.f15227b.currentTimeMillis();
        if (this.f15228c.get(Long.valueOf(j)) != null) {
            this.f15228c.remove(Long.valueOf(j));
        } else {
            this.f15226a.reportError("ui_parsing_diagnostics", new IllegalStateException("Unexpected situation: no start time"));
        }
    }
}
