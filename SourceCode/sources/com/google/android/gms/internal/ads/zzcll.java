package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcll {
    private long zza;

    public final long zza(ByteBuffer byteBuffer) {
        zzalu zzaluVar;
        zzalt zzaltVar;
        long j = this.zza;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator it = new zzalp(new zzclk(duplicate), zzcln.zzb).zze().iterator();
            while (true) {
                zzaluVar = null;
                if (!it.hasNext()) {
                    zzaltVar = null;
                    break;
                }
                zzalr zzalrVar = (zzalr) it.next();
                if (zzalrVar instanceof zzalt) {
                    zzaltVar = (zzalt) zzalrVar;
                    break;
                }
            }
            Iterator it2 = zzaltVar.zze().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzalr zzalrVar2 = (zzalr) it2.next();
                if (zzalrVar2 instanceof zzalu) {
                    zzaluVar = (zzalu) zzalrVar2;
                    break;
                }
            }
            long zzd = (zzaluVar.zzd() * 1000) / zzaluVar.zze();
            this.zza = zzd;
            return zzd;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
