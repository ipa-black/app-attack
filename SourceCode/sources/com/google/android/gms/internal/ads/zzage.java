package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzage extends zzago {
    private zzzw zza;
    private zzagd zzb;

    private static boolean zzd(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.gms.internal.ads.zzago
    protected final long zza(zzef zzefVar) {
        if (zzd(zzefVar.zzH())) {
            int i = (zzefVar.zzH()[2] & 255) >> 4;
            if (i != 6) {
                if (i == 7) {
                    i = 7;
                }
                int zza = zzzs.zza(zzefVar, i);
                zzefVar.zzF(0);
                return zza;
            }
            zzefVar.zzG(4);
            zzefVar.zzu();
            int zza2 = zzzs.zza(zzefVar, i);
            zzefVar.zzF(0);
            return zza2;
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzago
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzb = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzago
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean zzc(zzef zzefVar, long j, zzagl zzaglVar) {
        byte[] zzH = zzefVar.zzH();
        zzzw zzzwVar = this.zza;
        if (zzzwVar == null) {
            zzzw zzzwVar2 = new zzzw(zzH, 17);
            this.zza = zzzwVar2;
            zzaglVar.zza = zzzwVar2.zzc(Arrays.copyOfRange(zzH, 9, zzefVar.zzd()), null);
            return true;
        } else if ((zzH[0] & Byte.MAX_VALUE) == 3) {
            zzzv zzb = zzzt.zzb(zzefVar);
            zzzw zzf = zzzwVar.zzf(zzb);
            this.zza = zzf;
            this.zzb = new zzagd(zzf, zzb);
            return true;
        } else if (zzd(zzH)) {
            zzagd zzagdVar = this.zzb;
            if (zzagdVar != null) {
                zzagdVar.zza(j);
                zzaglVar.zzb = this.zzb;
            }
            zzaglVar.zza.getClass();
            return false;
        } else {
            return true;
        }
    }
}
