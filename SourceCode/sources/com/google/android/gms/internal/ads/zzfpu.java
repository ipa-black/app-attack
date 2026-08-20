package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfpu {
    private final zzfqb zza;
    private final zzfqb zzb;
    private final zzfpy zzc;
    private final zzfqa zzd;

    private zzfpu(zzfpy zzfpyVar, zzfqa zzfqaVar, zzfqb zzfqbVar, zzfqb zzfqbVar2, boolean z) {
        this.zzc = zzfpyVar;
        this.zzd = zzfqaVar;
        this.zza = zzfqbVar;
        if (zzfqbVar2 == null) {
            this.zzb = zzfqb.NONE;
        } else {
            this.zzb = zzfqbVar2;
        }
    }

    public static zzfpu zza(zzfpy zzfpyVar, zzfqa zzfqaVar, zzfqb zzfqbVar, zzfqb zzfqbVar2, boolean z) {
        zzfra.zzb(zzfqaVar, "ImpressionType is null");
        zzfra.zzb(zzfqbVar, "Impression owner is null");
        if (zzfqbVar != zzfqb.NONE) {
            if (zzfpyVar != zzfpy.DEFINED_BY_JAVASCRIPT || zzfqbVar != zzfqb.NATIVE) {
                if (zzfqaVar != zzfqa.DEFINED_BY_JAVASCRIPT || zzfqbVar != zzfqb.NATIVE) {
                    return new zzfpu(zzfpyVar, zzfqaVar, zzfqbVar, zzfqbVar2, true);
                }
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        zzfqy.zzh(jSONObject, "impressionOwner", this.zza);
        zzfqy.zzh(jSONObject, "mediaEventsOwner", this.zzb);
        zzfqy.zzh(jSONObject, "creativeType", this.zzc);
        zzfqy.zzh(jSONObject, "impressionType", this.zzd);
        zzfqy.zzh(jSONObject, "isolateVerificationScripts", true);
        return jSONObject;
    }
}
