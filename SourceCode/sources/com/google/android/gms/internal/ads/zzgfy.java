package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgfy {
    private final OutputStream zza;

    private zzgfy(OutputStream outputStream) {
        this.zza = outputStream;
    }

    public static zzgfy zzb(OutputStream outputStream) {
        return new zzgfy(outputStream);
    }

    public final void zza(zzgtj zzgtjVar) throws IOException {
        try {
            zzgtjVar.zzav(this.zza);
        } finally {
            this.zza.close();
        }
    }
}
