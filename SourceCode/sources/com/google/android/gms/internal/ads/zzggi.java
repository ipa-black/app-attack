package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
class zzggi implements zzggg {
    private final zzgli zza;
    private final Class zzb;

    public zzggi(zzgli zzgliVar, Class cls) {
        if (!zzgliVar.zzl().contains(cls) && !Void.class.equals(cls)) {
            throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzgliVar.toString(), cls.getName()));
        }
        this.zza = zzgliVar;
        this.zzb = cls;
    }

    private final zzggh zzg() {
        return new zzggh(this.zza.zza());
    }

    private final Object zzh(zzgzn zzgznVar) throws GeneralSecurityException {
        if (Void.class.equals(this.zzb)) {
            throw new GeneralSecurityException("Cannot create a primitive for Void");
        }
        this.zza.zze(zzgznVar);
        return this.zza.zzk(zzgznVar, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzggg
    public final zzgsw zza(zzgwv zzgwvVar) throws GeneralSecurityException {
        try {
            zzgzn zza = zzg().zza(zzgwvVar);
            zzgst zza2 = zzgsw.zza();
            zza2.zzb(this.zza.zzd());
            zza2.zzc(zza.zzat());
            zza2.zza(this.zza.zzb());
            return (zzgsw) zza2.zzak();
        } catch (zzgyp e2) {
            throw new GeneralSecurityException("Unexpected proto", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzggg
    public final zzgzn zzb(zzgwv zzgwvVar) throws GeneralSecurityException {
        try {
            return zzg().zza(zzgwvVar);
        } catch (zzgyp e2) {
            throw new GeneralSecurityException("Failures parsing proto of type ".concat(String.valueOf(this.zza.zza().zzg().getName())), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzggg
    public final Class zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzggg
    public final Object zzd(zzgwv zzgwvVar) throws GeneralSecurityException {
        try {
            return zzh(this.zza.zzc(zzgwvVar));
        } catch (zzgyp e2) {
            throw new GeneralSecurityException("Failures parsing proto of type ".concat(String.valueOf(this.zza.zzj().getName())), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzggg
    public final Object zze(zzgzn zzgznVar) throws GeneralSecurityException {
        String concat = "Expected proto of type ".concat(String.valueOf(this.zza.zzj().getName()));
        if (this.zza.zzj().isInstance(zzgznVar)) {
            return zzh(zzgznVar);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.zzggg
    public final String zzf() {
        return this.zza.zzd();
    }
}
