package com.iab.omid.library.ironsrc.walking.a;

import com.iab.omid.library.ironsrc.walking.a.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f10462a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f10463b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f10464c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f10465d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f10462a = linkedBlockingQueue;
        this.f10463b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f10464c.poll();
        this.f10465d = poll;
        if (poll != null) {
            poll.a(this.f10463b);
        }
    }

    @Override // com.iab.omid.library.ironsrc.walking.a.b.a
    public void a(b bVar) {
        this.f10465d = null;
        a();
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f10464c.add(bVar);
        if (this.f10465d == null) {
            a();
        }
    }
}
