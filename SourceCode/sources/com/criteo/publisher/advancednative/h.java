package com.criteo.publisher.advancednative;

import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ImageLoaderHolder.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<ImageLoader> f8657a;

    public h(ImageLoader imageLoader) {
        this.f8657a = new AtomicReference<>(imageLoader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageLoader a() {
        return this.f8657a.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ImageLoader imageLoader) {
        this.f8657a.set(imageLoader);
    }
}
