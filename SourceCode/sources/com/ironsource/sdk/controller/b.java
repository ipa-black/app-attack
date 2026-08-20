package com.ironsource.sdk.controller;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private int f11613a = a.f11616a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList f11614b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private String f11615c;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes3.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f11616a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f11617b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ int[] f11618c = {1, 2};
    }

    public b(String str) {
        this.f11615c = str;
    }

    public final synchronized void a() {
        this.f11613a = a.f11617b;
    }

    public final synchronized void a(Runnable runnable) {
        if (this.f11613a != a.f11617b) {
            this.f11614b.add(runnable);
        } else {
            runnable.run();
        }
    }

    public final synchronized void b() {
        Object[] array = this.f11614b.toArray();
        for (int i = 0; i < array.length; i++) {
            ((Runnable) array[i]).run();
            array[i] = null;
        }
        this.f11614b.clear();
    }
}
