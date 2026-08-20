package com.yandex.metrica.impl.ob;

import android.net.LocalServerSocket;
import android.net.LocalSocket;
import com.yandex.metrica.impl.ac.CrashpadServiceHelper;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.w7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1946w7 {

    /* renamed from: a  reason: collision with root package name */
    private final String f15956a;

    /* renamed from: b  reason: collision with root package name */
    private LocalServerSocket f15957b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f15958c;

    /* renamed from: d  reason: collision with root package name */
    private final B7 f15959d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1719mm<String> f15960e;

    /* renamed from: f  reason: collision with root package name */
    private final String f15961f;

    /* renamed from: g  reason: collision with root package name */
    private List<InterfaceC1719mm<String>> f15962g;

    /* renamed from: h  reason: collision with root package name */
    private final Thread f15963h;

    /* renamed from: com.yandex.metrica.impl.ob.w7$a */
    /* loaded from: classes5.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (C1946w7.this.f15958c) {
                try {
                    LocalSocket accept = C1946w7.this.f15957b.accept();
                    byte[] bArr = new byte[256];
                    int read = accept.getInputStream().read(bArr);
                    accept.close();
                    byte[] bArr2 = new byte[read];
                    System.arraycopy(bArr, 0, bArr2, 0, read);
                    C1946w7.a(C1946w7.this, new String(bArr2));
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.w7$b */
    /* loaded from: classes5.dex */
    class b implements InterfaceC1719mm<String> {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(String str) {
            CrashpadServiceHelper.setUpServiceHelper(str);
        }
    }

    public C1946w7(String str, String str2) {
        this(str, str2, B7.a(), new b());
    }

    C1946w7(String str, String str2, B7 b7, InterfaceC1719mm<String> interfaceC1719mm) {
        this.f15958c = false;
        this.f15962g = new LinkedList();
        this.f15963h = new a();
        this.f15956a = str;
        this.f15961f = str2;
        this.f15959d = b7;
        this.f15960e = interfaceC1719mm;
    }

    public void a(InterfaceC1719mm<String> interfaceC1719mm) {
        synchronized (this) {
            this.f15962g.add(interfaceC1719mm);
        }
        if (this.f15958c || this.f15961f == null) {
            return;
        }
        synchronized (this) {
            if (!this.f15958c) {
                try {
                    if (this.f15959d.b()) {
                        this.f15957b = new LocalServerSocket(this.f15956a);
                        this.f15958c = true;
                        this.f15960e.b(this.f15961f);
                        this.f15963h.start();
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public synchronized void b(InterfaceC1719mm<String> interfaceC1719mm) {
        this.f15962g.remove(interfaceC1719mm);
    }

    static void a(C1946w7 c1946w7, String str) {
        synchronized (c1946w7) {
            for (InterfaceC1719mm<String> interfaceC1719mm : c1946w7.f15962g) {
                interfaceC1719mm.b(str);
            }
        }
    }
}
