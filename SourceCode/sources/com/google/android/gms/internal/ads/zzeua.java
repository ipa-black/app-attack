package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeua implements zzezm {
    private final zzgfc zza;
    private final zzdxc zzb;
    private final zzebj zzc;
    private final zzeud zzd;

    public zzeua(zzgfc zzgfcVar, zzdxc zzdxcVar, zzebj zzebjVar, zzeud zzeudVar) {
        this.zza = zzgfcVar;
        this.zzb = zzdxcVar;
        this.zzc = zzebjVar;
        this.zzd = zzeudVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        if (zzfyt.zzd((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbk)) || this.zzd.zzb() || !this.zzc.zzt()) {
            return zzger.zzi(new zzeuc(new Bundle(), null));
        }
        this.zzd.zza(true);
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeua.this.zzc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzeuc zzc() throws Exception {
        List<String> asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbk)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                zzfkb zzc = this.zzb.zzc(str, new JSONObject());
                zzc.zzC();
                Bundle bundle2 = new Bundle();
                try {
                    zzbye zzf = zzc.zzf();
                    if (zzf != null) {
                        bundle2.putString("sdk_version", zzf.toString());
                    }
                } catch (zzfjl unused) {
                }
                try {
                    zzbye zze = zzc.zze();
                    if (zze != null) {
                        bundle2.putString("adapter_version", zze.toString());
                    }
                } catch (zzfjl unused2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzfjl unused3) {
            }
        }
        return new zzeuc(bundle, null);
    }
}
