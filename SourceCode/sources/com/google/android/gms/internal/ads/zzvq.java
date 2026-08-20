package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzvq extends zzvn {
    private final boolean zze;
    private final zzvf zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final boolean zzo;
    private final boolean zzp;
    private final int zzq;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0031, code lost:
        if (r2 <= 2.14748365E9f) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0048, code lost:
        if (r1 >= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0050, code lost:
        if (r1 >= 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x005d, code lost:
        if (r1 >= 0.0f) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0065, code lost:
        if (r7 >= 0) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x00af A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzvq(int r5, com.google.android.gms.internal.ads.zzcp r6, int r7, com.google.android.gms.internal.ads.zzvf r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvq.<init>(int, com.google.android.gms.internal.ads.zzcp, int, com.google.android.gms.internal.ads.zzvf, int, int, boolean):void");
    }

    public static /* synthetic */ int zza(zzvq zzvqVar, zzvq zzvqVar2) {
        zzgcc zzgccVar;
        zzgcc zza;
        zzgcc zzgccVar2;
        if (!zzvqVar.zze || !zzvqVar.zzh) {
            zzgccVar = zzvr.zzc;
            zza = zzgccVar.zza();
        } else {
            zza = zzvr.zzc;
        }
        zzgaj zzj = zzgaj.zzj();
        Integer valueOf = Integer.valueOf(zzvqVar.zzi);
        Integer valueOf2 = Integer.valueOf(zzvqVar2.zzi);
        boolean z = zzvqVar.zzf.zzz;
        zzgccVar2 = zzvr.zzd;
        return zzj.zzc(valueOf, valueOf2, zzgccVar2).zzc(Integer.valueOf(zzvqVar.zzj), Integer.valueOf(zzvqVar2.zzj), zza).zzc(Integer.valueOf(zzvqVar.zzi), Integer.valueOf(zzvqVar2.zzi), zza).zza();
    }

    public static /* synthetic */ int zzd(zzvq zzvqVar, zzvq zzvqVar2) {
        zzgaj zzb = zzgaj.zzj().zzd(zzvqVar.zzh, zzvqVar2.zzh).zzb(zzvqVar.zzl, zzvqVar2.zzl);
        boolean z = zzvqVar.zzm;
        boolean z2 = zzvqVar2.zzm;
        zzgaj zzc = zzb.zzd(true, true).zzd(zzvqVar.zze, zzvqVar2.zze).zzd(zzvqVar.zzg, zzvqVar2.zzg).zzc(Integer.valueOf(zzvqVar.zzk), Integer.valueOf(zzvqVar2.zzk), zzgcc.zzc().zza());
        boolean z3 = zzvqVar.zzo;
        zzgaj zzd = zzc.zzd(z3, zzvqVar2.zzo);
        boolean z4 = zzvqVar.zzp;
        zzgaj zzd2 = zzd.zzd(z4, zzvqVar2.zzp);
        if (z3 && z4) {
            zzd2 = zzd2.zzb(zzvqVar.zzq, zzvqVar2.zzq);
        }
        return zzd2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final int zzb() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final /* bridge */ /* synthetic */ boolean zzc(zzvn zzvnVar) {
        zzvq zzvqVar = (zzvq) zzvnVar;
        if (zzen.zzT(this.zzd.zzm, zzvqVar.zzd.zzm)) {
            boolean z = this.zzf.zzJ;
            return this.zzo == zzvqVar.zzo && this.zzp == zzvqVar.zzp;
        }
        return false;
    }
}
