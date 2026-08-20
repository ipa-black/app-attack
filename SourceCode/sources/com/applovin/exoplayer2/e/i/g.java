package com.applovin.exoplayer2.e.i;

import android.util.SparseArray;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class g implements ad.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f2483a;

    /* renamed from: b  reason: collision with root package name */
    private final List<com.applovin.exoplayer2.v> f2484b;

    public g() {
        this(0);
    }

    public g(int i) {
        this(i, com.applovin.exoplayer2.common.a.s.g());
    }

    public g(int i, List<com.applovin.exoplayer2.v> list) {
        this.f2483a = i;
        this.f2484b = list;
    }

    private z a(ad.b bVar) {
        return new z(c(bVar));
    }

    private boolean a(int i) {
        return (i & this.f2483a) != 0;
    }

    private af b(ad.b bVar) {
        return new af(c(bVar));
    }

    private List<com.applovin.exoplayer2.v> c(ad.b bVar) {
        String str;
        int i;
        if (a(32)) {
            return this.f2484b;
        }
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(bVar.f2439d);
        List<com.applovin.exoplayer2.v> list = this.f2484b;
        while (yVar.a() > 0) {
            int h2 = yVar.h();
            int c2 = yVar.c() + yVar.h();
            if (h2 == 134) {
                list = new ArrayList<>();
                int h3 = yVar.h() & 31;
                for (int i2 = 0; i2 < h3; i2++) {
                    String f2 = yVar.f(3);
                    int h4 = yVar.h();
                    boolean z = (h4 & 128) != 0;
                    if (z) {
                        i = h4 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte h5 = (byte) yVar.h();
                    yVar.e(1);
                    list.add(new v.a().f(str).c(f2).p(i).a(z ? com.applovin.exoplayer2.l.e.a((h5 & SignedBytes.MAX_POWER_OF_TWO) != 0) : null).a());
                }
            }
            yVar.d(c2);
        }
        return list;
    }

    @Override // com.applovin.exoplayer2.e.i.ad.c
    public SparseArray<ad> a() {
        return new SparseArray<>();
    }

    @Override // com.applovin.exoplayer2.e.i.ad.c
    public ad a(int i, ad.b bVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new t(new q(bVar.f2437b));
            }
            if (i != 21) {
                if (i == 27) {
                    if (a(4)) {
                        return null;
                    }
                    return new t(new m(a(bVar), a(1), a(8)));
                } else if (i != 36) {
                    if (i != 89) {
                        if (i != 138) {
                            if (i != 172) {
                                if (i != 257) {
                                    if (i != 129) {
                                        if (i != 130) {
                                            if (i == 134) {
                                                if (a(16)) {
                                                    return null;
                                                }
                                                return new y(new s(MimeTypes.APPLICATION_SCTE35));
                                            } else if (i != 135) {
                                                switch (i) {
                                                    case 15:
                                                        if (a(2)) {
                                                            return null;
                                                        }
                                                        return new t(new f(false, bVar.f2437b));
                                                    case 16:
                                                        return new t(new l(b(bVar)));
                                                    case 17:
                                                        if (a(2)) {
                                                            return null;
                                                        }
                                                        return new t(new p(bVar.f2437b));
                                                    default:
                                                        return null;
                                                }
                                            }
                                        } else if (!a(64)) {
                                            return null;
                                        }
                                    }
                                    return new t(new b(bVar.f2437b));
                                }
                                return new y(new s(MimeTypes.APPLICATION_AIT));
                            }
                            return new t(new d(bVar.f2437b));
                        }
                        return new t(new h(bVar.f2437b));
                    }
                    return new t(new i(bVar.f2438c));
                } else {
                    return new t(new n(a(bVar)));
                }
            }
            return new t(new o());
        }
        return new t(new k(b(bVar)));
    }
}
