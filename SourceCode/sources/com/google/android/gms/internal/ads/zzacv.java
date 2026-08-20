package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.ChapterTocFrame;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzacv extends zzade {
    public static final Parcelable.Creator<zzacv> CREATOR = new zzacu();
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final String[] zzd;
    private final zzade[] zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacv(Parcel parcel) {
        super(ChapterTocFrame.ID);
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zza = readString;
        this.zzb = parcel.readByte() != 0;
        this.zzc = parcel.readByte() != 0;
        this.zzd = (String[]) zzen.zzH(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.zze = new zzade[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.zze[i2] = (zzade) parcel.readParcelable(zzade.class.getClassLoader());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzacv zzacvVar = (zzacv) obj;
            if (this.zzb == zzacvVar.zzb && this.zzc == zzacvVar.zzc && zzen.zzT(this.zza, zzacvVar.zza) && Arrays.equals(this.zzd, zzacvVar.zzd) && Arrays.equals(this.zze, zzacvVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = ((((this.zzb ? 1 : 0) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + (this.zzc ? 1 : 0)) * 31;
        String str = this.zza;
        return i + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeByte(this.zzb ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.zzc ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.zzd);
        parcel.writeInt(this.zze.length);
        for (zzade zzadeVar : this.zze) {
            parcel.writeParcelable(zzadeVar, 0);
        }
    }

    public zzacv(String str, boolean z, boolean z2, String[] strArr, zzade[] zzadeVarArr) {
        super(ChapterTocFrame.ID);
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = strArr;
        this.zze = zzadeVarArr;
    }
}
