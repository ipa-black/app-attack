package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzarr extends zzarx {
    private final zzaqr zzi;
    private long zzj;

    public zzarr(zzaqj zzaqjVar, String str, String str2, zzaml zzamlVar, int i, int i2, zzaqr zzaqrVar) {
        super(zzaqjVar, "yXY8/mGMSUXAD/doic4NhOcSiaIXIqWtQGozx2RibPkZkGDEn3zdgJKu8ncuIp2B", "lomf+VO0Ecj7WivSbw6aVWdgbo/lmDysFNgyXwY+gTY=", zzamlVar, i, 53);
        this.zzi = zzaqrVar;
        if (zzaqrVar != null) {
            this.zzj = zzaqrVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarx
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        if (this.zzi != null) {
            this.zze.zzP(((Long) this.zzf.invoke(null, Long.valueOf(this.zzj))).longValue());
        }
    }
}
