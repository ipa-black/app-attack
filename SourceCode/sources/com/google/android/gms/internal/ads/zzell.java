package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzell implements zzekx {
    private final Context zza;
    private final zzcxy zzb;
    private final Executor zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzell(Context context, zzcxy zzcxyVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcxyVar;
        this.zzc = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, final zzekt zzektVar) throws zzfjl, zzeom {
        zzcxv zza = this.zzb.zza(new zzdbc(zzfixVar, zzfilVar, zzektVar.zza), new zzdmz(new zzdoe() { // from class: com.google.android.gms.internal.ads.zzelk
            @Override // com.google.android.gms.internal.ads.zzdoe
            public final void zza(boolean z, Context context, zzdfa zzdfaVar) {
                zzekt zzektVar2 = zzekt.this;
                try {
                    ((zzfkb) zzektVar2.zzb).zzv(z);
                    ((zzfkb) zzektVar2.zzb).zzw(context);
                } catch (zzfjl e2) {
                    throw new zzdod(e2.getCause());
                }
            }
        }, null), new zzcxw(zzfilVar.zzab));
        zza.zzd().zzj(new zzcvy((zzfkb) zzektVar.zzb), this.zzc);
        ((zzems) zzektVar.zzc).zzc(zza.zzi());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzekx
    public final void zzb(zzfix zzfixVar, zzfil zzfilVar, zzekt zzektVar) throws zzfjl {
        ((zzfkb) zzektVar.zzb).zzl(this.zza, zzfixVar.zza.zza.zzd, zzfilVar.zzw.toString(), (zzbvz) zzektVar.zzc);
    }
}
