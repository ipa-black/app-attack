package com.criteo.publisher.f0;

import android.util.AtomicFile;
import com.criteo.publisher.f0.n;
import com.criteo.publisher.f0.r;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.SoftReference;
/* compiled from: SyncMetricFile.java */
/* loaded from: classes2.dex */
class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f8756a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicFile f8757b;

    /* renamed from: d  reason: collision with root package name */
    private final q f8759d;

    /* renamed from: c  reason: collision with root package name */
    private final Object f8758c = new Object();

    /* renamed from: e  reason: collision with root package name */
    private volatile SoftReference<n> f8760e = new SoftReference<>(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(String str, AtomicFile atomicFile, q qVar) {
        this.f8756a = str;
        this.f8757b = atomicFile;
        this.f8759d = qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n b() throws IOException {
        synchronized (this.f8758c) {
            n nVar = this.f8760e.get();
            if (nVar != null) {
                return nVar;
            }
            n c2 = c();
            this.f8760e = new SoftReference<>(c2);
            return c2;
        }
    }

    void a(n nVar) throws IOException {
        synchronized (this.f8758c) {
            this.f8760e = new SoftReference<>(null);
            b(nVar);
            this.f8760e = new SoftReference<>(nVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(r.a aVar) throws IOException {
        synchronized (this.f8758c) {
            n.a l = b().l();
            aVar.a(l);
            a(l.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(p pVar) throws IOException {
        synchronized (this.f8758c) {
            n b2 = b();
            a();
            if (!pVar.a(b2)) {
                a(b2);
            }
        }
    }

    void a() {
        synchronized (this.f8758c) {
            this.f8760e = new SoftReference<>(null);
            this.f8757b.delete();
        }
    }

    private n c() throws IOException {
        if (!this.f8757b.getBaseFile().exists()) {
            return n.a(this.f8756a).a();
        }
        FileInputStream openRead = this.f8757b.openRead();
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(openRead);
            n a2 = this.f8759d.a(bufferedInputStream);
            bufferedInputStream.close();
            if (openRead != null) {
                openRead.close();
            }
            return a2;
        } catch (Throwable th) {
            if (openRead != null) {
                try {
                    openRead.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void b(n nVar) throws IOException {
        FileOutputStream startWrite = this.f8757b.startWrite();
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(startWrite);
            try {
                this.f8759d.a(nVar, bufferedOutputStream);
                this.f8757b.finishWrite(startWrite);
                bufferedOutputStream.close();
                if (startWrite != null) {
                    startWrite.close();
                }
            } catch (IOException e2) {
                this.f8757b.failWrite(startWrite);
                throw e2;
            }
        } catch (Throwable th) {
            if (startWrite != null) {
                try {
                    startWrite.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
