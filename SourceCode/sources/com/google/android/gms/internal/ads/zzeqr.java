package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeqr {
    private final zzdnw zza;

    public zzeqr(Context context, zzdnw zzdnwVar) {
        this.zza = zzdnwVar;
    }

    public final /* bridge */ /* synthetic */ Object zza(zzfix zzfixVar, zzfil zzfilVar, View view, zzeqn zzeqnVar) {
        zzdmw zze = this.zza.zze(new zzdbc(zzfixVar, zzfilVar, null), new zzeqp(this, new zzdoe() { // from class: com.google.android.gms.internal.ads.zzeqo
            @Override // com.google.android.gms.internal.ads.zzdoe
            public final void zza(boolean z, Context context, zzdfa zzdfaVar) {
            }
        }));
        zzeqnVar.zzd(new zzeqq(this, zze));
        return zze.zzg();
    }
}
