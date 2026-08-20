package com.applovin.exoplayer2.h;

import android.os.Handler;
import com.applovin.exoplayer2.ba;
import java.io.IOException;
/* loaded from: classes.dex */
public interface p {

    /* loaded from: classes.dex */
    public static final class a extends o {
        public a(o oVar) {
            super(oVar);
        }

        public a(Object obj) {
            super(obj);
        }

        public a(Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public a(Object obj, long j, int i) {
            super(obj, j, i);
        }

        @Override // com.applovin.exoplayer2.h.o
        /* renamed from: b */
        public a a(Object obj) {
            return new a(super.a(obj));
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void onSourceInfoRefreshed(p pVar, ba baVar);
    }

    void a(Handler handler, com.applovin.exoplayer2.d.g gVar);

    void a(Handler handler, q qVar);

    void a(com.applovin.exoplayer2.d.g gVar);

    void a(n nVar);

    void a(b bVar);

    void a(b bVar, com.applovin.exoplayer2.k.aa aaVar);

    void a(q qVar);

    n b(a aVar, com.applovin.exoplayer2.k.b bVar, long j);

    void b(b bVar);

    void c(b bVar);

    void e() throws IOException;

    com.applovin.exoplayer2.ab g();

    default ba h() {
        return null;
    }

    default boolean i() {
        return true;
    }
}
