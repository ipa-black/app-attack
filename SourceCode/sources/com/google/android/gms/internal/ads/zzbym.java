package com.google.android.gms.internal.ads;

import android.view.View;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbym implements View.OnClickListener {
    final /* synthetic */ zzbyn zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbym(zzbyn zzbynVar) {
        this.zza = zzbynVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zza.zza(true);
    }
}
