package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzbyk implements DialogInterface.OnClickListener {
    final /* synthetic */ zzbyl zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbyk(zzbyl zzbylVar) {
        this.zza = zzbylVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zza.zzg("Operation denied by user.");
    }
}
