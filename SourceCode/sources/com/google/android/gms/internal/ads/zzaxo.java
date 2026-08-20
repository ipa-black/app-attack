package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaxo implements Parcelable {
    public static final Parcelable.Creator<zzaxo> CREATOR = new zzaxm();
    private final zzaxn[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxo(Parcel parcel) {
        this.zza = new zzaxn[parcel.readInt()];
        int i = 0;
        while (true) {
            zzaxn[] zzaxnVarArr = this.zza;
            if (i >= zzaxnVarArr.length) {
                return;
            }
            zzaxnVarArr[i] = (zzaxn) parcel.readParcelable(zzaxn.class.getClassLoader());
            i++;
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
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zza, ((zzaxo) obj).zza);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.zza.length);
        for (zzaxn zzaxnVar : this.zza) {
            parcel.writeParcelable(zzaxnVar, 0);
        }
    }

    public final int zza() {
        return this.zza.length;
    }

    public final zzaxn zzb(int i) {
        return this.zza[i];
    }

    public zzaxo(List list) {
        zzaxn[] zzaxnVarArr = new zzaxn[list.size()];
        this.zza = zzaxnVarArr;
        list.toArray(zzaxnVarArr);
    }
}
