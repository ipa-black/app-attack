package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzenb implements zzdoe {
    private final zzfil zza;
    private final zzbxq zzb;
    private final AdFormat zzc;
    private zzdff zzd = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzenb(zzfil zzfilVar, zzbxq zzbxqVar, AdFormat adFormat) {
        this.zza = zzfilVar;
        this.zzb = zzbxqVar;
        this.zzc = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdoe
    public final void zza(boolean z, Context context, zzdfa zzdfaVar) throws zzdod {
        boolean zzs;
        try {
            AdFormat adFormat = AdFormat.BANNER;
            int ordinal = this.zzc.ordinal();
            if (ordinal == 1) {
                zzs = this.zzb.zzs(ObjectWrapper.wrap(context));
            } else if (ordinal == 2) {
                zzs = this.zzb.zzt(ObjectWrapper.wrap(context));
            } else {
                if (ordinal == 6) {
                    zzs = this.zzb.zzr(ObjectWrapper.wrap(context));
                }
                throw new zzdod("Adapter failed to show.");
            }
            if (zzs) {
                if (this.zzd == null) {
                    return;
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbp)).booleanValue() || this.zza.zzZ != 2) {
                    return;
                }
                this.zzd.zza();
                return;
            }
            throw new zzdod("Adapter failed to show.");
        } catch (Throwable th) {
            throw new zzdod(th);
        }
    }

    public final void zzb(zzdff zzdffVar) {
        this.zzd = zzdffVar;
    }
}
