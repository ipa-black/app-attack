package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.metadata.id3.GeobFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class f extends h {
    public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator<f>() { // from class: com.applovin.exoplayer2.g.e.f.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public f[] newArray(int i) {
            return new f[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2890a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2891b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2892c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f2893d;

    f(Parcel parcel) {
        super(GeobFrame.ID);
        this.f2890a = (String) ai.a(parcel.readString());
        this.f2891b = (String) ai.a(parcel.readString());
        this.f2892c = (String) ai.a(parcel.readString());
        this.f2893d = (byte[]) ai.a(parcel.createByteArray());
    }

    public f(String str, String str2, String str3, byte[] bArr) {
        super(GeobFrame.ID);
        this.f2890a = str;
        this.f2891b = str2;
        this.f2892c = str3;
        this.f2893d = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return ai.a((Object) this.f2890a, (Object) fVar.f2890a) && ai.a((Object) this.f2891b, (Object) fVar.f2891b) && ai.a((Object) this.f2892c, (Object) fVar.f2892c) && Arrays.equals(this.f2893d, fVar.f2893d);
    }

    public int hashCode() {
        String str = this.f2890a;
        int hashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f2891b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f2892c;
        return ((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Arrays.hashCode(this.f2893d);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f2899f + ": mimeType=" + this.f2890a + ", filename=" + this.f2891b + ", description=" + this.f2892c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2890a);
        parcel.writeString(this.f2891b);
        parcel.writeString(this.f2892c);
        parcel.writeByteArray(this.f2893d);
    }
}
