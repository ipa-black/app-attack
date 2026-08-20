package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzpu implements zzqi {
    private final zzfyu zzb;
    private final zzfyu zzc;

    public zzpu(int i, boolean z) {
        zzps zzpsVar = new zzps(i);
        zzpt zzptVar = new zzpt(i);
        this.zzb = zzpsVar;
        this.zzc = zzptVar;
    }

    public static /* synthetic */ HandlerThread zza(int i) {
        String zzs;
        zzs = zzpw.zzs(i, "ExoPlayer:MediaCodecAsyncAdapter:");
        return new HandlerThread(zzs);
    }

    public static /* synthetic */ HandlerThread zzb(int i) {
        String zzs;
        zzs = zzpw.zzs(i, "ExoPlayer:MediaCodecQueueingThread:");
        return new HandlerThread(zzs);
    }

    public final zzpw zzc(zzqh zzqhVar) throws IOException {
        MediaCodec mediaCodec;
        zzpw zzpwVar;
        String str = zzqhVar.zza.zza;
        zzpw zzpwVar2 = null;
        try {
            int i = zzen.zza;
            Trace.beginSection("createCodec:" + str);
            mediaCodec = MediaCodec.createByCodecName(str);
            try {
                zzpwVar = new zzpw(mediaCodec, zza(((zzps) this.zzb).zza), zzb(((zzpt) this.zzc).zza), false, null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodec = null;
        }
        try {
            Trace.endSection();
            zzpw.zzh(zzpwVar, zzqhVar.zzb, zzqhVar.zzd, null, 0);
            return zzpwVar;
        } catch (Exception e4) {
            e = e4;
            zzpwVar2 = zzpwVar;
            if (zzpwVar2 != null) {
                zzpwVar2.zzl();
            } else if (mediaCodec != null) {
                mediaCodec.release();
            }
            throw e;
        }
    }
}
