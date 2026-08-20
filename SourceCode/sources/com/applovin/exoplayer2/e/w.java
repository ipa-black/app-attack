package com.applovin.exoplayer2.e;
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public static final w f2712a = new w(0, 0);

    /* renamed from: b  reason: collision with root package name */
    public final long f2713b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2714c;

    public w(long j, long j2) {
        this.f2713b = j;
        this.f2714c = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        w wVar = (w) obj;
        return this.f2713b == wVar.f2713b && this.f2714c == wVar.f2714c;
    }

    public int hashCode() {
        return (((int) this.f2713b) * 31) + ((int) this.f2714c);
    }

    public String toString() {
        return "[timeUs=" + this.f2713b + ", position=" + this.f2714c + "]";
    }
}
