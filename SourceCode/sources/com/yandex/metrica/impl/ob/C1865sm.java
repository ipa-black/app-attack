package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.yandex.metrica.impl.ob.sm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1865sm {

    /* renamed from: a  reason: collision with root package name */
    private final ReentrantLock f15733a;

    /* renamed from: b  reason: collision with root package name */
    private final C1889tm f15734b;

    public C1865sm(Context context, String str) {
        this(new ReentrantLock(), new C1889tm(context, str));
    }

    public void a() throws Throwable {
        this.f15733a.lock();
        this.f15734b.a();
    }

    public void b() {
        this.f15734b.b();
        this.f15733a.unlock();
    }

    public void c() {
        this.f15734b.c();
        this.f15733a.unlock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1865sm(ReentrantLock reentrantLock, C1889tm c1889tm) {
        this.f15733a = reentrantLock;
        this.f15734b = c1889tm;
    }
}
