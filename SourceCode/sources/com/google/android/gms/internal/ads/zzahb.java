package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahb implements zzahd {
    private final String zzb;
    private String zzc;
    private zzaaq zzd;
    private int zzf;
    private int zzg;
    private long zzh;
    private zzaf zzi;
    private int zzj;
    private final zzef zza = new zzef(new byte[18]);
    private int zze = 0;
    private long zzk = C.TIME_UNSET;

    public zzahb(String str) {
        this.zzb = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0145  */
    @Override // com.google.android.gms.internal.ads.zzahd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzef r19) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahb.zza(com.google.android.gms.internal.ads.zzef):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zzc = zzaipVar.zzb();
        this.zzd = zzzmVar.zzv(zzaipVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzk = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        this.zze = 0;
        this.zzf = 0;
        this.zzg = 0;
        this.zzk = C.TIME_UNSET;
    }
}
