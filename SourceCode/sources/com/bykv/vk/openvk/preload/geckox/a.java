package com.bykv.vk.openvk.preload.geckox;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.d.b.b.f;
import com.bykv.vk.openvk.preload.geckox.d.d;
import com.bykv.vk.openvk.preload.geckox.d.e;
import com.bykv.vk.openvk.preload.geckox.d.g;
import com.bykv.vk.openvk.preload.geckox.d.h;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: GeckoClient.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    b f8437c;

    /* renamed from: d  reason: collision with root package name */
    File f8438d;

    /* renamed from: e  reason: collision with root package name */
    private final List<String> f8439e = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    com.bykv.vk.openvk.preload.geckox.e.b f8435a = new com.bykv.vk.openvk.preload.geckox.e.b();

    /* renamed from: b  reason: collision with root package name */
    Queue<String> f8436b = new LinkedBlockingQueue();

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        this.f8437c = bVar;
        File file = bVar.n;
        this.f8438d = file;
        file.mkdirs();
        b bVar2 = this.f8437c;
        a(e.class, com.bykv.vk.openvk.preload.geckox.statistic.b.a(bVar2));
        a(d.class, com.bykv.vk.openvk.preload.geckox.statistic.b.a(bVar2));
        a(com.bykv.vk.openvk.preload.geckox.d.a.b.c.class, com.bykv.vk.openvk.preload.geckox.statistic.b.b(bVar2.f8468a));
        a(com.bykv.vk.openvk.preload.geckox.d.a.b.b.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.6
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel()).i = true;
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.i = false;
                a2.l = SystemClock.uptimeMillis();
                a2.s = th.getMessage();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.a.b.d.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.7
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.j = true;
                a2.m = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.j = false;
                a2.m = SystemClock.uptimeMillis();
                a2.t = th.getMessage();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.a.b.a.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.8
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.j = true;
                a2.n = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.j = false;
                a2.n = SystemClock.uptimeMillis();
                a2.t = th.getMessage();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.a.b.e.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.11
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.k = true;
                a2.o = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.k = false;
                a2.u = th.getMessage();
                a2.o = SystemClock.uptimeMillis();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.a.a.b.class, com.bykv.vk.openvk.preload.geckox.statistic.b.a(bVar2.f8468a));
        a(com.bykv.vk.openvk.preload.geckox.d.a.a.a.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.9
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.C = true;
                a2.z = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.C = false;
                a2.z = SystemClock.uptimeMillis();
                a2.E = th.getMessage();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.a.a.c.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.10
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.D = true;
                a2.A = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.D = false;
                a2.A = SystemClock.uptimeMillis();
                a2.F = th.getMessage();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.b.b.c.class, com.bykv.vk.openvk.preload.geckox.statistic.b.b(bVar2.f8468a));
        a(com.bykv.vk.openvk.preload.geckox.d.b.b.b.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.6
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel()).i = true;
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.i = false;
                a2.l = SystemClock.uptimeMillis();
                a2.s = th.getMessage();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.b.b.d.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.7
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.j = true;
                a2.m = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.j = false;
                a2.m = SystemClock.uptimeMillis();
                a2.t = th.getMessage();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.b.b.a.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.8
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.j = true;
                a2.n = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.j = false;
                a2.n = SystemClock.uptimeMillis();
                a2.t = th.getMessage();
            }
        });
        a(f.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.3
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.k = false;
                a2.o = SystemClock.uptimeMillis();
                a2.u = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.b(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.k = false;
                a2.o = SystemClock.uptimeMillis();
                a2.F = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.c(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(h.class)).second).getChannel());
                a2.k = true;
                a2.o = SystemClock.uptimeMillis();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.b.a.b.class, com.bykv.vk.openvk.preload.geckox.statistic.b.a(bVar2.f8468a));
        a(com.bykv.vk.openvk.preload.geckox.d.b.a.a.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.9
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.b(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.C = true;
                a2.z = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.C = false;
                a2.z = SystemClock.uptimeMillis();
                a2.E = th.getMessage();
            }
        });
        a(com.bykv.vk.openvk.preload.geckox.d.b.a.d.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.2
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.a(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.D = false;
                a2.A = SystemClock.uptimeMillis();
                a2.F = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar, Throwable th) {
                super.b(bVar3, dVar, th);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.D = false;
                a2.A = SystemClock.uptimeMillis();
                a2.F = th.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar3, com.bykv.vk.openvk.preload.b.d dVar) {
                super.c(bVar3, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a2 = a.a(dVar.f8408f).a(((UpdatePackage) ((Pair) bVar3.b(g.class)).second).getChannel());
                a2.D = true;
                a2.A = SystemClock.uptimeMillis();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Map<String, List<CheckRequestBodyModel.TargetChannel>> map) {
        if (map.isEmpty()) {
            return true;
        }
        List<String> list = this.f8437c.f8472e;
        for (Map.Entry<String, List<CheckRequestBodyModel.TargetChannel>> entry : map.entrySet()) {
            boolean z = false;
            for (String str : list) {
                if (TextUtils.equals(str, entry.getKey())) {
                    z = true;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        List<String> list = this.f8437c.f8473f;
        List<String> list2 = this.f8437c.f8472e;
        if (list == null || list.isEmpty() || list2 == null || list2.isEmpty()) {
            return false;
        }
        for (String str : list2) {
            boolean z = false;
            for (String str2 : list) {
                if (TextUtils.equals(str, str2)) {
                    z = true;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    private void a(Class<? extends com.bykv.vk.openvk.preload.b.d<?, ?>> cls, com.bykv.vk.openvk.preload.b.b.a aVar) {
        this.f8435a.a(cls, aVar);
    }
}
