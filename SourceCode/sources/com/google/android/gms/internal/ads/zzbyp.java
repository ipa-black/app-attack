package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbyp implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbyq zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbyp(zzbyq zzbyqVar) {
        this.zza = zzbyqVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.zzg("User canceled the download.");
    }
}
