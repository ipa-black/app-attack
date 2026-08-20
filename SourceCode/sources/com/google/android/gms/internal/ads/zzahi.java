package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahi implements zzahd {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    private final zzais zzb;
    private final zzef zzc;
    private final boolean[] zzd;
    private final zzahg zze;
    private final zzahs zzf;
    private zzahh zzg;
    private long zzh;
    private String zzi;
    private zzaaq zzj;
    private boolean zzk;
    private long zzl;

    public zzahi() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01cd A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzahd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzef r19) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahi.zza(com.google.android.gms.internal.ads.zzef):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zzi = zzaipVar.zzb();
        this.zzj = zzzmVar.zzv(zzaipVar.zza(), 2);
        this.zzg = new zzahh(this.zzj);
        this.zzb.zzb(zzzmVar, zzaipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzd(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.zzl = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        zzaag.zze(this.zzd);
        this.zze.zzb();
        zzahh zzahhVar = this.zzg;
        if (zzahhVar != null) {
            zzahhVar.zzd();
        }
        this.zzf.zzb();
        this.zzh = 0L;
        this.zzl = C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahi(zzais zzaisVar) {
        this.zzb = zzaisVar;
        this.zzd = new boolean[4];
        this.zze = new zzahg(128);
        this.zzl = C.TIME_UNSET;
        this.zzf = new zzahs(178, 128);
        this.zzc = new zzef();
    }
}
