package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.concurrent.Semaphore;
/* loaded from: classes5.dex */
public final class Rm {

    /* renamed from: g  reason: collision with root package name */
    private static final HashMap<String, Rm> f13835g = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private final String f13836a;

    /* renamed from: b  reason: collision with root package name */
    private FileLock f13837b;

    /* renamed from: c  reason: collision with root package name */
    private FileChannel f13838c;

    /* renamed from: d  reason: collision with root package name */
    private final File f13839d;

    /* renamed from: e  reason: collision with root package name */
    private RandomAccessFile f13840e;

    /* renamed from: f  reason: collision with root package name */
    private Semaphore f13841f = new Semaphore(1, true);

    private Rm(Context context, String str) {
        String str2 = str + ".lock";
        this.f13836a = str2;
        File cacheDir = context.getCacheDir();
        File file = cacheDir == null ? null : new File(cacheDir, "appmetrica_locks");
        if (file != null) {
            file.mkdirs();
        }
        this.f13839d = file != null ? new File(file, str2) : null;
    }

    public static synchronized Rm a(Context context, String str) {
        Rm rm;
        synchronized (Rm.class) {
            HashMap<String, Rm> hashMap = f13835g;
            rm = hashMap.get(str);
            if (rm == null) {
                rm = new Rm(context, str);
                hashMap.put(str, rm);
            }
        }
        return rm;
    }

    public synchronized void b() {
        this.f13841f.release();
        if (this.f13841f.availablePermits() > 0) {
            L0.a(this.f13837b);
            A2.a((Closeable) this.f13838c);
            A2.a((Closeable) this.f13840e);
            this.f13838c = null;
            this.f13840e = null;
        }
    }

    public synchronized void a() throws Throwable {
        this.f13841f.acquire();
        if (this.f13839d != null) {
            if (this.f13838c == null) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f13839d, "rw");
                this.f13840e = randomAccessFile;
                this.f13838c = randomAccessFile.getChannel();
            }
            this.f13837b = this.f13838c.lock();
        } else {
            throw new IllegalStateException("Lock file is null");
        }
    }
}
