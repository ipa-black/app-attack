package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfje {
    private com.google.android.gms.ads.internal.client.zzl zza;
    private com.google.android.gms.ads.internal.client.zzq zzb;
    private String zzc;
    private com.google.android.gms.ads.internal.client.zzfl zzd;
    private boolean zze;
    private ArrayList zzf;
    private ArrayList zzg;
    private zzblz zzh;
    private com.google.android.gms.ads.internal.client.zzw zzi;
    private AdManagerAdViewOptions zzj;
    private PublisherAdViewOptions zzk;
    private com.google.android.gms.ads.internal.client.zzcb zzl;
    private zzbsl zzn;
    private zzesb zzq;
    private com.google.android.gms.ads.internal.client.zzcf zzs;
    private int zzm = 1;
    private final zzfir zzo = new zzfir();
    private boolean zzp = false;
    private boolean zzr = false;

    public static /* bridge */ /* synthetic */ String zzH(zzfje zzfjeVar) {
        return zzfjeVar.zzc;
    }

    public static /* bridge */ /* synthetic */ ArrayList zzJ(zzfje zzfjeVar) {
        return zzfjeVar.zzf;
    }

    public static /* bridge */ /* synthetic */ ArrayList zzK(zzfje zzfjeVar) {
        return zzfjeVar.zzg;
    }

    public static /* bridge */ /* synthetic */ boolean zzL(zzfje zzfjeVar) {
        return zzfjeVar.zzp;
    }

    public static /* bridge */ /* synthetic */ boolean zzM(zzfje zzfjeVar) {
        return zzfjeVar.zzr;
    }

    public static /* bridge */ /* synthetic */ boolean zzN(zzfje zzfjeVar) {
        return zzfjeVar.zze;
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzcf zzP(zzfje zzfjeVar) {
        return zzfjeVar.zzs;
    }

    public static /* bridge */ /* synthetic */ int zza(zzfje zzfjeVar) {
        return zzfjeVar.zzm;
    }

    public static /* bridge */ /* synthetic */ AdManagerAdViewOptions zzb(zzfje zzfjeVar) {
        return zzfjeVar.zzj;
    }

    public static /* bridge */ /* synthetic */ PublisherAdViewOptions zzc(zzfje zzfjeVar) {
        return zzfjeVar.zzk;
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzl zzd(zzfje zzfjeVar) {
        return zzfjeVar.zza;
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzq zzf(zzfje zzfjeVar) {
        return zzfjeVar.zzb;
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzw zzh(zzfje zzfjeVar) {
        return zzfjeVar.zzi;
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzcb zzi(zzfje zzfjeVar) {
        return zzfjeVar.zzl;
    }

    public static /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzfl zzj(zzfje zzfjeVar) {
        return zzfjeVar.zzd;
    }

    public static /* bridge */ /* synthetic */ zzblz zzk(zzfje zzfjeVar) {
        return zzfjeVar.zzh;
    }

    public static /* bridge */ /* synthetic */ zzbsl zzl(zzfje zzfjeVar) {
        return zzfjeVar.zzn;
    }

    public static /* bridge */ /* synthetic */ zzesb zzm(zzfje zzfjeVar) {
        return zzfjeVar.zzq;
    }

    public static /* bridge */ /* synthetic */ zzfir zzn(zzfje zzfjeVar) {
        return zzfjeVar.zzo;
    }

    public final zzfje zzA(zzblz zzblzVar) {
        this.zzh = zzblzVar;
        return this;
    }

    public final zzfje zzB(ArrayList arrayList) {
        this.zzf = arrayList;
        return this;
    }

    public final zzfje zzC(ArrayList arrayList) {
        this.zzg = arrayList;
        return this;
    }

    public final zzfje zzD(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzk = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.zze = publisherAdViewOptions.zzc();
            this.zzl = publisherAdViewOptions.zza();
        }
        return this;
    }

    public final zzfje zzE(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        this.zza = zzlVar;
        return this;
    }

    public final zzfje zzF(com.google.android.gms.ads.internal.client.zzfl zzflVar) {
        this.zzd = zzflVar;
        return this;
    }

    public final zzfjg zzG() {
        Preconditions.checkNotNull(this.zzc, "ad unit must not be null");
        Preconditions.checkNotNull(this.zzb, "ad size must not be null");
        Preconditions.checkNotNull(this.zza, "ad request must not be null");
        return new zzfjg(this, null);
    }

    public final String zzI() {
        return this.zzc;
    }

    public final boolean zzO() {
        return this.zzp;
    }

    public final zzfje zzQ(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
        this.zzs = zzcfVar;
        return this;
    }

    public final com.google.android.gms.ads.internal.client.zzl zze() {
        return this.zza;
    }

    public final com.google.android.gms.ads.internal.client.zzq zzg() {
        return this.zzb;
    }

    public final zzfir zzo() {
        return this.zzo;
    }

    public final zzfje zzp(zzfjg zzfjgVar) {
        this.zzo.zza(zzfjgVar.zzo.zza);
        this.zza = zzfjgVar.zzd;
        this.zzb = zzfjgVar.zze;
        this.zzs = zzfjgVar.zzr;
        this.zzc = zzfjgVar.zzf;
        this.zzd = zzfjgVar.zza;
        this.zzf = zzfjgVar.zzg;
        this.zzg = zzfjgVar.zzh;
        this.zzh = zzfjgVar.zzi;
        this.zzi = zzfjgVar.zzj;
        zzq(zzfjgVar.zzl);
        zzD(zzfjgVar.zzm);
        this.zzp = zzfjgVar.zzp;
        this.zzq = zzfjgVar.zzc;
        this.zzr = zzfjgVar.zzq;
        return this;
    }

    public final zzfje zzq(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zzj = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.zze = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }

    public final zzfje zzr(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        this.zzb = zzqVar;
        return this;
    }

    public final zzfje zzs(String str) {
        this.zzc = str;
        return this;
    }

    public final zzfje zzt(com.google.android.gms.ads.internal.client.zzw zzwVar) {
        this.zzi = zzwVar;
        return this;
    }

    public final zzfje zzu(zzesb zzesbVar) {
        this.zzq = zzesbVar;
        return this;
    }

    public final zzfje zzv(zzbsl zzbslVar) {
        this.zzn = zzbslVar;
        this.zzd = new com.google.android.gms.ads.internal.client.zzfl(false, true, false);
        return this;
    }

    public final zzfje zzw(boolean z) {
        this.zzp = z;
        return this;
    }

    public final zzfje zzx(boolean z) {
        this.zzr = true;
        return this;
    }

    public final zzfje zzy(boolean z) {
        this.zze = z;
        return this;
    }

    public final zzfje zzz(int i) {
        this.zzm = i;
        return this;
    }
}
