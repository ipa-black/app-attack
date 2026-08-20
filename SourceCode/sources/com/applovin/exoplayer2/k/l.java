package com.applovin.exoplayer2.k;

import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import com.ironsource.mediationsdk.config.VersionInfo;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f3626a;

    /* renamed from: b  reason: collision with root package name */
    public final long f3627b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3628c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f3629d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, String> f3630e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public final long f3631f;

    /* renamed from: g  reason: collision with root package name */
    public final long f3632g;

    /* renamed from: h  reason: collision with root package name */
    public final long f3633h;
    public final String i;
    public final int j;
    public final Object k;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Uri f3634a;

        /* renamed from: b  reason: collision with root package name */
        private long f3635b;

        /* renamed from: c  reason: collision with root package name */
        private int f3636c;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f3637d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f3638e;

        /* renamed from: f  reason: collision with root package name */
        private long f3639f;

        /* renamed from: g  reason: collision with root package name */
        private long f3640g;

        /* renamed from: h  reason: collision with root package name */
        private String f3641h;
        private int i;
        private Object j;

        public a() {
            this.f3636c = 1;
            this.f3638e = Collections.emptyMap();
            this.f3640g = -1L;
        }

        private a(l lVar) {
            this.f3634a = lVar.f3626a;
            this.f3635b = lVar.f3627b;
            this.f3636c = lVar.f3628c;
            this.f3637d = lVar.f3629d;
            this.f3638e = lVar.f3630e;
            this.f3639f = lVar.f3632g;
            this.f3640g = lVar.f3633h;
            this.f3641h = lVar.i;
            this.i = lVar.j;
            this.j = lVar.k;
        }

        public a a(int i) {
            this.f3636c = i;
            return this;
        }

        public a a(long j) {
            this.f3639f = j;
            return this;
        }

        public a a(Uri uri) {
            this.f3634a = uri;
            return this;
        }

        public a a(String str) {
            this.f3634a = Uri.parse(str);
            return this;
        }

        public a a(Map<String, String> map) {
            this.f3638e = map;
            return this;
        }

        public a a(byte[] bArr) {
            this.f3637d = bArr;
            return this;
        }

        public l a() {
            com.applovin.exoplayer2.l.a.a(this.f3634a, "The uri must be set.");
            return new l(this.f3634a, this.f3635b, this.f3636c, this.f3637d, this.f3638e, this.f3639f, this.f3640g, this.f3641h, this.i, this.j);
        }

        public a b(int i) {
            this.i = i;
            return this;
        }

        public a b(String str) {
            this.f3641h = str;
            return this;
        }
    }

    private l(Uri uri, long j, int i, byte[] bArr, Map<String, String> map, long j2, long j3, String str, int i2, Object obj) {
        byte[] bArr2 = bArr;
        long j4 = j + j2;
        boolean z = true;
        com.applovin.exoplayer2.l.a.a(j4 >= 0);
        com.applovin.exoplayer2.l.a.a(j2 >= 0);
        if (j3 <= 0 && j3 != -1) {
            z = false;
        }
        com.applovin.exoplayer2.l.a.a(z);
        this.f3626a = uri;
        this.f3627b = j;
        this.f3628c = i;
        this.f3629d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f3630e = Collections.unmodifiableMap(new HashMap(map));
        this.f3632g = j2;
        this.f3631f = j4;
        this.f3633h = j3;
        this.i = str;
        this.j = i2;
        this.k = obj;
    }

    public static String a(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return VersionInfo.GIT_BRANCH;
                }
                throw new IllegalStateException();
            }
            return ShareTarget.METHOD_POST;
        }
        return ShareTarget.METHOD_GET;
    }

    public final String a() {
        return a(this.f3628c);
    }

    public a b() {
        return new a();
    }

    public boolean b(int i) {
        return (this.j & i) == i;
    }

    public String toString() {
        return "DataSpec[" + a() + " " + this.f3626a + ", " + this.f3632g + ", " + this.f3633h + ", " + this.i + ", " + this.j + "]";
    }
}
