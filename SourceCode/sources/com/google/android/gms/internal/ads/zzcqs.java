package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcqs extends zzfae {
    private final zzhfc zzA;
    private final zzhfc zzB;
    private final zzfcg zza;
    private final zzcre zzb;
    private final zzcqs zzc = this;
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
    private final zzhfc zzo;
    private final zzhfc zzp;
    private final zzhfc zzq;
    private final zzhfc zzr;
    private final zzhfc zzs;
    private final zzhfc zzt;
    private final zzhfc zzu;
    private final zzhfc zzv;
    private final zzhfc zzw;
    private final zzhfc zzx;
    private final zzhfc zzy;
    private final zzhfc zzz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcqs(zzcre zzcreVar, zzfcg zzfcgVar, zzcqr zzcqrVar) {
        zzhfc zzhfcVar;
        zzcux zzcuxVar;
        zzhfc zzhfcVar2;
        zzhfc zzhfcVar3;
        zzcqe zzcqeVar;
        zzhfc zzhfcVar4;
        zzcux zzcuxVar2;
        zzhfc zzhfcVar5;
        zzhfc zzhfcVar6;
        zzhfc zzhfcVar7;
        zzcur zzcurVar;
        zzhfc zzhfcVar8;
        zzcut zzcutVar;
        zzcuv zzcuvVar;
        zzhfc zzhfcVar9;
        zzhfc zzhfcVar10;
        zzhfc zzhfcVar11;
        zzcuz zzcuzVar;
        zzhfc zzhfcVar12;
        zzcup zzcupVar;
        zzhfc zzhfcVar13;
        zzhfc zzhfcVar14;
        zzhfc zzhfcVar15;
        zzhfc zzhfcVar16;
        this.zzb = zzcreVar;
        this.zza = zzfcgVar;
        zzhfcVar = zzcreVar.zzH;
        this.zzd = zzheo.zzc(new zzfox(zzhfcVar));
        zzfci zzfciVar = new zzfci(zzfcgVar);
        this.zze = zzfciVar;
        zzfcj zzfcjVar = new zzfcj(zzfcgVar);
        this.zzf = zzfcjVar;
        zzfcl zzfclVar = new zzfcl(zzfcgVar);
        this.zzg = zzfclVar;
        zzcuxVar = zzcuw.zza;
        zzhfcVar2 = zzcreVar.zzh;
        zzhfcVar3 = zzcreVar.zzn;
        this.zzh = new zzfad(zzcuxVar, zzhfcVar2, zzhfcVar3, zzfme.zza(), zzfciVar, zzfcjVar, zzfclVar);
        zzfch zzfchVar = new zzfch(zzfcgVar);
        this.zzi = zzfchVar;
        zzcqeVar = zzcqd.zza;
        zzhfcVar4 = zzcreVar.zzh;
        this.zzj = new zzfaz(zzcqeVar, zzhfcVar4, zzfchVar, zzfme.zza());
        zzcuxVar2 = zzcuw.zza;
        zzhfcVar5 = zzcreVar.zzh;
        zzhfcVar6 = zzcreVar.zzaf;
        zzhfcVar7 = zzcreVar.zzn;
        this.zzk = new zzfbk(zzcuxVar2, zzfciVar, zzhfcVar5, zzhfcVar6, zzhfcVar7, zzfme.zza(), zzfchVar);
        zzcurVar = zzcuq.zza;
        zzfme zza = zzfme.zza();
        zzhfcVar8 = zzcreVar.zzh;
        this.zzl = new zzfbo(zzcurVar, zza, zzhfcVar8);
        zzcutVar = zzcus.zza;
        this.zzm = new zzfbv(zzcutVar, zzfme.zza(), zzfchVar);
        zzcuvVar = zzcuu.zza;
        zzhfcVar9 = zzcreVar.zzn;
        zzhfcVar10 = zzcreVar.zzh;
        this.zzn = new zzfcf(zzcuvVar, zzhfcVar9, zzhfcVar10);
        this.zzo = new zzfda(zzfme.zza());
        zzfck zzfckVar = new zzfck(zzfcgVar);
        this.zzp = zzfckVar;
        zzhfcVar11 = zzcreVar.zzaf;
        zzcuzVar = zzcuy.zza;
        zzfme zza2 = zzfme.zza();
        zzhfcVar12 = zzcreVar.zzn;
        this.zzq = new zzfcw(zzhfcVar11, zzfckVar, zzfclVar, zzcuzVar, zza2, zzfchVar, zzhfcVar12);
        zzcupVar = zzcuo.zza;
        zzhfcVar13 = zzcreVar.zzaf;
        zzhfcVar14 = zzcreVar.zzn;
        this.zzr = new zzfbe(zzfchVar, zzcupVar, zzhfcVar13, zzhfcVar14, zzfme.zza());
        zzfcm zzfcmVar = new zzfcm(zzfcgVar);
        this.zzs = zzfcmVar;
        zzhfc zzc = zzheo.zzc(zzdyg.zza());
        this.zzt = zzc;
        zzhfc zzc2 = zzheo.zzc(zzdye.zza());
        this.zzu = zzc2;
        zzhfc zzc3 = zzheo.zzc(zzdyi.zza());
        this.zzv = zzc3;
        zzhfc zzc4 = zzheo.zzc(zzdyk.zza());
        this.zzw = zzc4;
        zzhes zzc5 = zzhet.zzc(4);
        zzc5.zzb(zzfnd.GMS_SIGNALS, zzc);
        zzc5.zzb(zzfnd.BUILD_URL, zzc2);
        zzc5.zzb(zzfnd.HTTP, zzc3);
        zzc5.zzb(zzfnd.PRE_PROCESS, zzc4);
        zzhet zzc6 = zzc5.zzc();
        this.zzx = zzc6;
        zzhfcVar15 = zzcreVar.zzh;
        zzhfc zzc7 = zzheo.zzc(new zzdyl(zzfcmVar, zzhfcVar15, zzfme.zza(), zzc6));
        this.zzy = zzc7;
        zzhez zza3 = zzhfa.zza(0, 1);
        zza3.zza(zzc7);
        zzhfa zzc8 = zza3.zzc();
        this.zzz = zzc8;
        zzfnm zzfnmVar = new zzfnm(zzc8);
        this.zzA = zzfnmVar;
        zzfme zza4 = zzfme.zza();
        zzhfcVar16 = zzcreVar.zzn;
        this.zzB = zzheo.zzc(new zzfnl(zza4, zzhfcVar16, zzfnmVar));
    }

    private final zzfah zze() {
        zzcgo zzcgoVar = new zzcgo();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        String zzd = this.zza.zzd();
        zzhex.zzb(zzd);
        return new zzfah(zzcgoVar, zzgfcVar, zzd, this.zza.zzb(), this.zza.zza(), null);
    }

    private final zzfbx zzf() {
        zzbiu zzbiuVar = new zzbiu();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        List zzf = this.zza.zzf();
        zzhex.zzb(zzf);
        return new zzfbx(zzbiuVar, zzgfcVar, zzf, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfae
    public final zzezp zza() {
        zzcpm zzcpmVar;
        zzhfc zzhfcVar;
        zzhfc zzhfcVar2;
        zzcpmVar = this.zzb.zza;
        Context zza = zzcpmVar.zza();
        zzhex.zzb(zza);
        zzcgl zzcglVar = new zzcgl();
        zzcgm zzcgmVar = new zzcgm();
        zzhfcVar = this.zzb.zzaH;
        Object zzb = zzhfcVar.zzb();
        zzfah zze = zze();
        zzfbx zzf = zzf();
        zzhej zza2 = zzheo.zza(this.zzh);
        zzhej zza3 = zzheo.zza(this.zzj);
        zzhej zza4 = zzheo.zza(this.zzk);
        zzhej zza5 = zzheo.zza(this.zzl);
        zzhej zza6 = zzheo.zza(this.zzm);
        zzhej zza7 = zzheo.zza(this.zzn);
        zzhej zza8 = zzheo.zza(this.zzo);
        zzhej zza9 = zzheo.zza(this.zzq);
        zzhej zza10 = zzheo.zza(this.zzr);
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        zzfow zzfowVar = (zzfow) this.zzd.zzb();
        zzhfcVar2 = this.zzb.zzY;
        return zzfcr.zza(zza, zzcglVar, zzcgmVar, zzb, zze, zzf, zza2, zza3, zza4, zza5, zza6, zza7, zza8, zza9, zza10, zzgfcVar, zzfowVar, (zzdzh) zzhfcVar2.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzfae
    public final zzezp zzb() {
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
        String zzc = this.zza.zzc();
        zzhex.zzb(zzc);
        zzfbt zzfbtVar = new zzfbt(zzcglVar, zzgfcVar2, zzc, null);
        zzexl zza2 = zzexn.zza();
        zzhfcVar = this.zzb.zzn;
        zzezm zza3 = zzfcp.zza(zzfbtVar, zza2, (ScheduledExecutorService) zzhfcVar.zzb(), -1);
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
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zzhfcVar4.zzb();
        zzgfc zzgfcVar3 = zzcib.zza;
        zzhex.zzb(zzgfcVar3);
        zzfcg zzfcgVar = this.zza;
        zzfab zza6 = zzfad.zza(zzcgoVar, zza5, scheduledExecutorService, zzgfcVar3, zzfcgVar.zza(), zzfcj.zzc(zzfcgVar), zzfcl.zzc(this.zza));
        zzhfcVar5 = this.zzb.zzn;
        zzezm zza7 = zzfcq.zza(zza6, (ScheduledExecutorService) zzhfcVar5.zzb());
        zzgfc zzgfcVar4 = zzcib.zza;
        zzhex.zzb(zzgfcVar4);
        zzfcy zzfcyVar = new zzfcy(zzgfcVar4);
        zzhfcVar6 = this.zzb.zzn;
        zzezm zzc2 = zzfcp.zzc(zzfcyVar, (ScheduledExecutorService) zzhfcVar6.zzb());
        zzfcn zzfcnVar = zzfcn.zza;
        zzcpmVar4 = this.zzb.zza;
        Context zza8 = zzcpmVar4.zza();
        zzhex.zzb(zza8);
        String zzc3 = this.zza.zzc();
        zzhex.zzb(zzc3);
        zzgfc zzgfcVar5 = zzcib.zza;
        zzhex.zzb(zzgfcVar5);
        zzfax zzfaxVar = new zzfax(null, zza8, zzc3, zzgfcVar5);
        zzbel zzbelVar = new zzbel();
        zzgfc zzgfcVar6 = zzcib.zza;
        zzhex.zzb(zzgfcVar6);
        zzcpmVar5 = this.zzb.zza;
        Context zza9 = zzcpmVar5.zza();
        zzhex.zzb(zza9);
        zzcgo zzcgoVar2 = new zzcgo();
        int zza10 = this.zza.zza();
        zzcpmVar6 = this.zzb.zza;
        Context zza11 = zzcpmVar6.zza();
        zzhex.zzb(zza11);
        zzhfcVar7 = this.zzb.zzaf;
        zzcgx zzcgxVar = (zzcgx) zzhfcVar7.zzb();
        zzhfcVar8 = this.zzb.zzn;
        ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) zzhfcVar8.zzb();
        zzgfc zzgfcVar7 = zzcib.zza;
        zzhex.zzb(zzgfcVar7);
        String zzc4 = this.zza.zzc();
        zzhex.zzb(zzc4);
        zzhfcVar9 = this.zzb.zzaH;
        String zzc5 = this.zza.zzc();
        zzhex.zzb(zzc5);
        zzbdz zzbdzVar = new zzbdz();
        zzhfcVar10 = this.zzb.zzaf;
        zzhfcVar11 = this.zzb.zzn;
        zzgfc zzgfcVar8 = zzcib.zza;
        zzhex.zzb(zzgfcVar8);
        zzgaz zzo = zzgaz.zzo(zza3, zzb, zza7, zzc2, zzfcnVar, zzfaxVar, new zzfbm(zzbelVar, zzgfcVar6, zza9, null), zzf(), zze(), new zzfbi(zzcgoVar2, zza10, zza11, zzcgxVar, scheduledExecutorService2, zzgfcVar7, zzc4, null), (zzezm) zzhfcVar9.zzb(), zzfbe.zza(zzc5, zzbdzVar, (zzcgx) zzhfcVar10.zzb(), (ScheduledExecutorService) zzhfcVar11.zzb(), zzgfcVar8));
        zzfow zzfowVar = (zzfow) this.zzd.zzb();
        zzhfcVar12 = this.zzb.zzY;
        return new zzezp(zza, zzgfcVar, zzo, zzfowVar, (zzdzh) zzhfcVar12.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzfae
    public final zzfnj zzc() {
        return (zzfnj) this.zzB.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfae
    public final zzfow zzd() {
        return (zzfow) this.zzd.zzb();
    }
}
