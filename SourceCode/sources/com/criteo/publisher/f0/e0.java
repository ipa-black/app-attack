package com.criteo.publisher.f0;

import com.squareup.tape.FileException;
import com.squareup.tape.FileObjectQueue;
import com.squareup.tape.ObjectQueue;
import com.squareup.tape.QueueFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapeSendingQueue.java */
/* loaded from: classes2.dex */
public class e0<T> implements k<T> {

    /* renamed from: c  reason: collision with root package name */
    private ObjectQueue<T> f8768c;

    /* renamed from: f  reason: collision with root package name */
    private final z<T> f8771f;

    /* renamed from: g  reason: collision with root package name */
    private final a0<T> f8772g;

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f8766a = com.criteo.publisher.logging.h.b(e0.class);

    /* renamed from: b  reason: collision with root package name */
    private final Object f8767b = new Object();

    /* renamed from: d  reason: collision with root package name */
    private Method f8769d = null;

    /* renamed from: e  reason: collision with root package name */
    private QueueFile f8770e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(z<T> zVar, a0<T> a0Var) {
        this.f8771f = zVar;
        this.f8772g = a0Var;
    }

    @Override // com.criteo.publisher.f0.k
    public boolean a(T t) {
        synchronized (this.f8767b) {
            try {
                b().add(t);
            } catch (FileException e2) {
                com.criteo.publisher.n0.o.a((Throwable) e2);
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
        if (r1.size() <= 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
        r1.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0037, code lost:
        if (r3 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
        r3.addSuppressed(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0053, code lost:
        if (r3 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0055, code lost:
        r3 = r5;
     */
    @Override // com.criteo.publisher.f0.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<T> a(int r7) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.f8767b
            monitor-enter(r0)
            com.squareup.tape.ObjectQueue r1 = r6.b()     // Catch: java.lang.Throwable -> L78
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L78
            r2.<init>()     // Catch: java.lang.Throwable -> L78
            r3 = 0
            r4 = 0
        Le:
            if (r4 >= r7) goto L6b
            java.lang.Object r5 = r1.peek()     // Catch: java.lang.Throwable -> L3e com.squareup.tape.FileException -> L40
            if (r5 != 0) goto L29
            int r7 = r1.size()     // Catch: com.squareup.tape.FileException -> L20 java.lang.Throwable -> L78
            if (r7 <= 0) goto L6b
            r1.remove()     // Catch: com.squareup.tape.FileException -> L20 java.lang.Throwable -> L78
            goto L6b
        L20:
            r7 = move-exception
            if (r3 != 0) goto L25
            r3 = r7
            goto L6b
        L25:
            r3.addSuppressed(r7)     // Catch: java.lang.Throwable -> L78
            goto L6b
        L29:
            r2.add(r5)     // Catch: java.lang.Throwable -> L3e com.squareup.tape.FileException -> L40
            int r5 = r1.size()     // Catch: com.squareup.tape.FileException -> L36 java.lang.Throwable -> L78
            if (r5 <= 0) goto L56
            r1.remove()     // Catch: com.squareup.tape.FileException -> L36 java.lang.Throwable -> L78
            goto L56
        L36:
            r5 = move-exception
            if (r3 != 0) goto L3a
            goto L55
        L3a:
            r3.addSuppressed(r5)     // Catch: java.lang.Throwable -> L78
            goto L56
        L3e:
            r7 = move-exception
            goto L59
        L40:
            r5 = move-exception
            if (r3 != 0) goto L45
            r3 = r5
            goto L48
        L45:
            r3.addSuppressed(r5)     // Catch: java.lang.Throwable -> L3e
        L48:
            int r5 = r1.size()     // Catch: com.squareup.tape.FileException -> L52 java.lang.Throwable -> L78
            if (r5 <= 0) goto L56
            r1.remove()     // Catch: com.squareup.tape.FileException -> L52 java.lang.Throwable -> L78
            goto L56
        L52:
            r5 = move-exception
            if (r3 != 0) goto L3a
        L55:
            r3 = r5
        L56:
            int r4 = r4 + 1
            goto Le
        L59:
            int r2 = r1.size()     // Catch: com.squareup.tape.FileException -> L63 java.lang.Throwable -> L78
            if (r2 <= 0) goto L6a
            r1.remove()     // Catch: com.squareup.tape.FileException -> L63 java.lang.Throwable -> L78
            goto L6a
        L63:
            r1 = move-exception
            if (r3 != 0) goto L67
            goto L6a
        L67:
            r3.addSuppressed(r1)     // Catch: java.lang.Throwable -> L78
        L6a:
            throw r7     // Catch: java.lang.Throwable -> L78
        L6b:
            if (r3 == 0) goto L76
            com.criteo.publisher.logging.g r7 = r6.f8766a     // Catch: java.lang.Throwable -> L78
            com.criteo.publisher.logging.e r1 = com.criteo.publisher.f0.c0.a(r3)     // Catch: java.lang.Throwable -> L78
            r7.a(r1)     // Catch: java.lang.Throwable -> L78
        L76:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L78
            return r2
        L78:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L78
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.f0.e0.a(int):java.util.List");
    }

    @Override // com.criteo.publisher.f0.k
    public int a() {
        synchronized (this.f8767b) {
            ObjectQueue<T> b2 = b();
            if (b2 instanceof FileObjectQueue) {
                try {
                    return ((Integer) c().invoke(a((FileObjectQueue) b2), new Object[0])).intValue();
                } catch (Exception e2) {
                    com.criteo.publisher.n0.o.a((Throwable) e2);
                }
            }
            return b2.size() * this.f8772g.a();
        }
    }

    private Method c() throws ReflectiveOperationException {
        if (this.f8769d == null) {
            Method declaredMethod = QueueFile.class.getDeclaredMethod("usedBytes", new Class[0]);
            this.f8769d = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return this.f8769d;
    }

    QueueFile a(FileObjectQueue<?> fileObjectQueue) throws ReflectiveOperationException, ClassCastException {
        if (this.f8770e == null) {
            Field declaredField = FileObjectQueue.class.getDeclaredField("queueFile");
            declaredField.setAccessible(true);
            this.f8770e = (QueueFile) declaredField.get(fileObjectQueue);
        }
        return this.f8770e;
    }

    private ObjectQueue<T> b() {
        if (this.f8768c == null) {
            this.f8768c = this.f8771f.a();
        }
        return this.f8768c;
    }
}
