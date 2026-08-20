package com.applovin.exoplayer2.g.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.util.MimeTypes;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class a implements a.InterfaceC0042a {

    /* renamed from: a  reason: collision with root package name */
    public final String f2839a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2840b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2841c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2842d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f2843e;

    /* renamed from: h  reason: collision with root package name */
    private int f2844h;

    /* renamed from: f  reason: collision with root package name */
    private static final v f2837f = new v.a().f(MimeTypes.APPLICATION_ID3).a();

    /* renamed from: g  reason: collision with root package name */
    private static final v f2838g = new v.a().f(MimeTypes.APPLICATION_SCTE35).a();
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.b.a.1
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

    a(Parcel parcel) {
        this.f2839a = (String) ai.a(parcel.readString());
        this.f2840b = (String) ai.a(parcel.readString());
        this.f2841c = parcel.readLong();
        this.f2842d = parcel.readLong();
        this.f2843e = (byte[]) ai.a(parcel.createByteArray());
    }

    public a(String str, String str2, long j, long j2, byte[] bArr) {
        this.f2839a = str;
        this.f2840b = str2;
        this.f2841c = j;
        this.f2842d = j2;
        this.f2843e = bArr;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0042a
    public v a() {
        String str = this.f2839a;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals(EventMessage.SCTE35_SCHEME_ID)) {
                    c2 = 0;
                    break;
                }
                break;
            case -795945609:
                if (str.equals(EventMessage.ID3_SCHEME_ID_AOM)) {
                    c2 = 1;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals("https://developer.apple.com/streaming/emsg-id3")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return f2838g;
            case 1:
            case 2:
                return f2837f;
            default:
                return null;
        }
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0042a
    public byte[] b() {
        if (a() != null) {
            return this.f2843e;
        }
        return null;
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
        a aVar = (a) obj;
        return this.f2841c == aVar.f2841c && this.f2842d == aVar.f2842d && ai.a((Object) this.f2839a, (Object) aVar.f2839a) && ai.a((Object) this.f2840b, (Object) aVar.f2840b) && Arrays.equals(this.f2843e, aVar.f2843e);
    }

    public int hashCode() {
        if (this.f2844h == 0) {
            String str = this.f2839a;
            int hashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f2840b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            long j = this.f2841c;
            long j2 = this.f2842d;
            this.f2844h = ((((((hashCode + hashCode2) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + Arrays.hashCode(this.f2843e);
        }
        return this.f2844h;
    }

    public String toString() {
        return "EMSG: scheme=" + this.f2839a + ", id=" + this.f2842d + ", durationMs=" + this.f2841c + ", value=" + this.f2840b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2839a);
        parcel.writeString(this.f2840b);
        parcel.writeLong(this.f2841c);
        parcel.writeLong(this.f2842d);
        parcel.writeByteArray(this.f2843e);
    }
}
