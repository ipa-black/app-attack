package com.google.android.gms.internal.ads;

import android.os.IBinder;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfvq extends zzfwj {
    private final IBinder zza;
    private final String zzb;
    private final int zzc;
    private final float zzd;
    private final int zze;
    private final String zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfvq(IBinder iBinder, boolean z, String str, int i, float f2, int i2, String str2, int i3, String str3, zzfvp zzfvpVar) {
        this.zza = iBinder;
        this.zzb = str;
        this.zzc = i;
        this.zzd = f2;
        this.zze = i3;
        this.zzf = str3;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfwj) {
            zzfwj zzfwjVar = (zzfwj) obj;
            if (this.zza.equals(zzfwjVar.zze())) {
                zzfwjVar.zzi();
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzfwjVar.zzg()) : zzfwjVar.zzg() == null) {
                    if (this.zzc == zzfwjVar.zzc() && Float.floatToIntBits(this.zzd) == Float.floatToIntBits(zzfwjVar.zza())) {
                        zzfwjVar.zzb();
                        zzfwjVar.zzh();
                        if (this.zze == zzfwjVar.zzd() && ((str = this.zzf) != null ? str.equals(zzfwjVar.zzf()) : zzfwjVar.zzf() == null)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((this.zza.hashCode() ^ 1000003) * 1000003) ^ 1237) * 1000003;
        String str = this.zzb;
        int hashCode2 = (((((((hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.zzc) * 1000003) ^ Float.floatToIntBits(this.zzd)) * 583896283) ^ this.zze) * 1000003;
        String str2 = this.zzf;
        return hashCode2 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String obj = this.zza.toString();
        String str = this.zzb;
        int i = this.zzc;
        float f2 = this.zzd;
        int i2 = this.zze;
        String str2 = this.zzf;
        return "OverlayDisplayShowRequest{windowToken=" + obj + ", stableSessionToken=false, appId=" + str + ", layoutGravity=" + i + ", layoutVerticalMargin=" + f2 + ", displayMode=0, sessionToken=null, windowWidthPx=" + i2 + ", adFieldEnifd=" + str2 + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final float zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final int zzb() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final int zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final IBinder zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final String zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final String zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final String zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final boolean zzi() {
        return false;
    }
}
