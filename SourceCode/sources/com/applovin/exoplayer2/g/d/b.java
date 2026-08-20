package com.applovin.exoplayer2.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
public final class b implements a.InterfaceC0042a {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.applovin.exoplayer2.g.d.b.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public b[] newArray(int i) {
            return new b[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f2862a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2863b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2864c;

    /* renamed from: d  reason: collision with root package name */
    public final String f2865d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f2866e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2867f;

    public b(int i, String str, String str2, String str3, boolean z, int i2) {
        com.applovin.exoplayer2.l.a.a(i2 == -1 || i2 > 0);
        this.f2862a = i;
        this.f2863b = str;
        this.f2864c = str2;
        this.f2865d = str3;
        this.f2866e = z;
        this.f2867f = i2;
    }

    b(Parcel parcel) {
        this.f2862a = parcel.readInt();
        this.f2863b = parcel.readString();
        this.f2864c = parcel.readString();
        this.f2865d = parcel.readString();
        this.f2866e = ai.a(parcel);
        this.f2867f = parcel.readInt();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.applovin.exoplayer2.g.d.b a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r14) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.g.d.b.a(java.util.Map):com.applovin.exoplayer2.g.d.b");
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
        b bVar = (b) obj;
        return this.f2862a == bVar.f2862a && ai.a((Object) this.f2863b, (Object) bVar.f2863b) && ai.a((Object) this.f2864c, (Object) bVar.f2864c) && ai.a((Object) this.f2865d, (Object) bVar.f2865d) && this.f2866e == bVar.f2866e && this.f2867f == bVar.f2867f;
    }

    public int hashCode() {
        int i = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2862a) * 31;
        String str = this.f2863b;
        int hashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f2864c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f2865d;
        return ((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f2866e ? 1 : 0)) * 31) + this.f2867f;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f2864c + "\", genre=\"" + this.f2863b + "\", bitrate=" + this.f2862a + ", metadataInterval=" + this.f2867f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2862a);
        parcel.writeString(this.f2863b);
        parcel.writeString(this.f2864c);
        parcel.writeString(this.f2865d);
        ai.a(parcel, this.f2866e);
        parcel.writeInt(this.f2867f);
    }
}
