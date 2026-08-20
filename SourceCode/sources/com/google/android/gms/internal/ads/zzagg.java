package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzagg implements zzzj {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzagf
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzagg.zza;
            return new zzzj[]{new zzagg()};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private zzzm zzb;
    private zzago zzc;
    private boolean zzd;

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    private final boolean zze(zzzk zzzkVar) throws IOException {
        zzagi zzagiVar = new zzagi();
        if (zzagiVar.zzb(zzzkVar, true) && (zzagiVar.zza & 2) == 2) {
            int min = Math.min(zzagiVar.zze, 8);
            zzef zzefVar = new zzef(min);
            ((zzyz) zzzkVar).zzm(zzefVar.zzH(), 0, min, false);
            zzefVar.zzF(0);
            if (zzefVar.zza() < 5 || zzefVar.zzk() != 127 || zzefVar.zzs() != 1179402563) {
                zzefVar.zzF(0);
                try {
                    if (zzaaw.zzd(1, zzefVar, true)) {
                        this.zzc = new zzagq();
                    }
                } catch (zzbu unused) {
                }
                zzefVar.zzF(0);
                if (zzagk.zzd(zzefVar)) {
                    this.zzc = new zzagk();
                }
            } else {
                this.zzc = new zzage();
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        zzdd.zzb(this.zzb);
        if (this.zzc == null) {
            if (!zze(zzzkVar)) {
                throw zzbu.zza("Failed to determine bitstream type", null);
            }
            zzzkVar.zzj();
        }
        if (!this.zzd) {
            zzaaq zzv = this.zzb.zzv(0, 1);
            this.zzb.zzC();
            this.zzc.zzh(this.zzb, zzv);
            this.zzd = true;
        }
        return this.zzc.zze(zzzkVar, zzaajVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzb = zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        zzago zzagoVar = this.zzc;
        if (zzagoVar != null) {
            zzagoVar.zzj(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final boolean zzd(zzzk zzzkVar) throws IOException {
        try {
            return zze(zzzkVar);
        } catch (zzbu unused) {
            return false;
        }
    }
}
