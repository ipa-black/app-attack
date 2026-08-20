package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaqy extends zzarx {
    private static final zzary zzi = new zzary();
    private final Context zzj;

    public zzaqy(zzaqj zzaqjVar, String str, String str2, zzaml zzamlVar, int i, int i2, Context context, zzame zzameVar) {
        super(zzaqjVar, "JcyGK+UJP268FQFtTaGhQAzoKUodZulOKvzraNGT5p3xvR5cM9kMk5tDQLTCBUij", "f+92zzsRq9nsZjabs/oaBlCH7RtiJvk62T7dPsPTbRg=", zzamlVar, i, 27);
        this.zzj = context;
    }

    private final String zzc() {
        try {
            if (this.zzb.zzl() != null) {
                this.zzb.zzl().get();
            }
            zzanf zzc = this.zzb.zzc();
            if (zzc == null || !zzc.zzaj()) {
                return null;
            }
            return zzc.zzh();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarx
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        Boolean bool;
        int i;
        zzanv zzanvVar;
        AtomicReference zza = zzi.zza(this.zzj.getPackageName());
        synchronized (zza) {
            zzanv zzanvVar2 = (zzanv) zza.get();
            if (zzanvVar2 == null || zzaqn.zzg(zzanvVar2.zza) || zzanvVar2.zza.equals(ExifInterface.LONGITUDE_EAST) || zzanvVar2.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (zzaqn.zzg(null)) {
                    if (zzaqn.zzg(null)) {
                        bool = false;
                    } else {
                        bool = false;
                    }
                    i = (bool.booleanValue() && this.zzb.zzp()) ? 4 : 3;
                } else {
                    i = 5;
                }
                Boolean valueOf = Boolean.valueOf(i == 3);
                Boolean bool2 = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzca);
                String zzb = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbZ)).booleanValue() ? zzb() : null;
                if (bool2.booleanValue() && this.zzb.zzp() && zzaqn.zzg(zzb)) {
                    zzb = zzc();
                }
                zzanv zzanvVar3 = new zzanv((String) this.zzf.invoke(null, this.zzj, valueOf, zzb));
                if (zzaqn.zzg(zzanvVar3.zza) || zzanvVar3.zza.equals(ExifInterface.LONGITUDE_EAST)) {
                    int i2 = i - 1;
                    if (i2 == 3) {
                        String zzc = zzc();
                        if (!zzaqn.zzg(zzc)) {
                            zzanvVar3.zza = zzc;
                        }
                    } else if (i2 == 4) {
                        throw null;
                    }
                }
                zza.set(zzanvVar3);
            }
            zzanvVar = (zzanv) zza.get();
        }
        synchronized (this.zze) {
            if (zzanvVar != null) {
                this.zze.zzx(zzanvVar.zza);
                this.zze.zzX(zzanvVar.zzb);
                this.zze.zzZ(zzanvVar.zzc);
                this.zze.zzi(zzanvVar.zzd);
                this.zze.zzw(zzanvVar.zze);
            }
        }
    }

    protected final String zzb() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] zzi2 = zzaqn.zzi((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcb));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzi2)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzaqn.zzi((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcc)))));
            }
            Context context = this.zzj;
            String packageName = context.getPackageName();
            this.zzb.zzk();
            if (Build.VERSION.SDK_INT > 30 || Build.VERSION.CODENAME.equals(ExifInterface.LATITUDE_SOUTH)) {
                final zzgfk zzf = zzgfk.zzf();
                context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.zzarz
                    @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                    public final void onChecksumsReady(List list) {
                        zzgfk zzgfkVar = zzgfk.this;
                        if (list == null) {
                            zzgfkVar.zzd(null);
                            return;
                        }
                        try {
                            int size = list.size();
                            for (int i = 0; i < size; i++) {
                                ApkChecksum apkChecksum = (ApkChecksum) list.get(i);
                                if (apkChecksum.getType() == 8) {
                                    zzgfkVar.zzd(zzaqn.zzc(apkChecksum.getValue()));
                                    return;
                                }
                            }
                            zzgfkVar.zzd(null);
                        } catch (Throwable unused) {
                            zzgfkVar.zzd(null);
                        }
                    }
                });
                return (String) zzf.get();
            }
            return null;
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }
}
