package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzghd {
    private final Class zza;
    private zzghe zzc;
    private ConcurrentMap zzb = new ConcurrentHashMap();
    private zzgoj zzd = zzgoj.zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzghd(Class cls, zzghc zzghcVar) {
        this.zza = cls;
    }

    private final zzghd zze(Object obj, zzgti zzgtiVar, boolean z) throws GeneralSecurityException {
        byte[] array;
        if (this.zzb == null) {
            throw new IllegalStateException("addPrimitive cannot be called after build");
        }
        if (zzgtiVar.zzk() == 3) {
            ConcurrentMap concurrentMap = this.zzb;
            Integer valueOf = Integer.valueOf(zzgtiVar.zza());
            if (zzgtiVar.zzf() == zzguc.RAW) {
                valueOf = null;
            }
            zzggf zza = zzglu.zzb().zza(zzgmf.zza(zzgtiVar.zzc().zzg(), zzgtiVar.zzc().zzf(), zzgtiVar.zzc().zzc(), zzgtiVar.zzf(), valueOf), zzghn.zza());
            int ordinal = zzgtiVar.zzf().ordinal();
            if (ordinal == 1) {
                array = ByteBuffer.allocate(5).put((byte) 1).putInt(zzgtiVar.zza()).array();
            } else {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        array = zzggb.zza;
                    } else if (ordinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                }
                array = ByteBuffer.allocate(5).put((byte) 0).putInt(zzgtiVar.zza()).array();
            }
            zzghe zzgheVar = new zzghe(obj, array, zzgtiVar.zzk(), zzgtiVar.zzf(), zzgtiVar.zza(), zza);
            ArrayList arrayList = new ArrayList();
            arrayList.add(zzgheVar);
            zzghg zzghgVar = new zzghg(zzgheVar.zzf(), null);
            List list = (List) concurrentMap.put(zzghgVar, Collections.unmodifiableList(arrayList));
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(list);
                arrayList2.add(zzgheVar);
                concurrentMap.put(zzghgVar, Collections.unmodifiableList(arrayList2));
            }
            if (z) {
                if (this.zzc == null) {
                    this.zzc = zzgheVar;
                } else {
                    throw new IllegalStateException("you cannot set two primary primitives");
                }
            }
            return this;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }

    public final zzghd zza(Object obj, zzgti zzgtiVar) throws GeneralSecurityException {
        zze(obj, zzgtiVar, true);
        return this;
    }

    public final zzghd zzb(Object obj, zzgti zzgtiVar) throws GeneralSecurityException {
        zze(obj, zzgtiVar, false);
        return this;
    }

    public final zzghd zzc(zzgoj zzgojVar) {
        if (this.zzb != null) {
            this.zzd = zzgojVar;
            return this;
        }
        throw new IllegalStateException("setAnnotations cannot be called after build");
    }

    public final zzghi zzd() throws GeneralSecurityException {
        ConcurrentMap concurrentMap = this.zzb;
        if (concurrentMap != null) {
            zzghi zzghiVar = new zzghi(concurrentMap, this.zzc, this.zzd, this.zza, null);
            this.zzb = null;
            return zzghiVar;
        }
        throw new IllegalStateException("build cannot be called twice");
    }
}
