package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class j extends h {
    public static final Parcelable.Creator<j> CREATOR = new Parcelable.Creator<j>() { // from class: com.applovin.exoplayer2.g.e.j.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public j createFromParcel(Parcel parcel) {
            return new j(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public j[] newArray(int i) {
            return new j[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f2903a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2904b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2905c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f2906d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f2907e;

    public j(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super(MlltFrame.ID);
        this.f2903a = i;
        this.f2904b = i2;
        this.f2905c = i3;
        this.f2906d = iArr;
        this.f2907e = iArr2;
    }

    j(Parcel parcel) {
        super(MlltFrame.ID);
        this.f2903a = parcel.readInt();
        this.f2904b = parcel.readInt();
        this.f2905c = parcel.readInt();
        this.f2906d = (int[]) ai.a(parcel.createIntArray());
        this.f2907e = (int[]) ai.a(parcel.createIntArray());
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
        j jVar = (j) obj;
        return this.f2903a == jVar.f2903a && this.f2904b == jVar.f2904b && this.f2905c == jVar.f2905c && Arrays.equals(this.f2906d, jVar.f2906d) && Arrays.equals(this.f2907e, jVar.f2907e);
    }

    public int hashCode() {
        return ((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2903a) * 31) + this.f2904b) * 31) + this.f2905c) * 31) + Arrays.hashCode(this.f2906d)) * 31) + Arrays.hashCode(this.f2907e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2903a);
        parcel.writeInt(this.f2904b);
        parcel.writeInt(this.f2905c);
        parcel.writeIntArray(this.f2906d);
        parcel.writeIntArray(this.f2907e);
    }
}
