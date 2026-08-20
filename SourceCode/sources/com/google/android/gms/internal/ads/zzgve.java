package com.google.android.gms.internal.ads;

import com.google.android.gms.security.ProviderInstaller;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgve {
    public static final zzgve zza;
    public static final zzgve zzb;
    public static final zzgve zzc;
    public static final zzgve zzd;
    public static final zzgve zze;
    public static final zzgve zzf;
    public static final zzgve zzg;
    private static final Logger zzh = Logger.getLogger(zzgve.class.getName());
    private static final List zzi;
    private static final boolean zzj;
    private final zzgvm zzk;

    static {
        if (zzgji.zzb()) {
            zzi = zzb(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL", "Conscrypt");
            zzj = false;
        } else if (zzgvw.zza()) {
            zzi = zzb(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL");
            zzj = true;
        } else {
            zzi = new ArrayList();
            zzj = true;
        }
        zza = new zzgve(new zzgvf());
        zzb = new zzgve(new zzgvj());
        zzc = new zzgve(new zzgvl());
        zzd = new zzgve(new zzgvk());
        zze = new zzgve(new zzgvg());
        zzf = new zzgve(new zzgvi());
        zzg = new zzgve(new zzgvh());
    }

    public zzgve(zzgvm zzgvmVar) {
        this.zzk = zzgvmVar;
    }

    public static List zzb(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            } else {
                zzh.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
            }
        }
        return arrayList;
    }

    public final Object zza(String str) throws GeneralSecurityException {
        Exception exc = null;
        for (Provider provider : zzi) {
            try {
                return this.zzk.zza(str, provider);
            } catch (Exception e2) {
                if (exc == null) {
                    exc = e2;
                }
            }
        }
        if (zzj) {
            return this.zzk.zza(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
