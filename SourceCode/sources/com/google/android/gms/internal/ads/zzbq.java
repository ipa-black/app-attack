package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.C;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbq implements Parcelable {
    public static final Parcelable.Creator<zzbq> CREATOR = new zzbo();
    public final long zza;
    private final zzbp[] zzb;

    public zzbq(long j, zzbp... zzbpVarArr) {
        this.zza = j;
        this.zzb = zzbpVarArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbq(Parcel parcel) {
        this.zzb = new zzbp[parcel.readInt()];
        int i = 0;
        while (true) {
            zzbp[] zzbpVarArr = this.zzb;
            if (i < zzbpVarArr.length) {
                zzbpVarArr[i] = (zzbp) parcel.readParcelable(zzbp.class.getClassLoader());
                i++;
            } else {
                this.zza = parcel.readLong();
                return;
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzbq zzbqVar = (zzbq) obj;
            if (Arrays.equals(this.zzb, zzbqVar.zzb) && this.zza == zzbqVar.zza) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Arrays.hashCode(this.zzb);
        long j = this.zza;
        return (hashCode * 31) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        String str;
        String arrays = Arrays.toString(this.zzb);
        long j = this.zza;
        if (j == C.TIME_UNSET) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + j;
        }
        return "entries=" + arrays + str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zzb.length);
        for (zzbp zzbpVar : this.zzb) {
            parcel.writeParcelable(zzbpVar, 0);
        }
        parcel.writeLong(this.zza);
    }

    public final int zza() {
        return this.zzb.length;
    }

    public final zzbp zzb(int i) {
        return this.zzb[i];
    }

    public final zzbq zzc(zzbp... zzbpVarArr) {
        return zzbpVarArr.length == 0 ? this : new zzbq(this.zza, (zzbp[]) zzen.zzad(this.zzb, zzbpVarArr));
    }

    public final zzbq zzd(zzbq zzbqVar) {
        return zzbqVar == null ? this : zzc(zzbqVar.zzb);
    }

    public zzbq(List list) {
        this(C.TIME_UNSET, (zzbp[]) list.toArray(new zzbp[0]));
    }
}
