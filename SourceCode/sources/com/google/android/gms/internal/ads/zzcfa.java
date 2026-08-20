package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcfa extends zzcfu {
    private final Clock zzb;
    private final zzcfa zzc = this;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;
    private final zzhfc zzh;
    private final zzhfc zzi;
    private final zzhfc zzj;
    private final zzhfc zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcfa(Context context, Clock clock, com.google.android.gms.ads.internal.util.zzg zzgVar, zzcft zzcftVar, zzcez zzcezVar) {
        this.zzb = clock;
        zzhep zza = zzheq.zza(context);
        this.zzd = zza;
        zzhep zza2 = zzheq.zza(zzgVar);
        this.zze = zza2;
        zzhep zza3 = zzheq.zza(zzcftVar);
        this.zzf = zza3;
        this.zzg = zzheo.zzc(new zzces(zza, zza2, zza3));
        zzhep zza4 = zzheq.zza(clock);
        this.zzh = zza4;
        zzhfc zzc = zzheo.zzc(new zzceu(zza4, zza2, zza3));
        this.zzi = zzc;
        zzcew zzcewVar = new zzcew(zza4, zzc);
        this.zzj = zzcewVar;
        this.zzk = zzheo.zzc(new zzcfz(zza, zzcewVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcfu
    final zzcer zza() {
        return (zzcer) this.zzg.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzcfu
    public final zzcev zzb() {
        return new zzcev(this.zzb, (zzcet) this.zzi.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcfu
    final zzcfy zzc() {
        return (zzcfy) this.zzk.zzb();
    }
}
