package com.applovin.exoplayer2.e;

import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.DtsUtil;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final int f2688a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2689b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2690c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2691d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2692e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2693f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2694g;

    /* renamed from: h  reason: collision with root package name */
    public final int f2695h;
    public final int i;
    public final long j;
    public final a k;
    private final com.applovin.exoplayer2.g.a l;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f2696a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f2697b;

        public a(long[] jArr, long[] jArr2) {
            this.f2696a = jArr;
            this.f2697b = jArr2;
        }
    }

    private p(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, a aVar, com.applovin.exoplayer2.g.a aVar2) {
        this.f2688a = i;
        this.f2689b = i2;
        this.f2690c = i3;
        this.f2691d = i4;
        this.f2692e = i5;
        this.f2693f = a(i5);
        this.f2694g = i6;
        this.f2695h = i7;
        this.i = b(i7);
        this.j = j;
        this.k = aVar;
        this.l = aVar2;
    }

    public p(byte[] bArr, int i) {
        com.applovin.exoplayer2.l.x xVar = new com.applovin.exoplayer2.l.x(bArr);
        xVar.a(i * 8);
        this.f2688a = xVar.c(16);
        this.f2689b = xVar.c(16);
        this.f2690c = xVar.c(24);
        this.f2691d = xVar.c(24);
        int c2 = xVar.c(20);
        this.f2692e = c2;
        this.f2693f = a(c2);
        this.f2694g = xVar.c(3) + 1;
        int c3 = xVar.c(5) + 1;
        this.f2695h = c3;
        this.i = b(c3);
        this.j = xVar.d(36);
        this.k = null;
        this.l = null;
    }

    private static int a(int i) {
        switch (i) {
            case 8000:
                return 4;
            case AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND /* 16000 */:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case OpusUtil.SAMPLE_RATE /* 48000 */:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND /* 192000 */:
                return 3;
            default:
                return -1;
        }
    }

    private static com.applovin.exoplayer2.g.a a(List<String> list, List<com.applovin.exoplayer2.g.c.a> list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String[] b2 = ai.b(str, "=");
            if (b2.length != 2) {
                com.applovin.exoplayer2.l.q.c("FlacStreamMetadata", "Failed to parse Vorbis comment: " + str);
            } else {
                arrayList.add(new com.applovin.exoplayer2.g.c.b(b2[0], b2[1]));
            }
        }
        arrayList.addAll(list2);
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.applovin.exoplayer2.g.a(arrayList);
    }

    private static int b(int i) {
        if (i != 8) {
            if (i != 12) {
                if (i != 16) {
                    if (i != 20) {
                        return i != 24 ? -1 : 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    public long a() {
        long j = this.j;
        return j == 0 ? C.TIME_UNSET : (j * 1000000) / this.f2692e;
    }

    public long a(long j) {
        return ai.a((j * this.f2692e) / 1000000, 0L, this.j - 1);
    }

    public p a(a aVar) {
        return new p(this.f2688a, this.f2689b, this.f2690c, this.f2691d, this.f2692e, this.f2694g, this.f2695h, this.j, aVar, this.l);
    }

    public p a(List<String> list) {
        return new p(this.f2688a, this.f2689b, this.f2690c, this.f2691d, this.f2692e, this.f2694g, this.f2695h, this.j, this.k, a(a(list, Collections.emptyList())));
    }

    public com.applovin.exoplayer2.g.a a(com.applovin.exoplayer2.g.a aVar) {
        com.applovin.exoplayer2.g.a aVar2 = this.l;
        return aVar2 == null ? aVar : aVar2.a(aVar);
    }

    public com.applovin.exoplayer2.v a(byte[] bArr, com.applovin.exoplayer2.g.a aVar) {
        bArr[4] = Byte.MIN_VALUE;
        int i = this.f2691d;
        if (i <= 0) {
            i = -1;
        }
        return new v.a().f(MimeTypes.AUDIO_FLAC).f(i).k(this.f2694g).l(this.f2692e).a(Collections.singletonList(bArr)).a(a(aVar)).a();
    }

    public long b() {
        long j;
        long j2;
        int i = this.f2691d;
        if (i > 0) {
            j = (i + this.f2690c) / 2;
            j2 = 1;
        } else {
            int i2 = this.f2688a;
            j = ((((i2 != this.f2689b || i2 <= 0) ? PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM : i2) * this.f2694g) * this.f2695h) / 8;
            j2 = 64;
        }
        return j + j2;
    }

    public p b(List<com.applovin.exoplayer2.g.c.a> list) {
        return new p(this.f2688a, this.f2689b, this.f2690c, this.f2691d, this.f2692e, this.f2694g, this.f2695h, this.j, this.k, a(a(Collections.emptyList(), list)));
    }
}
