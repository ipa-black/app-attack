package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzarq extends zzarx {
    public zzarq(zzaqj zzaqjVar, String str, String str2, zzaml zzamlVar, int i, int i2) {
        super(zzaqjVar, "/nq0lRxQcGC1ASnfdnp1tRqKCtSvrxgzieToDPBUonPm4tHJx/5+TsZqcFW/70Mo", "myj1nOfIy7SmCD8TPLBSkg5Eqhpr16G4wLW5wXHtMTM=", zzamlVar, i, 51);
    }

    @Override // com.google.android.gms.internal.ads.zzarx
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zze) {
            zzaqe zzaqeVar = new zzaqe((String) this.zzf.invoke(null, new Object[0]));
            this.zze.zzp(zzaqeVar.zza.longValue());
            this.zze.zzq(zzaqeVar.zzb.longValue());
        }
    }
}
