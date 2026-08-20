package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgmi {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    public zzgmi() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
        this.zzc = new HashMap();
        this.zzd = new HashMap();
    }

    public final zzgmi zza(zzglb zzglbVar) throws GeneralSecurityException {
        zzgmk zzgmkVar = new zzgmk(zzglbVar.zzd(), zzglbVar.zzc(), null);
        if (this.zzb.containsKey(zzgmkVar)) {
            zzglb zzglbVar2 = (zzglb) this.zzb.get(zzgmkVar);
            if (!zzglbVar2.equals(zzglbVar) || !zzglbVar.equals(zzglbVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzgmkVar.toString()));
            }
        } else {
            this.zzb.put(zzgmkVar, zzglbVar);
        }
        return this;
    }

    public final zzgmi zzb(zzglf zzglfVar) throws GeneralSecurityException {
        zzgmm zzgmmVar = new zzgmm(zzglfVar.zzb(), zzglfVar.zzc(), null);
        if (this.zza.containsKey(zzgmmVar)) {
            zzglf zzglfVar2 = (zzglf) this.zza.get(zzgmmVar);
            if (!zzglfVar2.equals(zzglfVar) || !zzglfVar.equals(zzglfVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzgmmVar.toString()));
            }
        } else {
            this.zza.put(zzgmmVar, zzglfVar);
        }
        return this;
    }

    public final zzgmi zzc(zzgly zzglyVar) throws GeneralSecurityException {
        zzgmk zzgmkVar = new zzgmk(zzglyVar.zzc(), zzglyVar.zzb(), null);
        if (this.zzd.containsKey(zzgmkVar)) {
            zzgly zzglyVar2 = (zzgly) this.zzd.get(zzgmkVar);
            if (!zzglyVar2.equals(zzglyVar) || !zzglyVar.equals(zzglyVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzgmkVar.toString()));
            }
        } else {
            this.zzd.put(zzgmkVar, zzglyVar);
        }
        return this;
    }

    public final zzgmi zzd(zzgmc zzgmcVar) throws GeneralSecurityException {
        zzgmm zzgmmVar = new zzgmm(zzgmcVar.zzb(), zzgmcVar.zzc(), null);
        if (this.zzc.containsKey(zzgmmVar)) {
            zzgmc zzgmcVar2 = (zzgmc) this.zzc.get(zzgmmVar);
            if (!zzgmcVar2.equals(zzgmcVar) || !zzgmcVar.equals(zzgmcVar2)) {
                throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzgmmVar.toString()));
            }
        } else {
            this.zzc.put(zzgmmVar, zzgmcVar);
        }
        return this;
    }

    public zzgmi(zzgmo zzgmoVar) {
        Map map;
        Map map2;
        Map map3;
        Map map4;
        map = zzgmoVar.zza;
        this.zza = new HashMap(map);
        map2 = zzgmoVar.zzb;
        this.zzb = new HashMap(map2);
        map3 = zzgmoVar.zzc;
        this.zzc = new HashMap(map3);
        map4 = zzgmoVar.zzd;
        this.zzd = new HashMap(map4);
    }
}
