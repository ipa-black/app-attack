package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzggn {
    private static final Logger zza = Logger.getLogger(zzggn.class.getName());
    private final ConcurrentMap zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzggn() {
        this.zzb = new ConcurrentHashMap();
    }

    private final synchronized zzggm zzg(String str) throws GeneralSecurityException {
        if (!this.zzb.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type ".concat(String.valueOf(str)));
        }
        return (zzggm) this.zzb.get(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0055, code lost:
        r6.zzb.putIfAbsent(r0, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005b, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final synchronized void zzh(com.google.android.gms.internal.ads.zzggm r7, boolean r8) throws java.security.GeneralSecurityException {
        /*
            r6 = this;
            monitor-enter(r6)
            com.google.android.gms.internal.ads.zzggg r0 = r7.zzb()     // Catch: java.lang.Throwable -> L63
            java.lang.String r0 = r0.zzf()     // Catch: java.lang.Throwable -> L63
            java.util.concurrent.ConcurrentMap r1 = r6.zzb     // Catch: java.lang.Throwable -> L63
            java.lang.Object r1 = r1.get(r0)     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.internal.ads.zzggm r1 = (com.google.android.gms.internal.ads.zzggm) r1     // Catch: java.lang.Throwable -> L63
            if (r1 == 0) goto L53
            java.lang.Class r2 = r1.zzc()     // Catch: java.lang.Throwable -> L63
            java.lang.Class r3 = r7.zzc()     // Catch: java.lang.Throwable -> L63
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L63
            if (r2 == 0) goto L22
            goto L53
        L22:
            java.util.logging.Logger r8 = com.google.android.gms.internal.ads.zzggn.zza     // Catch: java.lang.Throwable -> L63
            java.util.logging.Level r2 = java.util.logging.Level.WARNING     // Catch: java.lang.Throwable -> L63
            java.lang.String r3 = "com.google.crypto.tink.KeyManagerRegistry"
            java.lang.String r4 = "registerKeyManagerContainer"
            java.lang.String r5 = "Attempted overwrite of a registered key manager for key type "
            java.lang.String r5 = r5.concat(r0)     // Catch: java.lang.Throwable -> L63
            r8.logp(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L63
            java.security.GeneralSecurityException r8 = new java.security.GeneralSecurityException     // Catch: java.lang.Throwable -> L63
            java.lang.Class r1 = r1.zzc()     // Catch: java.lang.Throwable -> L63
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L63
            java.lang.Class r7 = r7.zzc()     // Catch: java.lang.Throwable -> L63
            java.lang.String r7 = r7.getName()     // Catch: java.lang.Throwable -> L63
            java.lang.Object[] r7 = new java.lang.Object[]{r0, r1, r7}     // Catch: java.lang.Throwable -> L63
            java.lang.String r0 = "typeUrl (%s) is already registered with %s, cannot be re-registered with %s"
            java.lang.String r7 = java.lang.String.format(r0, r7)     // Catch: java.lang.Throwable -> L63
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L63
            throw r8     // Catch: java.lang.Throwable -> L63
        L53:
            if (r8 != 0) goto L5c
            java.util.concurrent.ConcurrentMap r8 = r6.zzb     // Catch: java.lang.Throwable -> L63
            r8.putIfAbsent(r0, r7)     // Catch: java.lang.Throwable -> L63
            monitor-exit(r6)
            return
        L5c:
            java.util.concurrent.ConcurrentMap r8 = r6.zzb     // Catch: java.lang.Throwable -> L63
            r8.put(r0, r7)     // Catch: java.lang.Throwable -> L63
            monitor-exit(r6)
            return
        L63:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzggn.zzh(com.google.android.gms.internal.ads.zzggm, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzggg zza(String str, Class cls) throws GeneralSecurityException {
        zzggm zzg = zzg(str);
        if (zzg.zze().contains(cls)) {
            return zzg.zza(cls);
        }
        String name = cls.getName();
        String valueOf = String.valueOf(zzg.zzc());
        Set<Class> zze = zzg.zze();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class cls2 : zze) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        throw new GeneralSecurityException("Primitive type " + name + " not supported by key manager of type " + valueOf + ", supported primitives: " + sb2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzggg zzb(String str) throws GeneralSecurityException {
        return zzg(str).zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzc(zzgme zzgmeVar, zzgli zzgliVar) throws GeneralSecurityException {
        Class zzd;
        int zzf = zzgliVar.zzf();
        if (!zzgjh.zza(1)) {
            String valueOf = String.valueOf(zzgmeVar.getClass());
            throw new GeneralSecurityException("failed to register key manager " + valueOf + " as it is not FIPS compatible.");
        } else if (zzgjh.zza(zzf)) {
            String zzd2 = zzgmeVar.zzd();
            String zzd3 = zzgliVar.zzd();
            if (this.zzb.containsKey(zzd2) && ((zzggm) this.zzb.get(zzd2)).zzd() != null && (zzd = ((zzggm) this.zzb.get(zzd2)).zzd()) != null && !zzd.getName().equals(zzgliVar.getClass().getName())) {
                Logger logger = zza;
                Level level = Level.WARNING;
                logger.logp(level, "com.google.crypto.tink.KeyManagerRegistry", "registerAsymmetricKeyManagers", "Attempted overwrite of a registered key manager for key type " + zzd2 + " with inconsistent public key type " + zzd3);
                throw new GeneralSecurityException(String.format("public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s", zzgmeVar.getClass().getName(), zzd.getName(), zzgliVar.getClass().getName()));
            }
            zzh(new zzggl(zzgmeVar, zzgliVar), true);
            zzh(new zzggk(zzgliVar), false);
        } else {
            String valueOf2 = String.valueOf(zzgliVar.getClass());
            throw new GeneralSecurityException("failed to register key manager " + valueOf2 + " as it is not FIPS compatible.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzd(zzggg zzgggVar) throws GeneralSecurityException {
        if (zzgjh.zza(1)) {
            zzh(new zzggj(zzgggVar), false);
        } else {
            throw new GeneralSecurityException("Registering key managers is not supported in FIPS mode");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zze(zzgli zzgliVar) throws GeneralSecurityException {
        if (zzgjh.zza(zzgliVar.zzf())) {
            zzh(new zzggk(zzgliVar), false);
        } else {
            String valueOf = String.valueOf(zzgliVar.getClass());
            throw new GeneralSecurityException("failed to register key manager " + valueOf + " as it is not FIPS compatible.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzf(String str) {
        return this.zzb.containsKey(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzggn(zzggn zzggnVar) {
        this.zzb = new ConcurrentHashMap(zzggnVar.zzb);
    }
}
