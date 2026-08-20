package com.iab.omid.library.appodeal.walking.a;

import com.iab.omid.library.appodeal.walking.a.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f10239a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f10240b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f10241c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f10242d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f10239a = linkedBlockingQueue;
        this.f10240b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f10241c.poll();
        this.f10242d = poll;
        if (poll != null) {
            poll.a(this.f10240b);
        }
    }

    @Override // com.iab.omid.library.appodeal.walking.a.b.a
    public void a(b bVar) {
        this.f10242d = null;
        a();
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f10241c.add(bVar);
        if (this.f10242d == null) {
            a();
        }
    }
}
