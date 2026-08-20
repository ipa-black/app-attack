package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeqi implements zzekq {
    private final zzbke zza;
    private final zzgfc zzb;
    private final zzfnj zzc;
    private final zzeqr zzd;

    public zzeqi(zzfnj zzfnjVar, zzgfc zzgfcVar, zzbke zzbkeVar, zzeqr zzeqrVar, byte[] bArr) {
        this.zzc = zzfnjVar;
        this.zzb = zzgfcVar;
        this.zza = zzbkeVar;
        this.zzd = zzeqrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(zzfix zzfixVar, zzfil zzfilVar) {
        zzcig zzcigVar = new zzcig();
        zzeqn zzeqnVar = new zzeqn();
        zzeqnVar.zzd(new zzeqh(this, zzcigVar, zzfixVar, zzfilVar, zzeqnVar));
        zzfiq zzfiqVar = zzfilVar.zzt;
        final zzbjz zzbjzVar = new zzbjz(zzeqnVar, zzfiqVar.zzb, zzfiqVar.zza);
        zzfnj zzfnjVar = this.zzc;
        return zzfmt.zzd(new zzfmn() { // from class: com.google.android.gms.internal.ads.zzeqg
            @Override // com.google.android.gms.internal.ads.zzfmn
            public final void zza() {
                zzeqi.this.zzc(zzbjzVar);
            }
        }, this.zzb, zzfnd.CUSTOM_RENDER_SYN, zzfnjVar).zzb(zzfnd.CUSTOM_RENDER_ACK).zzd(zzcigVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        zzfiq zzfiqVar;
        return (this.zza == null || (zzfiqVar = zzfilVar.zzt) == null || zzfiqVar.zza == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(zzbjz zzbjzVar) throws Exception {
        this.zza.zze(zzbjzVar);
    }
}
