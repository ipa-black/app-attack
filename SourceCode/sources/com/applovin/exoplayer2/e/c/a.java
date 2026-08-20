package com.applovin.exoplayer2.e.c;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.b.a;
import com.applovin.exoplayer2.e.c.d;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Collections;
/* loaded from: classes.dex */
final class a extends d {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f2107b = {5512, 11025, 22050, 44100};

    /* renamed from: c  reason: collision with root package name */
    private boolean f2108c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2109d;

    /* renamed from: e  reason: collision with root package name */
    private int f2110e;

    public a(x xVar) {
        super(xVar);
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar) throws d.a {
        v.a l;
        if (this.f2108c) {
            yVar.e(1);
        } else {
            int h2 = yVar.h();
            int i = (h2 >> 4) & 15;
            this.f2110e = i;
            if (i == 2) {
                l = new v.a().f(MimeTypes.AUDIO_MPEG).k(1).l(f2107b[(h2 >> 2) & 3]);
            } else if (i == 7 || i == 8) {
                l = new v.a().f(i == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW).k(1).l(8000);
            } else {
                if (i != 10) {
                    throw new d.a("Audio format not supported: " + this.f2110e);
                }
                this.f2108c = true;
            }
            this.f2122a.a(l.a());
            this.f2109d = true;
            this.f2108c = true;
        }
        return true;
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar, long j) throws ai {
        if (this.f2110e == 2) {
            int a2 = yVar.a();
            this.f2122a.a(yVar, a2);
            this.f2122a.a(j, 1, a2, 0, null);
            return true;
        }
        int h2 = yVar.h();
        if (h2 != 0 || this.f2109d) {
            if (this.f2110e != 10 || h2 == 1) {
                int a3 = yVar.a();
                this.f2122a.a(yVar, a3);
                this.f2122a.a(j, 1, a3, 0, null);
                return true;
            }
            return false;
        }
        int a4 = yVar.a();
        byte[] bArr = new byte[a4];
        yVar.a(bArr, 0, a4);
        a.C0022a a5 = com.applovin.exoplayer2.b.a.a(bArr);
        this.f2122a.a(new v.a().f(MimeTypes.AUDIO_AAC).d(a5.f1448c).k(a5.f1447b).l(a5.f1446a).a(Collections.singletonList(bArr)).a());
        this.f2109d = true;
        return false;
    }
}
