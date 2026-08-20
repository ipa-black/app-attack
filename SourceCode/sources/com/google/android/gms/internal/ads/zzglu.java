package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzglu {
    private static final zzglu zza = new zzglu();
    private final AtomicReference zzb = new AtomicReference(new zzgmo(new zzgmi(), null));

    public static zzglu zzb() {
        return zza;
    }

    public final zzggf zza(zzgmf zzgmfVar, zzghn zzghnVar) {
        try {
            try {
                return ((zzgmo) this.zzb.get()).zza(zzgmfVar, zzghnVar);
            } catch (GeneralSecurityException e2) {
                throw new zzgmp("Creating a LegacyProtoKey failed", e2);
            }
        } catch (GeneralSecurityException unused) {
            return new zzglm(zzgmfVar, zzghnVar);
        }
    }

    public final synchronized void zzc(zzglb zzglbVar) throws GeneralSecurityException {
        zzgmi zzgmiVar = new zzgmi((zzgmo) this.zzb.get());
        zzgmiVar.zza(zzglbVar);
        this.zzb.set(new zzgmo(zzgmiVar, null));
    }

    public final synchronized void zzd(zzglf zzglfVar) throws GeneralSecurityException {
        zzgmi zzgmiVar = new zzgmi((zzgmo) this.zzb.get());
        zzgmiVar.zzb(zzglfVar);
        this.zzb.set(new zzgmo(zzgmiVar, null));
    }

    public final synchronized void zze(zzgly zzglyVar) throws GeneralSecurityException {
        zzgmi zzgmiVar = new zzgmi((zzgmo) this.zzb.get());
        zzgmiVar.zzc(zzglyVar);
        this.zzb.set(new zzgmo(zzgmiVar, null));
    }

    public final synchronized void zzf(zzgmc zzgmcVar) throws GeneralSecurityException {
        zzgmi zzgmiVar = new zzgmi((zzgmo) this.zzb.get());
        zzgmiVar.zzd(zzgmcVar);
        this.zzb.set(new zzgmo(zzgmiVar, null));
    }
}
