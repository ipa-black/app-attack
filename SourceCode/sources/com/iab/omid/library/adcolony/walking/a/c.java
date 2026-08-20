package com.iab.omid.library.adcolony.walking.a;

import com.iab.omid.library.adcolony.walking.a.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f9911a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f9912b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f9913c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f9914d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f9911a = linkedBlockingQueue;
        this.f9912b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f9913c.poll();
        this.f9914d = poll;
        if (poll != null) {
            poll.a(this.f9912b);
        }
    }

    @Override // com.iab.omid.library.adcolony.walking.a.b.a
    public void a(b bVar) {
        this.f9914d = null;
        a();
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f9913c.add(bVar);
        if (this.f9914d == null) {
            a();
        }
    }
}
