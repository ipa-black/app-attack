package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzarm extends zzarx {
    public zzarm(zzaqj zzaqjVar, String str, String str2, zzaml zzamlVar, int i, int i2) {
        super(zzaqjVar, "q25n2/TPNEnWjiB7Eq/br1pf7I1+Pbd8JO4E5S/WFXDtJZ2FMIzDcDIeNK1YwkMp", "JTvnHx65Egq/4novhqSS3bMw+oihCNz02Yz4pG4S+kE=", zzamlVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzarx
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        try {
            boolean booleanValue = ((Boolean) this.zzf.invoke(null, this.zzb.zzb())).booleanValue();
            zzaml zzamlVar = this.zze;
            int i = 1;
            if (true == booleanValue) {
                i = 2;
            }
            zzamlVar.zzae(i);
        } catch (InvocationTargetException unused) {
            this.zze.zzae(3);
        }
    }
}
