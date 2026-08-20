package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzsz extends zzrq {
    private static final zzbg zza;
    private final zzsj[] zzb;
    private final zzcn[] zzc;
    private final ArrayList zzd;
    private final Map zze;
    private final zzgbq zzf;
    private int zzg;
    private long[][] zzh;
    private zzsy zzi;
    private final zzrs zzj;

    static {
        zzaj zzajVar = new zzaj();
        zzajVar.zza("MergingMediaSource");
        zza = zzajVar.zzc();
    }

    public zzsz(boolean z, boolean z2, zzsj... zzsjVarArr) {
        zzrs zzrsVar = new zzrs();
        this.zzb = zzsjVarArr;
        this.zzj = zzrsVar;
        this.zzd = new ArrayList(Arrays.asList(zzsjVarArr));
        this.zzg = -1;
        this.zzc = new zzcn[zzsjVarArr.length];
        this.zzh = new long[0];
        this.zze = new HashMap();
        this.zzf = zzgbx.zzb(8).zzb(2).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzF(zzsf zzsfVar) {
        zzsx zzsxVar = (zzsx) zzsfVar;
        int i = 0;
        while (true) {
            zzsj[] zzsjVarArr = this.zzb;
            if (i >= zzsjVarArr.length) {
                return;
            }
            zzsjVarArr[i].zzF(zzsxVar.zzn(i));
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final zzsf zzH(zzsh zzshVar, zzwi zzwiVar, long j) {
        int length = this.zzb.length;
        zzsf[] zzsfVarArr = new zzsf[length];
        int zza2 = this.zzc[0].zza(zzshVar.zza);
        for (int i = 0; i < length; i++) {
            zzsfVarArr[i] = this.zzb[i].zzH(zzshVar.zzc(this.zzc[i].zzf(zza2)), zzwiVar, j - this.zzh[zza2][i]);
        }
        return new zzsx(this.zzj, this.zzh[zza2], zzsfVarArr, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final zzbg zzI() {
        zzsj[] zzsjVarArr = this.zzb;
        return zzsjVarArr.length > 0 ? zzsjVarArr[0].zzI() : zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzrq, com.google.android.gms.internal.ads.zzri
    public final void zzn(zzfz zzfzVar) {
        super.zzn(zzfzVar);
        for (int i = 0; i < this.zzb.length; i++) {
            zzA(Integer.valueOf(i), this.zzb[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzrq, com.google.android.gms.internal.ads.zzri
    public final void zzq() {
        super.zzq();
        Arrays.fill(this.zzc, (Object) null);
        this.zzg = -1;
        this.zzi = null;
        this.zzd.clear();
        Collections.addAll(this.zzd, this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzrq
    public final /* bridge */ /* synthetic */ zzsh zzx(Object obj, zzsh zzshVar) {
        if (((Integer) obj).intValue() == 0) {
            return zzshVar;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzrq, com.google.android.gms.internal.ads.zzsj
    public final void zzy() throws IOException {
        zzsy zzsyVar = this.zzi;
        if (zzsyVar != null) {
            throw zzsyVar;
        }
        super.zzy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzrq
    public final /* bridge */ /* synthetic */ void zzz(Object obj, zzsj zzsjVar, zzcn zzcnVar) {
        int i;
        if (this.zzi != null) {
            return;
        }
        if (this.zzg == -1) {
            i = zzcnVar.zzb();
            this.zzg = i;
        } else {
            int zzb = zzcnVar.zzb();
            int i2 = this.zzg;
            if (zzb != i2) {
                this.zzi = new zzsy(0);
                return;
            }
            i = i2;
        }
        if (this.zzh.length == 0) {
            this.zzh = (long[][]) Array.newInstance(Long.TYPE, i, this.zzc.length);
        }
        this.zzd.remove(zzsjVar);
        this.zzc[((Integer) obj).intValue()] = zzcnVar;
        if (this.zzd.isEmpty()) {
            zzo(this.zzc[0]);
        }
    }
}
