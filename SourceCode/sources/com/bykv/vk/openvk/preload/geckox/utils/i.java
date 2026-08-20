package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;
/* compiled from: PiecemealSerialExecutor.java */
/* loaded from: classes2.dex */
public class i implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private static volatile i f8599a;

    public static i a() {
        if (f8599a == null) {
            synchronized (i.class) {
                if (f8599a == null) {
                    f8599a = new i();
                }
            }
        }
        return f8599a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.b.c().execute(runnable);
    }
}
