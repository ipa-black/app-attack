package com.applovin.exoplayer2.d;

import android.os.Looper;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.d.h;
import com.applovin.exoplayer2.v;
/* loaded from: classes.dex */
public interface h {

    /* renamed from: b  reason: collision with root package name */
    public static final h f2025b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final h f2026c;

    /* loaded from: classes.dex */
    public interface a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f2027b = new a() { // from class: com.applovin.exoplayer2.d.h$a$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.d.h.a
            public final void release() {
                h.a.a();
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void a() {
        }

        void release();
    }

    static {
        h hVar = new h() { // from class: com.applovin.exoplayer2.d.h.1
            @Override // com.applovin.exoplayer2.d.h
            public int a(v vVar) {
                return vVar.o != null ? 1 : 0;
            }

            @Override // com.applovin.exoplayer2.d.h
            public f b(Looper looper, g.a aVar, v vVar) {
                if (vVar.o == null) {
                    return null;
                }
                return new l(new f.a(new t(1), 6001));
            }
        };
        f2025b = hVar;
        f2026c = hVar;
    }

    int a(v vVar);

    default a a(Looper looper, g.a aVar, v vVar) {
        return a.f2027b;
    }

    default void a() {
    }

    f b(Looper looper, g.a aVar, v vVar);

    default void b() {
    }
}
