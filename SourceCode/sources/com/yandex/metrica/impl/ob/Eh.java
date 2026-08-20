package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
/* loaded from: classes5.dex */
public class Eh {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12892a;

    /* renamed from: b  reason: collision with root package name */
    private final Mh f12893b;

    /* renamed from: c  reason: collision with root package name */
    private final C1908uh f12894c;

    /* renamed from: d  reason: collision with root package name */
    private Jh f12895d;

    /* renamed from: e  reason: collision with root package name */
    private Jh f12896e;

    /* renamed from: f  reason: collision with root package name */
    private C1790pi f12897f;

    public Eh(Context context) {
        this(context, new Mh(), new C1908uh(context));
    }

    public synchronized void a(C1790pi c1790pi) {
        this.f12897f = c1790pi;
        Jh jh = this.f12895d;
        if (jh == null) {
            Mh mh = this.f12893b;
            Context context = this.f12892a;
            mh.getClass();
            this.f12895d = new Jh(context, c1790pi, new C1836rh(), new Kh(mh), new C1956wh(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "http"), new C1956wh("port_already_in_use", "http"), "Http");
        } else {
            jh.a(c1790pi);
        }
        this.f12894c.a(c1790pi, this);
    }

    public synchronized void b() {
        Jh jh = this.f12895d;
        if (jh != null) {
            jh.b();
        }
        Jh jh2 = this.f12896e;
        if (jh2 != null) {
            jh2.b();
        }
    }

    Eh(Context context, Mh mh, C1908uh c1908uh) {
        this.f12892a = context;
        this.f12893b = mh;
        this.f12894c = c1908uh;
    }

    public synchronized void b(C1790pi c1790pi) {
        this.f12897f = c1790pi;
        this.f12894c.a(c1790pi, this);
        Jh jh = this.f12895d;
        if (jh != null) {
            jh.b(c1790pi);
        }
        Jh jh2 = this.f12896e;
        if (jh2 != null) {
            jh2.b(c1790pi);
        }
    }

    public synchronized void a() {
        Jh jh = this.f12895d;
        if (jh != null) {
            jh.a();
        }
        Jh jh2 = this.f12896e;
        if (jh2 != null) {
            jh2.a();
        }
    }

    public synchronized void a(File file) {
        Jh jh = this.f12896e;
        if (jh == null) {
            Mh mh = this.f12893b;
            Context context = this.f12892a;
            C1790pi c1790pi = this.f12897f;
            mh.getClass();
            this.f12896e = new Jh(context, c1790pi, new C1932vh(file), new Lh(mh), new C1956wh(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "https"), new C1956wh("port_already_in_use", "https"), "Https");
        } else {
            jh.a(this.f12897f);
        }
    }
}
