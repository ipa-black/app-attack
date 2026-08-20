package com.applovin.exoplayer2.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class c implements a.InterfaceC0042a {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.applovin.exoplayer2.g.d.c.1
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
    public final byte[] f2868a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2869b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2870c;

    c(Parcel parcel) {
        this.f2868a = (byte[]) com.applovin.exoplayer2.l.a.b(parcel.createByteArray());
        this.f2869b = parcel.readString();
        this.f2870c = parcel.readString();
    }

    public c(byte[] bArr, String str, String str2) {
        this.f2868a = bArr;
        this.f2869b = str;
        this.f2870c = str2;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0042a
    public void a(ac.a aVar) {
        String str = this.f2869b;
        if (str != null) {
            aVar.a(str);
        }
    }

    @Override // android.os.Parcelable
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
        return Arrays.equals(this.f2868a, ((c) obj).f2868a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f2868a);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f2869b, this.f2870c, Integer.valueOf(this.f2868a.length));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.f2868a);
        parcel.writeString(this.f2869b);
        parcel.writeString(this.f2870c);
    }
}
