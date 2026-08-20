package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public class zzacl implements zzbp {
    public static final Parcelable.Creator<zzacl> CREATOR = new zzack();
    public final String zza;
    public final String zzb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzacl(Parcel parcel) {
        String readString = parcel.readString();
        int i = zzen.zza;
        this.zza = readString;
        this.zzb = parcel.readString();
    }

    public zzacl(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
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
            zzacl zzaclVar = (zzacl) obj;
            if (this.zza.equals(zzaclVar.zza) && this.zzb.equals(zzaclVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        return "VC: " + str + "=" + str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzbp
    public final void zza(zzbk zzbkVar) {
        char c2;
        String str = this.zza;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            zzbkVar.zzr(this.zzb);
        } else if (c2 == 1) {
            zzbkVar.zze(this.zzb);
        } else if (c2 == 2) {
            zzbkVar.zzd(this.zzb);
        } else if (c2 == 3) {
            zzbkVar.zzc(this.zzb);
        } else if (c2 != 4) {
        } else {
            zzbkVar.zzi(this.zzb);
        }
    }
}
