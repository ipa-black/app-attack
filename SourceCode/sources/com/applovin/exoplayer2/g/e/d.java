package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.metadata.id3.ChapterTocFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class d extends h {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.applovin.exoplayer2.g.e.d.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public d[] newArray(int i) {
            return new d[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2882a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f2883b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f2884c;

    /* renamed from: d  reason: collision with root package name */
    public final String[] f2885d;

    /* renamed from: e  reason: collision with root package name */
    private final h[] f2886e;

    d(Parcel parcel) {
        super(ChapterTocFrame.ID);
        this.f2882a = (String) ai.a(parcel.readString());
        this.f2883b = parcel.readByte() != 0;
        this.f2884c = parcel.readByte() != 0;
        this.f2885d = (String[]) ai.a(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.f2886e = new h[readInt];
        for (int i = 0; i < readInt; i++) {
            this.f2886e[i] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }

    public d(String str, boolean z, boolean z2, String[] strArr, h[] hVarArr) {
        super(ChapterTocFrame.ID);
        this.f2882a = str;
        this.f2883b = z;
        this.f2884c = z2;
        this.f2885d = strArr;
        this.f2886e = hVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f2883b == dVar.f2883b && this.f2884c == dVar.f2884c && ai.a((Object) this.f2882a, (Object) dVar.f2882a) && Arrays.equals(this.f2885d, dVar.f2885d) && Arrays.equals(this.f2886e, dVar.f2886e);
    }

    public int hashCode() {
        int i = (((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (this.f2883b ? 1 : 0)) * 31) + (this.f2884c ? 1 : 0)) * 31;
        String str = this.f2882a;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2882a);
        parcel.writeByte(this.f2883b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2884c ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f2885d);
        parcel.writeInt(this.f2886e.length);
        for (h hVar : this.f2886e) {
            parcel.writeParcelable(hVar, 0);
        }
    }
}
