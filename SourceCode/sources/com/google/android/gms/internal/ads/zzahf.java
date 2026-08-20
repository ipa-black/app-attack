package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzahf implements zzahd {
    private static final double[] zza = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private String zzb;
    private zzaaq zzc;
    private final zzais zzd;
    private final zzef zze;
    private final zzahs zzf;
    private final boolean[] zzg;
    private final zzahe zzh;
    private long zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;
    private boolean zzq;

    public zzahf() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01dd  */
    @Override // com.google.android.gms.internal.ads.zzahd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzef r19) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahf.zza(com.google.android.gms.internal.ads.zzef):void");
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzb(zzzm zzzmVar, zzaip zzaipVar) {
        zzaipVar.zzc();
        this.zzb = zzaipVar.zzb();
        this.zzc = zzzmVar.zzv(zzaipVar.zza(), 2);
        zzais zzaisVar = this.zzd;
        if (zzaisVar != null) {
            zzaisVar.zzb(zzzmVar, zzaipVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zzd(long j, int i) {
        this.zzm = j;
    }

    @Override // com.google.android.gms.internal.ads.zzahd
    public final void zze() {
        zzaag.zze(this.zzg);
        this.zzh.zzb();
        zzahs zzahsVar = this.zzf;
        if (zzahsVar != null) {
            zzahsVar.zzb();
        }
        this.zzi = 0L;
        this.zzj = false;
        this.zzm = C.TIME_UNSET;
        this.zzo = C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahf(zzais zzaisVar) {
        zzef zzefVar;
        this.zzd = zzaisVar;
        this.zzg = new boolean[4];
        this.zzh = new zzahe(128);
        if (zzaisVar != null) {
            this.zzf = new zzahs(178, 128);
            zzefVar = new zzef();
        } else {
            zzefVar = null;
            this.zzf = null;
        }
        this.zze = zzefVar;
        this.zzm = C.TIME_UNSET;
        this.zzo = C.TIME_UNSET;
    }
}
