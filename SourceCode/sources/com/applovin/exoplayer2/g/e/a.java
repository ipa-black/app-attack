package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class a extends h {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.e.a.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public a[] newArray(int i) {
            return new a[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2871a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2872b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2873c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f2874d;

    a(Parcel parcel) {
        super(ApicFrame.ID);
        this.f2871a = (String) ai.a(parcel.readString());
        this.f2872b = parcel.readString();
        this.f2873c = parcel.readInt();
        this.f2874d = (byte[]) ai.a(parcel.createByteArray());
    }

    public a(String str, String str2, int i, byte[] bArr) {
        super(ApicFrame.ID);
        this.f2871a = str;
        this.f2872b = str2;
        this.f2873c = i;
        this.f2874d = bArr;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0042a
    public void a(ac.a aVar) {
        aVar.a(this.f2874d, this.f2873c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2873c == aVar.f2873c && ai.a((Object) this.f2871a, (Object) aVar.f2871a) && ai.a((Object) this.f2872b, (Object) aVar.f2872b) && Arrays.equals(this.f2874d, aVar.f2874d);
    }

    public int hashCode() {
        int i = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2873c) * 31;
        String str = this.f2871a;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f2872b;
        return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.f2874d);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f2899f + ": mimeType=" + this.f2871a + ", description=" + this.f2872b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2871a);
        parcel.writeString(this.f2872b);
        parcel.writeInt(this.f2873c);
        parcel.writeByteArray(this.f2874d);
    }
}
