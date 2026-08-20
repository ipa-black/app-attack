package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhen implements zzhep {
    private zzhfc zza;

    public static void zza(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        zzhen zzhenVar = (zzhen) zzhfcVar;
        if (zzhenVar.zza != null) {
            throw new IllegalStateException();
        }
        zzhenVar.zza = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final Object zzb() {
        zzhfc zzhfcVar = this.zza;
        if (zzhfcVar == null) {
            throw new IllegalStateException();
        }
        return zzhfcVar.zzb();
    }
}
