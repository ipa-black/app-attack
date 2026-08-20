package com.yandex.metrica.impl.ob;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public class Mm implements ThreadFactory {

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f13510b = new AtomicInteger(0);

    /* renamed from: a  reason: collision with root package name */
    private final String f13511a;

    public Mm(String str) {
        this.f13511a = str;
    }

    private String a() {
        return this.f13511a + "-" + f13510b.incrementAndGet();
    }

    public static int c() {
        return f13510b.incrementAndGet();
    }

    public Km b() {
        return new Km(a());
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Lm(runnable, a());
    }

    public static Lm a(String str, Runnable runnable) {
        return new Lm(runnable, new Mm(str).a());
    }
}
