package com.criteo.publisher.advancednative;

import java.lang.ref.Reference;
import java.net.URL;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImpressionTask.java */
/* loaded from: classes2.dex */
public class j implements p {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable<URL> f8664a;

    /* renamed from: b  reason: collision with root package name */
    private final Reference<CriteoNativeAdListener> f8665b;

    /* renamed from: c  reason: collision with root package name */
    private final i f8666c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f8667d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Iterable<URL> iterable, Reference<CriteoNativeAdListener> reference, i iVar) {
        this.f8664a = iterable;
        this.f8665b = reference;
        this.f8666c = iVar;
    }

    @Override // com.criteo.publisher.advancednative.p
    public void a() {
        if (this.f8667d.compareAndSet(false, true)) {
            this.f8666c.a(this.f8664a);
            CriteoNativeAdListener criteoNativeAdListener = this.f8665b.get();
            if (criteoNativeAdListener != null) {
                this.f8666c.a(criteoNativeAdListener);
            }
        }
    }
}
