package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzegv extends zzcbt {
    final /* synthetic */ zzegw zza;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzegv(zzegw zzegwVar) {
        this.zza = zzegwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbu
    public final void zze(com.google.android.gms.ads.internal.util.zzaz zzazVar) {
        this.zza.zza.zze(zzazVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcbu
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.zza.zzd(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
