package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
/* renamed from: com.yandex.metrica.impl.ob.tm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1889tm {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15784a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15785b;

    /* renamed from: c  reason: collision with root package name */
    private final B0 f15786c;

    /* renamed from: d  reason: collision with root package name */
    private File f15787d;

    /* renamed from: e  reason: collision with root package name */
    private FileLock f15788e;

    /* renamed from: f  reason: collision with root package name */
    private RandomAccessFile f15789f;

    /* renamed from: g  reason: collision with root package name */
    private FileChannel f15790g;

    /* renamed from: h  reason: collision with root package name */
    private int f15791h;

    public C1889tm(Context context, String str) {
        this(context, str, new B0());
    }

    public synchronized void a() throws Throwable {
        File b2 = this.f15786c.b(this.f15784a.getFilesDir(), this.f15785b);
        this.f15787d = b2;
        if (b2 != null) {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.f15787d, "rw");
            this.f15789f = randomAccessFile;
            FileChannel channel = randomAccessFile.getChannel();
            this.f15790g = channel;
            if (this.f15791h == 0) {
                this.f15788e = channel.lock();
            }
            this.f15791h++;
        } else {
            throw new IllegalStateException("Cannot create lock file");
        }
    }

    public synchronized void b() {
        File file = this.f15787d;
        if (file != null) {
            file.getAbsolutePath();
        }
        int i = this.f15791h - 1;
        this.f15791h = i;
        if (i == 0) {
            L0.a(this.f15788e);
        }
        A2.a((Closeable) this.f15789f);
        A2.a((Closeable) this.f15790g);
        this.f15789f = null;
        this.f15788e = null;
        this.f15790g = null;
    }

    public synchronized void c() {
        b();
        File file = this.f15787d;
        if (file != null) {
            file.delete();
        }
    }

    C1889tm(Context context, String str, B0 b0) {
        this.f15791h = 0;
        this.f15784a = context;
        this.f15785b = str + ".lock";
        this.f15786c = b0;
    }
}
