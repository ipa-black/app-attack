package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Looper;
import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zztp extends zzri implements zztg {
    private final zzbg zza;
    private final zzay zzb;
    private final zzew zzc;
    private final zzpo zzd;
    private final int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private boolean zzi;
    private zzfz zzj;
    private final zztm zzk;
    private final zzwm zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zztp(zzbg zzbgVar, zzew zzewVar, zztm zztmVar, zzpo zzpoVar, zzwm zzwmVar, int i, zzto zztoVar, byte[] bArr) {
        zzay zzayVar = zzbgVar.zzd;
        zzayVar.getClass();
        this.zzb = zzayVar;
        this.zza = zzbgVar;
        this.zzc = zzewVar;
        this.zzk = zztmVar;
        this.zzd = zzpoVar;
        this.zzl = zzwmVar;
        this.zze = i;
        this.zzf = true;
        this.zzg = C.TIME_UNSET;
    }

    private final void zzv() {
        long j = this.zzg;
        boolean z = this.zzh;
        boolean z2 = this.zzi;
        zzbg zzbgVar = this.zza;
        zzuc zzucVar = new zzuc(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j, j, 0L, 0L, z, false, false, null, zzbgVar, z2 ? zzbgVar.zzf : null);
        zzo(this.zzf ? new zztl(this, zzucVar) : zzucVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzF(zzsf zzsfVar) {
        ((zztk) zzsfVar).zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final zzsf zzH(zzsh zzshVar, zzwi zzwiVar, long j) {
        zzex zza = this.zzc.zza();
        zzfz zzfzVar = this.zzj;
        if (zzfzVar != null) {
            zza.zzf(zzfzVar);
        }
        Uri uri = this.zzb.zza;
        zztm zztmVar = this.zzk;
        zzb();
        zzrk zzrkVar = new zzrk(zztmVar.zza);
        zzpo zzpoVar = this.zzd;
        zzpi zzc = zzc(zzshVar);
        zzwm zzwmVar = this.zzl;
        zzsq zze = zze(zzshVar);
        String str = this.zzb.zzf;
        return new zztk(uri, zza, zzrkVar, zzpoVar, zzc, zzwmVar, zze, this, zzwiVar, null, this.zze, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final zzbg zzI() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    public final void zza(long j, boolean z, boolean z2) {
        if (j == C.TIME_UNSET) {
            j = this.zzg;
        }
        if (!this.zzf && this.zzg == j && this.zzh == z && this.zzi == z2) {
            return;
        }
        this.zzg = j;
        this.zzh = z;
        this.zzi = z2;
        this.zzf = false;
        zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzri
    protected final void zzn(zzfz zzfzVar) {
        this.zzj = zzfzVar;
        Looper.myLooper().getClass();
        zzb();
        zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzri
    protected final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzy() {
    }
}
