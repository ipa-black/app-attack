package com.iab.omid.library.amazon.walking.a;

import com.iab.omid.library.amazon.walking.a.b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class c implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private final BlockingQueue<Runnable> f10018a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f10019b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<b> f10020c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private b f10021d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f10018a = linkedBlockingQueue;
        this.f10019b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b poll = this.f10020c.poll();
        this.f10021d = poll;
        if (poll != null) {
            poll.a(this.f10019b);
        }
    }

    @Override // com.iab.omid.library.amazon.walking.a.b.a
    public void a(b bVar) {
        this.f10021d = null;
        a();
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f10020c.add(bVar);
        if (this.f10021d == null) {
            a();
        }
    }
}
