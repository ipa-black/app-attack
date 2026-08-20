package com.google.android.gms.internal.ads;

import android.media.Spatializer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzvj implements Spatializer.OnSpatializerStateChangedListener {
    final /* synthetic */ zzvr zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvj(zzvk zzvkVar, zzvr zzvrVar) {
        this.zza = zzvrVar;
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        zzvr.zzg(this.zza);
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        zzvr.zzg(this.zza);
    }
}
