package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfjg {
    public final com.google.android.gms.ads.internal.client.zzfl zza;
    public final zzbsl zzb;
    public final zzesb zzc;
    public final com.google.android.gms.ads.internal.client.zzl zzd;
    public final com.google.android.gms.ads.internal.client.zzq zze;
    public final String zzf;
    public final ArrayList zzg;
    public final ArrayList zzh;
    public final zzblz zzi;
    public final com.google.android.gms.ads.internal.client.zzw zzj;
    public final int zzk;
    public final AdManagerAdViewOptions zzl;
    public final PublisherAdViewOptions zzm;
    public final com.google.android.gms.ads.internal.client.zzcb zzn;
    public final zzfit zzo;
    public final boolean zzp;
    public final boolean zzq;
    public final com.google.android.gms.ads.internal.client.zzcf zzr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfjg(zzfje zzfjeVar, zzfjf zzfjfVar) {
        com.google.android.gms.ads.internal.client.zzfl zzflVar;
        zzblz zzblzVar;
        this.zze = zzfje.zzf(zzfjeVar);
        this.zzf = zzfje.zzH(zzfjeVar);
        this.zzr = zzfje.zzP(zzfjeVar);
        int i = zzfje.zzd(zzfjeVar).zza;
        long j = zzfje.zzd(zzfjeVar).zzb;
        Bundle bundle = zzfje.zzd(zzfjeVar).zzc;
        int i2 = zzfje.zzd(zzfjeVar).zzd;
        List list = zzfje.zzd(zzfjeVar).zze;
        boolean z = zzfje.zzd(zzfjeVar).zzf;
        int i3 = zzfje.zzd(zzfjeVar).zzg;
        boolean z2 = true;
        if (!zzfje.zzd(zzfjeVar).zzh && !zzfje.zzN(zzfjeVar)) {
            z2 = false;
        }
        this.zzd = new com.google.android.gms.ads.internal.client.zzl(i, j, bundle, i2, list, z, i3, z2, zzfje.zzd(zzfjeVar).zzi, zzfje.zzd(zzfjeVar).zzj, zzfje.zzd(zzfjeVar).zzk, zzfje.zzd(zzfjeVar).zzl, zzfje.zzd(zzfjeVar).zzm, zzfje.zzd(zzfjeVar).zzn, zzfje.zzd(zzfjeVar).zzo, zzfje.zzd(zzfjeVar).zzp, zzfje.zzd(zzfjeVar).zzq, zzfje.zzd(zzfjeVar).zzr, zzfje.zzd(zzfjeVar).zzs, zzfje.zzd(zzfjeVar).zzt, zzfje.zzd(zzfjeVar).zzu, zzfje.zzd(zzfjeVar).zzv, com.google.android.gms.ads.internal.util.zzs.zza(zzfje.zzd(zzfjeVar).zzw), zzfje.zzd(zzfjeVar).zzx);
        if (zzfje.zzj(zzfjeVar) != null) {
            zzflVar = zzfje.zzj(zzfjeVar);
        } else {
            zzflVar = zzfje.zzk(zzfjeVar) != null ? zzfje.zzk(zzfjeVar).zzf : null;
        }
        this.zza = zzflVar;
        this.zzg = zzfje.zzJ(zzfjeVar);
        this.zzh = zzfje.zzK(zzfjeVar);
        if (zzfje.zzJ(zzfjeVar) == null) {
            zzblzVar = null;
        } else {
            zzblzVar = zzfje.zzk(zzfjeVar) == null ? new zzblz(new NativeAdOptions.Builder().build()) : zzfje.zzk(zzfjeVar);
        }
        this.zzi = zzblzVar;
        this.zzj = zzfje.zzh(zzfjeVar);
        this.zzk = zzfje.zza(zzfjeVar);
        this.zzl = zzfje.zzb(zzfjeVar);
        this.zzm = zzfje.zzc(zzfjeVar);
        this.zzn = zzfje.zzi(zzfjeVar);
        this.zzb = zzfje.zzl(zzfjeVar);
        this.zzo = new zzfit(zzfje.zzn(zzfjeVar), null);
        this.zzp = zzfje.zzL(zzfjeVar);
        this.zzc = zzfje.zzm(zzfjeVar);
        this.zzq = zzfje.zzM(zzfjeVar);
    }

    public final zzboc zza() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzm;
        if (publisherAdViewOptions == null && this.zzl == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.zzb() : this.zzl.zza();
    }

    public final boolean zzb() {
        return this.zzf.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcH));
    }
}
