package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzdzm;
import com.google.android.gms.internal.ads.zzgen;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
final class zzaa implements zzgen {
    final /* synthetic */ zzac zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(zzac zzacVar) {
        this.zza = zzacVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzdzm zzdzmVar;
        zzdzc zzdzcVar;
        com.google.android.gms.ads.internal.zzt.zzo().zzu(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        zzac zzacVar = this.zza;
        zzdzmVar = zzacVar.zzr;
        zzdzcVar = zzacVar.zzj;
        zzf.zzc(zzdzmVar, zzdzcVar, "sgf", new Pair("sgf_reason", th.getMessage()));
        com.google.android.gms.ads.internal.util.zze.zzh("Failed to initialize webview for loading SDKCore. ", th);
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* synthetic */ void zzb(Object obj) {
        zzao zzaoVar = (zzao) obj;
        com.google.android.gms.ads.internal.util.zze.zze("Initialized webview successfully for SDKCore.");
    }
}
