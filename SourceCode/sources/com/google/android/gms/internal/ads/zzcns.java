package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcns implements View.OnAttachStateChangeListener {
    final /* synthetic */ zzcep zza;
    final /* synthetic */ zzcnv zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcns(zzcnv zzcnvVar, zzcep zzcepVar) {
        this.zzb = zzcnvVar;
        this.zza = zzcepVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzb.zzR(view, this.zza, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
