package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzcln extends zzaln {
    static final zzcln zzb = new zzcln();

    zzcln() {
    }

    @Override // com.google.android.gms.internal.ads.zzaln
    public final zzalr zza(String str, byte[] bArr, String str2) {
        if ("moov".equals(str)) {
            return new zzalt();
        }
        if ("mvhd".equals(str)) {
            return new zzalu();
        }
        return new zzalv(str);
    }
}
