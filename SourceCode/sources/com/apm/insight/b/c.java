package com.apm.insight.b;

import android.os.SystemClock;
import com.apm.insight.runtime.p;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static long f709b;

    /* renamed from: a  reason: collision with root package name */
    private final b f710a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f711c = false;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f712d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        Runnable runnable = new Runnable() { // from class: com.apm.insight.b.c.1
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.f711c) {
                    return;
                }
                c.this.f710a.d();
                long unused = c.f709b = SystemClock.uptimeMillis();
                f.a();
                p.b().a(c.this.f712d, 500L);
                com.apm.insight.runtime.b.a(c.f709b);
            }
        };
        this.f712d = runnable;
        this.f710a = bVar;
        p.b().a(runnable, 5000L);
    }

    public static boolean c() {
        return SystemClock.uptimeMillis() - f709b <= C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
    }

    public void a() {
        if (this.f711c) {
            return;
        }
        p.b().a(this.f712d, 5000L);
    }

    public void b() {
        this.f711c = true;
    }
}
