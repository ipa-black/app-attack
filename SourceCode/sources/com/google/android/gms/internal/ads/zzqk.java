package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzqk extends zzgg {
    public final zzqm zza;
    public final String zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzqk(Throwable th, zzqm zzqmVar) {
        super("Decoder failed: ".concat(String.valueOf(zzqmVar == null ? null : zzqmVar.zza)), th);
        String str = null;
        this.zza = zzqmVar;
        if (zzen.zza >= 21 && (th instanceof MediaCodec.CodecException)) {
            str = ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        this.zzb = str;
    }
}
