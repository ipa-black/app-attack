package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdaf {
    private final zzdhc zza;
    private final zzdjj zzb;

    public zzdaf(zzdhc zzdhcVar, zzdjj zzdjjVar) {
        this.zza = zzdhcVar;
        this.zzb = zzdjjVar;
    }

    public final zzdhc zza() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzdjj zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzdlu zzc() {
        zzdjj zzdjjVar = this.zzb;
        return zzdjjVar != null ? new zzdlu(zzdjjVar, zzcib.zzf) : new zzdlu(new zzdae(this), zzcib.zzf);
    }
}
