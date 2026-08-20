package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcqw extends zzfat {
    private final zzfbz zza;
    private final zzcre zzb;
    private final zzcqw zzc = this;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;
    private final zzhfc zzi;
    private final zzhfc zzj;
    private final zzhfc zzk;
    private final zzhfc zzl;
    private final zzhfc zzm;
    private final zzhfc zzn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcqw(zzcre zzcreVar, zzfbz zzfbzVar, zzcqv zzcqvVar) {
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzhfc zzhfcVar3;
        this.zzb = zzcreVar;
        this.zza = zzfbzVar;
        zzfcb zzfcbVar = new zzfcb(zzfbzVar);
        this.zzd = zzfcbVar;
        zzhfc zzc = zzheo.zzc(zzdyg.zza());
        this.zze = zzc;
        zzhfc zzc2 = zzheo.zzc(zzdye.zza());
        this.zzf = zzc2;
        zzhfc zzc3 = zzheo.zzc(zzdyi.zza());
        this.zzg = zzc3;
        zzhfc zzc4 = zzheo.zzc(zzdyk.zza());
        this.zzh = zzc4;
        zzhes zzc5 = zzhet.zzc(4);
        zzc5.zzb(zzfnd.GMS_SIGNALS, zzc);
        zzc5.zzb(zzfnd.BUILD_URL, zzc2);
        zzc5.zzb(zzfnd.HTTP, zzc3);
        zzc5.zzb(zzfnd.PRE_PROCESS, zzc4);
        zzhet zzc6 = zzc5.zzc();
        this.zzi = zzc6;
        zzhfcVar = zzcreVar.zzh;
        zzhfc zzc7 = zzheo.zzc(new zzdyl(zzfcbVar, zzhfcVar, zzfme.zza(), zzc6));
        this.zzj = zzc7;
        zzhez zza = zzhfa.zza(0, 1);
        zza.zza(zzc7);
        zzhfa zzc8 = zza.zzc();
        this.zzk = zzc8;
        zzfnm zzfnmVar = new zzfnm(zzc8);
        this.zzl = zzfnmVar;
        zzfme zza2 = zzfme.zza();
        zzhfcVar2 = zzcreVar.zzn;
        this.zzm = zzheo.zzc(new zzfnl(zza2, zzhfcVar2, zzfnmVar));
        zzhfcVar3 = zzcreVar.zzH;
        this.zzn = zzheo.zzc(new zzfox(zzhfcVar3));
    }

    @Override // com.google.android.gms.internal.ads.zzfat
    public final zzezp zza() {
        zzcpm zzcpmVar;
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzcpmVar = this.zzb.zza;
        Context zza = zzcpmVar.zza();
        zzhex.zzb(zza);
        zzcgl zzcglVar = new zzcgl();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        zzfbt zzfbtVar = new zzfbt(zzcglVar, zzgfcVar, zzfca.zza(this.zza), null);
        zzgfc zzgfcVar2 = zzcib.zza;
        zzhex.zzb(zzgfcVar2);
        zzhfcVar = this.zzb.zzn;
        zzfow zzfowVar = (zzfow) this.zzn.zzb();
        zzhfcVar2 = this.zzb.zzY;
        zzdzh zzdzhVar = (zzdzh) zzhfcVar2.zzb();
        HashSet hashSet = new HashSet();
        hashSet.add(new zzext(zzfbtVar, 0L, (ScheduledExecutorService) zzhfcVar.zzb()));
        return new zzezp(zza, zzgfcVar2, hashSet, zzfowVar, zzdzhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfat
    public final zzfnj zzb() {
        return (zzfnj) this.zzm.zzb();
    }
}
