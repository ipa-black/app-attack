package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzadx implements zzbp {
    public static final Parcelable.Creator<zzadx> CREATOR = new zzadv();
    public final float zza;
    public final int zzb;

    public zzadx(float f2, int i) {
        this.zza = f2;
        this.zzb = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzadx(Parcel parcel, zzadw zzadwVar) {
        this.zza = parcel.readFloat();
        this.zzb = parcel.readInt();
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
            zzadx zzadxVar = (zzadx) obj;
            if (this.zza == zzadxVar.zza && this.zzb == zzadxVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.zza).hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.zzb;
    }

    public final String toString() {
        float f2 = this.zza;
        int i = this.zzb;
        return "smta: captureFrameRate=" + f2 + ", svcTemporalLayerCount=" + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.zza);
        parcel.writeInt(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final /* synthetic */ void zza(zzbk zzbkVar) {
    }
}
