package com.iab.omid.library.applovin.walking.async;

import com.iab.omid.library.applovin.walking.async.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f10132a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f10133b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f10134c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f10135d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f10132a = linkedBlockingQueue;
        this.f10133b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f10134c.poll();
        this.f10135d = poll;
        if (poll != null) {
            poll.a(this.f10133b);
        }
    }

    @Override // com.iab.omid.library.applovin.walking.async.b.a
    public void a(b bVar) {
        this.f10135d = null;
        a();
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f10134c.add(bVar);
        if (this.f10135d == null) {
            a();
        }
    }
}
