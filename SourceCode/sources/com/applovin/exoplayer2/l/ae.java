package com.applovin.exoplayer2.l;

import android.os.Handler;
import android.os.Message;
import com.applovin.exoplayer2.l.o;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ae implements o {

    /* renamed from: a  reason: collision with root package name */
    private static final List<a> f3769a = new ArrayList(50);

    /* renamed from: b  reason: collision with root package name */
    private final Handler f3770b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements o.a {

        /* renamed from: a  reason: collision with root package name */
        private Message f3771a;

        /* renamed from: b  reason: collision with root package name */
        private ae f3772b;

        private a() {
        }

        private void b() {
            this.f3771a = null;
            this.f3772b = null;
            ae.b(this);
        }

        public a a(Message message, ae aeVar) {
            this.f3771a = message;
            this.f3772b = aeVar;
            return this;
        }

        @Override // com.applovin.exoplayer2.l.o.a
        public void a() {
            ((Message) com.applovin.exoplayer2.l.a.b(this.f3771a)).sendToTarget();
            b();
        }

        public boolean a(Handler handler) {
            boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) com.applovin.exoplayer2.l.a.b(this.f3771a));
            b();
            return sendMessageAtFrontOfQueue;
        }
    }

    public ae(Handler handler) {
        this.f3770b = handler;
    }

    private static a a() {
        a aVar;
        List<a> list = f3769a;
        synchronized (list) {
            aVar = list.isEmpty() ? new a() : list.remove(list.size() - 1);
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(a aVar) {
        List<a> list = f3769a;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(aVar);
            }
        }
    }

    @Override // com.applovin.exoplayer2.l.o
    public o.a a(int i, int i2, int i3) {
        return a().a(this.f3770b.obtainMessage(i, i2, i3), this);
    }

    @Override // com.applovin.exoplayer2.l.o
    public o.a a(int i, int i2, int i3, Object obj) {
        return a().a(this.f3770b.obtainMessage(i, i2, i3, obj), this);
    }

    @Override // com.applovin.exoplayer2.l.o
    public o.a a(int i, Object obj) {
        return a().a(this.f3770b.obtainMessage(i, obj), this);
    }

    @Override // com.applovin.exoplayer2.l.o
    public void a(Object obj) {
        this.f3770b.removeCallbacksAndMessages(obj);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean a(int i) {
        return this.f3770b.hasMessages(i);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean a(int i, long j) {
        return this.f3770b.sendEmptyMessageAtTime(i, j);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean a(o.a aVar) {
        return ((a) aVar).a(this.f3770b);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean a(Runnable runnable) {
        return this.f3770b.post(runnable);
    }

    @Override // com.applovin.exoplayer2.l.o
    public o.a b(int i) {
        return a().a(this.f3770b.obtainMessage(i), this);
    }

    @Override // com.applovin.exoplayer2.l.o
    public boolean c(int i) {
        return this.f3770b.sendEmptyMessage(i);
    }

    @Override // com.applovin.exoplayer2.l.o
    public void d(int i) {
        this.f3770b.removeMessages(i);
    }
}
