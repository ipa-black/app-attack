package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzari extends zzarx {
    private final zzapn zzi;
    private final long zzj;
    private final long zzk;

    public zzari(zzaqj zzaqjVar, String str, String str2, zzaml zzamlVar, int i, int i2, zzapn zzapnVar, long j, long j2) {
        super(zzaqjVar, "uXer3UA11jv0SZxM8rEYS7HzXCd8ucSITS/VghhemVPtPpwzWKxJYN2vUPP5dw9E", "hs3/rpu0ZtoaPE+A6aRGA1SNmSKC7zzkLMT9t285eJ8=", zzamlVar, i, 11);
        this.zzi = zzapnVar;
        this.zzj = j;
        this.zzk = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzarx
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        zzapn zzapnVar = this.zzi;
        if (zzapnVar != null) {
            zzapl zzaplVar = new zzapl((String) this.zzf.invoke(null, zzapnVar.zzb(), Long.valueOf(this.zzj), Long.valueOf(this.zzk)));
            synchronized (this.zze) {
                this.zze.zzz(zzaplVar.zza.longValue());
                if (zzaplVar.zzb.longValue() >= 0) {
                    this.zze.zzQ(zzaplVar.zzb.longValue());
                }
                if (zzaplVar.zzc.longValue() >= 0) {
                    this.zze.zzf(zzaplVar.zzc.longValue());
                }
            }
        }
    }
}
