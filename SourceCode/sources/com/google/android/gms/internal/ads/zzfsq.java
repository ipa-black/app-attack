package com.google.android.gms.internal.ads;

import androidx.exifinterface.media.ExifInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfsq implements zzfsr {
    private static final zzanf zza;

    static {
        zzaml zza2 = zzanf.zza();
        zza2.zzx(ExifInterface.LONGITUDE_EAST);
        zza = (zzanf) zza2.zzak();
    }

    @Override // com.google.android.gms.internal.ads.zzfsr
    public final zzanf zza() {
        return zza;
    }
}
