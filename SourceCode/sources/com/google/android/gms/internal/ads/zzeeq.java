package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeeq extends zzcbw {
    final /* synthetic */ zzeer zza;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzeeq(zzeer zzeerVar) {
        this.zza = zzeerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbx
    public final void zze(com.google.android.gms.ads.internal.util.zzaz zzazVar) {
        this.zza.zza.zze(zzazVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcbx
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.zza.zzd(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
