package com.applovin.exoplayer2.e.d;

import com.google.android.exoplayer2.util.MimeTypes;
import java.util.List;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final long f2144a;

    /* renamed from: b  reason: collision with root package name */
    public final List<a> f2145b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f2146a;

        /* renamed from: b  reason: collision with root package name */
        public final String f2147b;

        /* renamed from: c  reason: collision with root package name */
        public final long f2148c;

        /* renamed from: d  reason: collision with root package name */
        public final long f2149d;

        public a(String str, String str2, long j, long j2) {
            this.f2146a = str;
            this.f2147b = str2;
            this.f2148c = j;
            this.f2149d = j2;
        }
    }

    public b(long j, List<a> list) {
        this.f2144a = j;
        this.f2145b = list;
    }

    public com.applovin.exoplayer2.g.f.b a(long j) {
        long j2;
        if (this.f2145b.size() < 2) {
            return null;
        }
        long j3 = j;
        long j4 = -1;
        long j5 = -1;
        long j6 = -1;
        long j7 = -1;
        boolean z = false;
        for (int size = this.f2145b.size() - 1; size >= 0; size--) {
            a aVar = this.f2145b.get(size);
            boolean equals = MimeTypes.VIDEO_MP4.equals(aVar.f2146a) | z;
            if (size == 0) {
                j3 -= aVar.f2149d;
                j2 = 0;
            } else {
                j2 = j3 - aVar.f2148c;
            }
            long j8 = j3;
            j3 = j2;
            if (!equals || j3 == j8) {
                z = equals;
            } else {
                j7 = j8 - j3;
                j6 = j3;
                z = false;
            }
            if (size == 0) {
                j4 = j3;
                j5 = j8;
            }
        }
        if (j6 == -1 || j7 == -1 || j4 == -1 || j5 == -1) {
            return null;
        }
        return new com.applovin.exoplayer2.g.f.b(j4, j5, this.f2144a, j6, j7);
    }
}
