package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzghm {
    private static final Logger zza = Logger.getLogger(zzghm.class.getName());
    private static final AtomicReference zzb = new AtomicReference(new zzggn());
    private static final ConcurrentMap zzc = new ConcurrentHashMap();
    private static final ConcurrentMap zzd = new ConcurrentHashMap();
    private static final ConcurrentMap zze = new ConcurrentHashMap();
    private static final ConcurrentMap zzf = new ConcurrentHashMap();
    private static final ConcurrentMap zzg = new ConcurrentHashMap();

    private zzghm() {
    }

    @Deprecated
    public static zzgfz zza(String str) throws GeneralSecurityException {
        if (str == null) {
            throw new IllegalArgumentException("catalogueName must be non-null.");
        }
        zzgfz zzgfzVar = (zzgfz) zze.get(str.toLowerCase(Locale.US));
        if (zzgfzVar == null) {
            String format = String.format("no catalogue found for %s. ", str);
            if (str.toLowerCase(Locale.US).startsWith("tinkaead")) {
                format = String.valueOf(format).concat("Maybe call AeadConfig.register().");
            }
            if (str.toLowerCase(Locale.US).startsWith("tinkdeterministicaead")) {
                format = String.valueOf(format).concat("Maybe call DeterministicAeadConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tinkstreamingaead")) {
                format = String.valueOf(format).concat("Maybe call StreamingAeadConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tinkhybriddecrypt") || str.toLowerCase(Locale.US).startsWith("tinkhybridencrypt")) {
                format = String.valueOf(format).concat("Maybe call HybridConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tinkmac")) {
                format = String.valueOf(format).concat("Maybe call MacConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tinkpublickeysign") || str.toLowerCase(Locale.US).startsWith("tinkpublickeyverify")) {
                format = String.valueOf(format).concat("Maybe call SignatureConfig.register().");
            } else if (str.toLowerCase(Locale.US).startsWith("tink")) {
                format = String.valueOf(format).concat("Maybe call TinkConfig.register().");
            }
            throw new GeneralSecurityException(format);
        }
        return zzgfzVar;
    }

    public static zzggg zzb(String str) throws GeneralSecurityException {
        return ((zzggn) zzb.get()).zzb(str);
    }

    public static synchronized zzgsw zzc(zzgtb zzgtbVar) throws GeneralSecurityException {
        zzgsw zza2;
        synchronized (zzghm.class) {
            zzggg zzb2 = zzb(zzgtbVar.zzg());
            if (((Boolean) zzd.get(zzgtbVar.zzg())).booleanValue()) {
                zza2 = zzb2.zza(zzgtbVar.zzf());
            } else {
                throw new GeneralSecurityException("newKey-operation not permitted for key type ".concat(String.valueOf(zzgtbVar.zzg())));
            }
        }
        return zza2;
    }

    public static synchronized zzgzn zzd(zzgtb zzgtbVar) throws GeneralSecurityException {
        zzgzn zzb2;
        synchronized (zzghm.class) {
            zzggg zzb3 = zzb(zzgtbVar.zzg());
            if (((Boolean) zzd.get(zzgtbVar.zzg())).booleanValue()) {
                zzb2 = zzb3.zzb(zzgtbVar.zzf());
            } else {
                throw new GeneralSecurityException("newKey-operation not permitted for key type ".concat(String.valueOf(zzgtbVar.zzg())));
            }
        }
        return zzb2;
    }

    @Nullable
    public static Class zze(Class cls) {
        zzghj zzghjVar = (zzghj) zzf.get(cls);
        if (zzghjVar == null) {
            return null;
        }
        return zzghjVar.zza();
    }

    public static Object zzf(zzgsw zzgswVar, Class cls) throws GeneralSecurityException {
        return zzg(zzgswVar.zzg(), zzgswVar.zzf(), cls);
    }

    public static Object zzg(String str, zzgwv zzgwvVar, Class cls) throws GeneralSecurityException {
        return ((zzggn) zzb.get()).zza(str, cls).zzd(zzgwvVar);
    }

    public static Object zzh(String str, zzgzn zzgznVar, Class cls) throws GeneralSecurityException {
        return ((zzggn) zzb.get()).zza(str, cls).zze(zzgznVar);
    }

    public static Object zzi(String str, byte[] bArr, Class cls) throws GeneralSecurityException {
        return zzg(str, zzgwv.zzv(bArr), cls);
    }

    public static Object zzj(zzghi zzghiVar, Class cls) throws GeneralSecurityException {
        zzghj zzghjVar = (zzghj) zzf.get(cls);
        if (zzghjVar == null) {
            throw new GeneralSecurityException("No wrapper found for ".concat(String.valueOf(zzghiVar.zzc().getName())));
        }
        if (!zzghjVar.zza().equals(zzghiVar.zzc())) {
            String obj = zzghjVar.zza().toString();
            String obj2 = zzghiVar.zzc().toString();
            throw new GeneralSecurityException("Wrong input primitive class, expected " + obj + ", got " + obj2);
        }
        return zzghjVar.zzc(zzghiVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized Map zzk() {
        Map unmodifiableMap;
        synchronized (zzghm.class) {
            unmodifiableMap = Collections.unmodifiableMap(zzg);
        }
        return unmodifiableMap;
    }

    public static synchronized void zzl(zzgme zzgmeVar, zzgli zzgliVar, boolean z) throws GeneralSecurityException {
        synchronized (zzghm.class) {
            AtomicReference atomicReference = zzb;
            zzggn zzggnVar = new zzggn((zzggn) atomicReference.get());
            zzggnVar.zzc(zzgmeVar, zzgliVar);
            String zzd2 = zzgmeVar.zzd();
            String zzd3 = zzgliVar.zzd();
            zzp(zzd2, zzgmeVar.zza().zzc(), true);
            zzp(zzd3, Collections.emptyMap(), false);
            if (!((zzggn) atomicReference.get()).zzf(zzd2)) {
                zzc.put(zzd2, new zzghl(zzgmeVar));
                zzq(zzgmeVar.zzd(), zzgmeVar.zza().zzc());
            }
            ConcurrentMap concurrentMap = zzd;
            concurrentMap.put(zzd2, true);
            concurrentMap.put(zzd3, false);
            atomicReference.set(zzggnVar);
        }
    }

    public static synchronized void zzn(zzgli zzgliVar, boolean z) throws GeneralSecurityException {
        synchronized (zzghm.class) {
            AtomicReference atomicReference = zzb;
            zzggn zzggnVar = new zzggn((zzggn) atomicReference.get());
            zzggnVar.zze(zzgliVar);
            String zzd2 = zzgliVar.zzd();
            zzp(zzd2, zzgliVar.zza().zzc(), true);
            if (!((zzggn) atomicReference.get()).zzf(zzd2)) {
                zzc.put(zzd2, new zzghl(zzgliVar));
                zzq(zzd2, zzgliVar.zza().zzc());
            }
            zzd.put(zzd2, true);
            atomicReference.set(zzggnVar);
        }
    }

    public static synchronized void zzo(zzghj zzghjVar) throws GeneralSecurityException {
        synchronized (zzghm.class) {
            if (zzghjVar != null) {
                Class zzb2 = zzghjVar.zzb();
                ConcurrentMap concurrentMap = zzf;
                if (concurrentMap.containsKey(zzb2)) {
                    zzghj zzghjVar2 = (zzghj) concurrentMap.get(zzb2);
                    if (!zzghjVar.getClass().getName().equals(zzghjVar2.getClass().getName())) {
                        zza.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", "Attempted overwrite of a registered PrimitiveWrapper for type ".concat(zzb2.toString()));
                        throw new GeneralSecurityException(String.format("PrimitiveWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s", zzb2.getName(), zzghjVar2.getClass().getName(), zzghjVar.getClass().getName()));
                    }
                }
                concurrentMap.put(zzb2, zzghjVar);
            } else {
                throw new IllegalArgumentException("wrapper must be non-null");
            }
        }
    }

    private static synchronized void zzp(String str, Map map, boolean z) throws GeneralSecurityException {
        synchronized (zzghm.class) {
            if (z) {
                ConcurrentMap concurrentMap = zzd;
                if (concurrentMap.containsKey(str) && !((Boolean) concurrentMap.get(str)).booleanValue()) {
                    throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
                }
                if (((zzggn) zzb.get()).zzf(str)) {
                    for (Map.Entry entry : map.entrySet()) {
                        if (!zzg.containsKey(entry.getKey())) {
                            throw new GeneralSecurityException("Attempted to register a new key template " + ((String) entry.getKey()) + " from an existing key manager of type " + str);
                        }
                    }
                } else {
                    for (Map.Entry entry2 : map.entrySet()) {
                        if (zzg.containsKey(entry2.getKey())) {
                            throw new GeneralSecurityException("Attempted overwrite of a registered key template ".concat(String.valueOf((String) entry2.getKey())));
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, com.google.android.gms.internal.ads.zzgzn] */
    private static void zzq(String str, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            zzg.put((String) entry.getKey(), zzggp.zze(str, ((zzglg) entry.getValue()).zza.zzaw(), ((zzglg) entry.getValue()).zzb));
        }
    }

    public static synchronized void zzm(zzggg zzgggVar, boolean z) throws GeneralSecurityException {
        synchronized (zzghm.class) {
            try {
                if (zzgggVar == null) {
                    throw new IllegalArgumentException("key manager must be non-null.");
                }
                AtomicReference atomicReference = zzb;
                zzggn zzggnVar = new zzggn((zzggn) atomicReference.get());
                zzggnVar.zzd(zzgggVar);
                if (!zzgjh.zza(1)) {
                    throw new GeneralSecurityException("Registering key managers is not supported in FIPS mode");
                }
                String zzf2 = zzgggVar.zzf();
                zzp(zzf2, Collections.emptyMap(), z);
                zzd.put(zzf2, Boolean.valueOf(z));
                atomicReference.set(zzggnVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
