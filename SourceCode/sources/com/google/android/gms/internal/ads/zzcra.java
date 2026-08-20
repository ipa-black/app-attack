package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcra extends zzfav {
    private final zzfaj zza;
    private final zzcre zzb;
    private final zzcra zzc = this;
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
    public /* synthetic */ zzcra(zzcre zzcreVar, zzfaj zzfajVar, zzcqz zzcqzVar) {
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzhfc zzhfcVar3;
        this.zzb = zzcreVar;
        this.zza = zzfajVar;
        zzhfcVar = zzcreVar.zzH;
        this.zzd = zzheo.zzc(new zzfox(zzhfcVar));
        zzfar zzfarVar = new zzfar(zzfajVar);
        this.zze = zzfarVar;
        zzhfc zzc = zzheo.zzc(zzdyg.zza());
        this.zzf = zzc;
        zzhfc zzc2 = zzheo.zzc(zzdye.zza());
        this.zzg = zzc2;
        zzhfc zzc3 = zzheo.zzc(zzdyi.zza());
        this.zzh = zzc3;
        zzhfc zzc4 = zzheo.zzc(zzdyk.zza());
        this.zzi = zzc4;
        zzhes zzc5 = zzhet.zzc(4);
        zzc5.zzb(zzfnd.GMS_SIGNALS, zzc);
        zzc5.zzb(zzfnd.BUILD_URL, zzc2);
        zzc5.zzb(zzfnd.HTTP, zzc3);
        zzc5.zzb(zzfnd.PRE_PROCESS, zzc4);
        zzhet zzc6 = zzc5.zzc();
        this.zzj = zzc6;
        zzhfcVar2 = zzcreVar.zzh;
        zzhfc zzc7 = zzheo.zzc(new zzdyl(zzfarVar, zzhfcVar2, zzfme.zza(), zzc6));
        this.zzk = zzc7;
        zzhez zza = zzhfa.zza(0, 1);
        zza.zza(zzc7);
        zzhfa zzc8 = zza.zzc();
        this.zzl = zzc8;
        zzfnm zzfnmVar = new zzfnm(zzc8);
        this.zzm = zzfnmVar;
        zzfme zza2 = zzfme.zza();
        zzhfcVar3 = zzcreVar.zzn;
        this.zzn = zzheo.zzc(new zzfnl(zza2, zzhfcVar3, zzfnmVar));
    }

    @Override // com.google.android.gms.internal.ads.zzfav
    public final zzezp zza() {
        zzcpm zzcpmVar;
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzcpm zzcpmVar2;
        zzhfc zzhfcVar3;
        zzcpm zzcpmVar3;
        zzhfc zzhfcVar4;
        zzhfc zzhfcVar5;
        zzhfc zzhfcVar6;
        zzcpm zzcpmVar4;
        zzcpm zzcpmVar5;
        zzcpm zzcpmVar6;
        zzhfc zzhfcVar7;
        zzhfc zzhfcVar8;
        zzhfc zzhfcVar9;
        zzhfc zzhfcVar10;
        zzhfc zzhfcVar11;
        zzhfc zzhfcVar12;
        zzcpmVar = this.zzb.zza;
        Context zza = zzcpmVar.zza();
        zzhex.zzb(zza);
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        zzcgl zzcglVar = new zzcgl();
        zzgfc zzgfcVar2 = zzcib.zza;
        zzhex.zzb(zzgfcVar2);
        zzfbt zzfbtVar = new zzfbt(zzcglVar, zzgfcVar2, zzfak.zza(this.zza), null);
        zzexl zza2 = zzexn.zza();
        zzhfcVar = this.zzb.zzn;
        zzezm zza3 = zzfcp.zza(zzfbtVar, zza2, (ScheduledExecutorService) zzhfcVar.zzb(), 0);
        zzbzu zzbzuVar = new zzbzu();
        zzhfcVar2 = this.zzb.zzn;
        zzcpmVar2 = this.zzb.zza;
        Context zza4 = zzcpmVar2.zza();
        zzhex.zzb(zza4);
        zzfcd zzfcdVar = new zzfcd(zzbzuVar, (ScheduledExecutorService) zzhfcVar2.zzb(), zza4, null);
        zzhfcVar3 = this.zzb.zzn;
        zzezm zzb = zzfcp.zzb(zzfcdVar, (ScheduledExecutorService) zzhfcVar3.zzb());
        zzcgo zzcgoVar = new zzcgo();
        zzcpmVar3 = this.zzb.zza;
        Context zza5 = zzcpmVar3.zza();
        zzhex.zzb(zza5);
        zzhfcVar4 = this.zzb.zzn;
        zzgfc zzgfcVar3 = zzcib.zza;
        zzhex.zzb(zzgfcVar3);
        zzfab zza6 = zzfad.zza(zzcgoVar, zza5, (ScheduledExecutorService) zzhfcVar4.zzb(), zzgfcVar3, zzfal.zza(this.zza), zzfan.zza(this.zza), zzfao.zza(this.zza));
        zzhfcVar5 = this.zzb.zzn;
        zzezm zza7 = zzfcq.zza(zza6, (ScheduledExecutorService) zzhfcVar5.zzb());
        zzgfc zzgfcVar4 = zzcib.zza;
        zzhex.zzb(zzgfcVar4);
        zzfcy zzfcyVar = new zzfcy(zzgfcVar4);
        zzhfcVar6 = this.zzb.zzn;
        zzezm zzc = zzfcp.zzc(zzfcyVar, (ScheduledExecutorService) zzhfcVar6.zzb());
        zzfcn zzfcnVar = zzfcn.zza;
        zzcpmVar4 = this.zzb.zza;
        Context zza8 = zzcpmVar4.zza();
        zzhex.zzb(zza8);
        String zza9 = zzfak.zza(this.zza);
        zzgfc zzgfcVar5 = zzcib.zza;
        zzhex.zzb(zzgfcVar5);
        zzfax zzfaxVar = new zzfax(null, zza8, zza9, zzgfcVar5);
        zzbel zzbelVar = new zzbel();
        zzgfc zzgfcVar6 = zzcib.zza;
        zzhex.zzb(zzgfcVar6);
        zzcpmVar5 = this.zzb.zza;
        Context zza10 = zzcpmVar5.zza();
        zzhex.zzb(zza10);
        zzbiu zzbiuVar = new zzbiu();
        zzgfc zzgfcVar7 = zzcib.zza;
        zzhex.zzb(zzgfcVar7);
        zzcgo zzcgoVar2 = new zzcgo();
        zzgfc zzgfcVar8 = zzcib.zza;
        zzhex.zzb(zzgfcVar8);
        zzcgo zzcgoVar3 = new zzcgo();
        int zza11 = zzfal.zza(this.zza);
        zzcpmVar6 = this.zzb.zza;
        Context zza12 = zzcpmVar6.zza();
        zzhex.zzb(zza12);
        zzhfcVar7 = this.zzb.zzaf;
        zzcgx zzcgxVar = (zzcgx) zzhfcVar7.zzb();
        zzhfcVar8 = this.zzb.zzn;
        zzgfc zzgfcVar9 = zzcib.zza;
        zzhex.zzb(zzgfcVar9);
        zzhfcVar9 = this.zzb.zzaH;
        String zza13 = zzfak.zza(this.zza);
        zzbdz zzbdzVar = new zzbdz();
        zzhfcVar10 = this.zzb.zzaf;
        zzhfcVar11 = this.zzb.zzn;
        zzgfc zzgfcVar10 = zzcib.zza;
        zzhex.zzb(zzgfcVar10);
        zzgaz zzo = zzgaz.zzo(zza3, zzb, zza7, zzc, zzfcnVar, zzfaxVar, new zzfbm(zzbelVar, zzgfcVar6, zza10, null), new zzfbx(zzbiuVar, zzgfcVar7, zzfam.zza(this.zza), null), new zzfah(zzcgoVar2, zzgfcVar8, zzfap.zza(this.zza), zzfaq.zza(this.zza), zzfal.zza(this.zza), null), new zzfbi(zzcgoVar3, zza11, zza12, zzcgxVar, (ScheduledExecutorService) zzhfcVar8.zzb(), zzgfcVar9, zzfak.zza(this.zza), null), (zzezm) zzhfcVar9.zzb(), zzfbe.zza(zza13, zzbdzVar, (zzcgx) zzhfcVar10.zzb(), (ScheduledExecutorService) zzhfcVar11.zzb(), zzgfcVar10));
        zzfow zzfowVar = (zzfow) this.zzd.zzb();
        zzhfcVar12 = this.zzb.zzY;
        return new zzezp(zza, zzgfcVar, zzo, zzfowVar, (zzdzh) zzhfcVar12.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzfav
    public final zzfnj zzb() {
        return (zzfnj) this.zzn.zzb();
    }
}
