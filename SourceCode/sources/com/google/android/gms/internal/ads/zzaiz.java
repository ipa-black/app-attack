package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaiz {
    public final int zza;
    public final long zzb;

    private zzaiz(int i, long j) {
        this.zza = i;
        this.zzb = j;
    }

    public static zzaiz zza(zzzk zzzkVar, zzef zzefVar) throws IOException {
        ((zzyz) zzzkVar).zzm(zzefVar.zzH(), 0, 8, false);
        zzefVar.zzF(0);
        return new zzaiz(zzefVar.zze(), zzefVar.zzq());
    }
}
