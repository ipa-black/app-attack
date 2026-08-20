package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzavc implements Comparator<zzavb>, Parcelable {
    public static final Parcelable.Creator<zzavc> CREATOR = new zzauz();
    public final int zza;
    private final zzavb[] zzb;
    private int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavc(Parcel parcel) {
        zzavb[] zzavbVarArr = (zzavb[]) parcel.createTypedArray(zzavb.CREATOR);
        this.zzb = zzavbVarArr;
        this.zza = zzavbVarArr.length;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzavb zzavbVar, zzavb zzavbVar2) {
        UUID uuid;
        UUID uuid2;
        UUID uuid3;
        UUID uuid4;
        zzavb zzavbVar3 = zzavbVar;
        zzavb zzavbVar4 = zzavbVar2;
        UUID uuid5 = zzaso.zzb;
        uuid = zzavbVar3.zze;
        if (uuid5.equals(uuid)) {
            UUID uuid6 = zzaso.zzb;
            uuid4 = zzavbVar4.zze;
            return !uuid6.equals(uuid4) ? 1 : 0;
        }
        uuid2 = zzavbVar3.zze;
        uuid3 = zzavbVar4.zze;
        return uuid2.compareTo(uuid3);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zzb, ((zzavc) obj).zzb);
    }

    public final int hashCode() {
        int i = this.zzc;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.zzb);
            this.zzc = hashCode;
            return hashCode;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.zzb, 0);
    }

    public final zzavb zza(int i) {
        return this.zzb[i];
    }

    public zzavc(List list) {
        this(false, (zzavb[]) list.toArray(new zzavb[list.size()]));
    }

    private zzavc(boolean z, zzavb... zzavbVarArr) {
        UUID uuid;
        UUID uuid2;
        UUID uuid3;
        zzavbVarArr = z ? (zzavb[]) zzavbVarArr.clone() : zzavbVarArr;
        Arrays.sort(zzavbVarArr, this);
        int i = 1;
        while (true) {
            int length = zzavbVarArr.length;
            if (i >= length) {
                this.zzb = zzavbVarArr;
                this.zza = length;
                return;
            }
            uuid = zzavbVarArr[i - 1].zze;
            uuid2 = zzavbVarArr[i].zze;
            if (uuid.equals(uuid2)) {
                uuid3 = zzavbVarArr[i].zze;
                throw new IllegalArgumentException("Duplicate data for uuid: ".concat(String.valueOf(String.valueOf(uuid3))));
            }
            i++;
        }
    }

    public zzavc(zzavb... zzavbVarArr) {
        this(true, zzavbVarArr);
    }
}
