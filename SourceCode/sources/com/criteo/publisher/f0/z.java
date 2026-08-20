package com.criteo.publisher.f0;

import android.content.Context;
import com.squareup.tape.FileObjectQueue;
import com.squareup.tape.InMemoryObjectQueue;
import com.squareup.tape.ObjectQueue;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
/* compiled from: ObjectQueueFactory.java */
/* loaded from: classes2.dex */
public class z<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f8836a = com.criteo.publisher.logging.h.b(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final Context f8837b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.l f8838c;

    /* renamed from: d  reason: collision with root package name */
    private final a0<T> f8839d;

    public z(Context context, com.criteo.publisher.n0.l lVar, a0<T> a0Var) {
        this.f8837b = context;
        this.f8838c = lVar;
        this.f8839d = a0Var;
    }

    public ObjectQueue<T> a() {
        return a(b());
    }

    public File b() {
        return new File(this.f8837b.getFilesDir(), this.f8839d.d());
    }

    private ObjectQueue<T> a(File file) {
        try {
            FileObjectQueue fileObjectQueue = new FileObjectQueue(file, new a(this.f8838c, this.f8839d.b()));
            fileObjectQueue.peek();
            return fileObjectQueue;
        } catch (Exception | OutOfMemoryError e2) {
            try {
                if (b(file)) {
                    return new FileObjectQueue(file, new a(this.f8838c, this.f8839d.b()));
                }
            } catch (IOException e3) {
                e2.addSuppressed(e3);
                return new InMemoryObjectQueue();
            } finally {
                this.f8836a.a(c0.a(e2));
            }
            return new InMemoryObjectQueue();
        }
    }

    private boolean b(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (!b(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObjectQueueFactory.java */
    /* loaded from: classes2.dex */
    public static class a<T> implements FileObjectQueue.Converter<T> {

        /* renamed from: a  reason: collision with root package name */
        private final com.criteo.publisher.n0.l f8840a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<T> f8841b;

        a(com.criteo.publisher.n0.l lVar, Class<T> cls) {
            this.f8840a = lVar;
            this.f8841b = cls;
        }

        @Override // com.squareup.tape.FileObjectQueue.Converter
        public T from(byte[] bArr) throws IOException {
            if (bArr == null) {
                return null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                T t = (T) this.f8840a.a(this.f8841b, byteArrayInputStream);
                byteArrayInputStream.close();
                return t;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        @Override // com.squareup.tape.FileObjectQueue.Converter
        public void toStream(T t, OutputStream outputStream) throws IOException {
            if (t == null || outputStream == null) {
                return;
            }
            this.f8840a.a(t, outputStream);
        }
    }
}
