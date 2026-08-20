package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzeez implements zzdhi {
    private final Context zza;
    private final zzcft zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeez(Context context, zzcft zzcftVar) {
        this.zza = context;
        this.zzb = zzcftVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzb(zzfix zzfixVar) {
        if (TextUtils.isEmpty(zzfixVar.zzb.zzb.zzd)) {
            return;
        }
        this.zzb.zzp(this.zza, zzfixVar.zza.zza.zzd);
        this.zzb.zzl(this.zza, zzfixVar.zzb.zzb.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public final void zzbG(zzccb zzccbVar) {
    }
}
