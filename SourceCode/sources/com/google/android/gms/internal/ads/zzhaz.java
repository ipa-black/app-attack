package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzhaz extends zzhax {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* synthetic */ int zza(Object obj) {
        return ((zzhay) obj).zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* synthetic */ int zzb(Object obj) {
        return ((zzhay) obj).zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* bridge */ /* synthetic */ Object zzc(Object obj) {
        zzgyd zzgydVar = (zzgyd) obj;
        zzhay zzhayVar = zzgydVar.zzc;
        if (zzhayVar == zzhay.zzc()) {
            zzhay zzf = zzhay.zzf();
            zzgydVar.zzc = zzf;
            return zzf;
        }
        return zzhayVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* synthetic */ Object zzd(Object obj) {
        return ((zzgyd) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* bridge */ /* synthetic */ Object zze(Object obj, Object obj2) {
        if (zzhay.zzc().equals(obj2)) {
            return obj;
        }
        if (zzhay.zzc().equals(obj)) {
            return zzhay.zze((zzhay) obj, (zzhay) obj2);
        }
        ((zzhay) obj).zzd((zzhay) obj2);
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzhax
    final /* synthetic */ Object zzf() {
        return zzhay.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzhax
    final /* synthetic */ Object zzg(Object obj) {
        ((zzhay) obj).zzh();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzhax
    final /* bridge */ /* synthetic */ void zzh(Object obj, int i, int i2) {
        ((zzhay) obj).zzj((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.zzhax
    final /* bridge */ /* synthetic */ void zzi(Object obj, int i, long j) {
        ((zzhay) obj).zzj((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzhax
    final /* bridge */ /* synthetic */ void zzj(Object obj, int i, Object obj2) {
        ((zzhay) obj).zzj((i << 3) | 3, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* bridge */ /* synthetic */ void zzk(Object obj, int i, zzgwv zzgwvVar) {
        ((zzhay) obj).zzj((i << 3) | 2, zzgwvVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* bridge */ /* synthetic */ void zzl(Object obj, int i, long j) {
        ((zzhay) obj).zzj(i << 3, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final void zzm(Object obj) {
        ((zzgyd) obj).zzc.zzh();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* synthetic */ void zzn(Object obj, Object obj2) {
        ((zzgyd) obj).zzc = (zzhay) obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* synthetic */ void zzo(Object obj, Object obj2) {
        ((zzgyd) obj).zzc = (zzhay) obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final boolean zzq(zzgzy zzgzyVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhax
    public final /* synthetic */ void zzr(Object obj, zzgxl zzgxlVar) throws IOException {
        ((zzhay) obj).zzk(zzgxlVar);
    }
}
