package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahq implements zzahd {
    private final String zza;
    private final zzef zzb;
    private final zzee zzc;
    private zzaaq zzd;
    private String zze;
    private zzaf zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private long zzk;
    private boolean zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private long zzq;
    private int zzr;
    private long zzs;
    private int zzt;
    private String zzu;

    public zzahq(String str) {
        this.zza = str;
        zzef zzefVar = new zzef(1024);
        this.zzb = zzefVar;
        byte[] zzH = zzefVar.zzH();
        this.zzc = new zzee(zzH, zzH.length);
        this.zzk = C.TIME_UNSET;
    }

    private final int zzf(zzee zzeeVar) throws zzbu {
        int zza = zzeeVar.zza();
        zzyg zzb = zzyh.zzb(zzeeVar, true);
        this.zzu = zzb.zzc;
        this.zzr = zzb.zza;
        this.zzt = zzb.zzb;
        return zza - zzeeVar.zza();
    }

    private static long zzg(zzee zzeeVar) {
        return zzeeVar.zzc((zzeeVar.zzc(2) + 1) * 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0154, code lost:
        if (r14.zzl == false) goto L105;
     */
    @Override // com.google.android.gms.internal.ads.zzahd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzef r15) throws com.google.android.gms.internal.ads.zzbu {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahq.zza(com.google.android.gms.internal.ads.zzef):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zzd = zzzmVar.zzv(zzaipVar.zza(), 1);
        this.zze = zzaipVar.zzb();
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
        this.zzg = 0;
        this.zzk = C.TIME_UNSET;
        this.zzl = false;
    }
}
