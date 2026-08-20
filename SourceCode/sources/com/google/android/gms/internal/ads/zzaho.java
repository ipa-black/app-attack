package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaho implements zzahd {
    private final zzaie zza;
    private String zzb;
    private zzaaq zzc;
    private zzahn zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzahs zzg = new zzahs(32, 128);
    private final zzahs zzh = new zzahs(33, 128);
    private final zzahs zzi = new zzahs(34, 128);
    private final zzahs zzj = new zzahs(39, 128);
    private final zzahs zzk = new zzahs(40, 128);
    private long zzm = C.TIME_UNSET;
    private final zzef zzn = new zzef();

    public zzaho(zzaie zzaieVar) {
        this.zza = zzaieVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzf(byte[] bArr, int i, int i2) {
        this.zzd.zzb(bArr, i, i2);
        if (!this.zze) {
            this.zzg.zza(bArr, i, i2);
            this.zzh.zza(bArr, i, i2);
            this.zzi.zza(bArr, i, i2);
        }
        this.zzj.zza(bArr, i, i2);
        this.zzk.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:156:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03c1  */
    @Override // com.google.android.gms.internal.ads.zzahd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzef r38) {
        /*
            Method dump skipped, instructions count: 987
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaho.zza(com.google.android.gms.internal.ads.zzef):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zzb = zzaipVar.zzb();
        this.zzc = zzzmVar.zzv(zzaipVar.zza(), 2);
        this.zzd = new zzahn(this.zzc);
        this.zza.zzb(zzzmVar, zzaipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzm = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        this.zzl = 0L;
        this.zzm = C.TIME_UNSET;
        zzaag.zze(this.zzf);
        this.zzg.zzb();
        this.zzh.zzb();
        this.zzi.zzb();
        this.zzj.zzb();
        this.zzk.zzb();
        zzahn zzahnVar = this.zzd;
        if (zzahnVar != null) {
            zzahnVar.zzc();
        }
    }
}
