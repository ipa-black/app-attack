package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahm implements zzahd {
    private final zzaie zza;
    private long zze;
    private String zzg;
    private zzaaq zzh;
    private zzahl zzi;
    private boolean zzj;
    private boolean zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzahs zzb = new zzahs(7, 128);
    private final zzahs zzc = new zzahs(8, 128);
    private final zzahs zzd = new zzahs(6, 128);
    private long zzk = C.TIME_UNSET;
    private final zzef zzm = new zzef();

    public zzahm(zzaie zzaieVar, boolean z, boolean z2) {
        this.zza = zzaieVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzf(byte[] bArr, int i, int i2) {
        if (!this.zzj) {
            this.zzb.zza(bArr, i, i2);
            this.zzc.zza(bArr, i, i2);
        }
        this.zzd.zza(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0181 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzahd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzef r20) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahm.zza(com.google.android.gms.internal.ads.zzef):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zzg = zzaipVar.zzb();
        this.zzh = zzzmVar.zzv(zzaipVar.zza(), 2);
        this.zzi = new zzahl(this.zzh, false, false);
        this.zza.zzb(zzzmVar, zzaipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzk = j;
        }
        this.zzl |= (i & 2) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        this.zze = 0L;
        this.zzl = false;
        this.zzk = C.TIME_UNSET;
        zzaag.zze(this.zzf);
        this.zzb.zzb();
        this.zzc.zzb();
        this.zzd.zzb();
        zzahl zzahlVar = this.zzi;
        if (zzahlVar != null) {
            zzahlVar.zzc();
        }
    }
}
