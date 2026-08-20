package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;
/* compiled from: IOSerialExecutor.java */
/* loaded from: classes2.dex */
public class e implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private static volatile e f8596a;

    public static e a() {
        if (f8596a == null) {
            synchronized (e.class) {
                if (f8596a == null) {
                    f8596a = new e();
                }
            }
        }
        return f8596a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.b.c().execute(runnable);
    }
}
