package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.u6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class RunnableC1897u6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final File f15809a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1719mm<File> f15810b;

    /* renamed from: c  reason: collision with root package name */
    private final C1913um f15811c;

    public RunnableC1897u6(Context context, File file, InterfaceC1719mm<File> interfaceC1719mm) {
        this(file, interfaceC1719mm, C1913um.a(context));
    }

    @Override // java.lang.Runnable
    public void run() {
        File[] listFiles;
        if (this.f15809a.exists() && this.f15809a.isDirectory() && (listFiles = this.f15809a.listFiles()) != null) {
            for (File file : listFiles) {
                C1865sm a2 = this.f15811c.a(file.getName());
                try {
                    a2.a();
                    this.f15810b.b(file);
                } catch (Throwable unused) {
                }
                a2.c();
            }
        }
    }

    RunnableC1897u6(File file, InterfaceC1719mm<File> interfaceC1719mm, C1913um c1913um) {
        this.f15809a = file;
        this.f15810b = interfaceC1719mm;
        this.f15811c = c1913um;
    }
}
