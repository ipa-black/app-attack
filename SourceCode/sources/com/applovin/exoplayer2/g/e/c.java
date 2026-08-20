package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.metadata.id3.ChapterFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class c extends h {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.applovin.exoplayer2.g.e.c.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c[] newArray(int i) {
            return new c[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2876a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2877b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2878c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2879d;

    /* renamed from: e  reason: collision with root package name */
    public final long f2880e;

    /* renamed from: g  reason: collision with root package name */
    private final h[] f2881g;

    c(Parcel parcel) {
        super(ChapterFrame.ID);
        this.f2876a = (String) ai.a(parcel.readString());
        this.f2877b = parcel.readInt();
        this.f2878c = parcel.readInt();
        this.f2879d = parcel.readLong();
        this.f2880e = parcel.readLong();
        int readInt = parcel.readInt();
        this.f2881g = new h[readInt];
        for (int i = 0; i < readInt; i++) {
            this.f2881g[i] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }

    public c(String str, int i, int i2, long j, long j2, h[] hVarArr) {
        super(ChapterFrame.ID);
        this.f2876a = str;
        this.f2877b = i;
        this.f2878c = i2;
        this.f2879d = j;
        this.f2880e = j2;
        this.f2881g = hVarArr;
    }

    @Override // com.applovin.exoplayer2.g.e.h, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f2877b == cVar.f2877b && this.f2878c == cVar.f2878c && this.f2879d == cVar.f2879d && this.f2880e == cVar.f2880e && ai.a((Object) this.f2876a, (Object) cVar.f2876a) && Arrays.equals(this.f2881g, cVar.f2881g);
    }

    public int hashCode() {
        int i = (((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2877b) * 31) + this.f2878c) * 31) + ((int) this.f2879d)) * 31) + ((int) this.f2880e)) * 31;
        String str = this.f2876a;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2876a);
        parcel.writeInt(this.f2877b);
        parcel.writeInt(this.f2878c);
        parcel.writeLong(this.f2879d);
        parcel.writeLong(this.f2880e);
        parcel.writeInt(this.f2881g.length);
        for (h hVar : this.f2881g) {
            parcel.writeParcelable(hVar, 0);
        }
    }
}
