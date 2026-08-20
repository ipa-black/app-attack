package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzhdx extends zzhea implements zzalr {
    zzals zza;
    protected final String zzb = "moov";

    public zzhdx(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzb(zzheb zzhebVar, ByteBuffer byteBuffer, long j, zzalo zzaloVar) throws IOException {
        zzhebVar.zzb();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.zzd = zzhebVar;
        this.zzf = zzhebVar.zzb();
        zzhebVar.zze(zzhebVar.zzb() + j);
        this.zzg = zzhebVar.zzb();
        this.zzc = zzaloVar;
    }

    @Override // com.google.android.gms.internal.ads.zzalr
    public final void zzc(zzals zzalsVar) {
        this.zza = zzalsVar;
    }
}
