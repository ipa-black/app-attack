package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbuw implements zzbqq {
    final /* synthetic */ zzbux zza;
    private final zzbtz zzb;
    private final zzcig zzc;

    public zzbuw(zzbux zzbuxVar, zzbtz zzbtzVar, zzcig zzcigVar) {
        this.zza = zzbuxVar;
        this.zzb = zzbtzVar;
        this.zzc = zzcigVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zza(String str) {
        zzbtz zzbtzVar;
        try {
            if (str == null) {
                this.zzc.zze(new zzbui());
            } else {
                this.zzc.zze(new zzbui(str));
            }
            zzbtzVar = this.zzb;
        } catch (IllegalStateException unused) {
            zzbtzVar = this.zzb;
        } catch (Throwable th) {
            this.zzb.zzb();
            throw th;
        }
        zzbtzVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbqq
    public final void zzb(JSONObject jSONObject) {
        zzbtz zzbtzVar;
        zzbul zzbulVar;
        try {
            try {
                zzcig zzcigVar = this.zzc;
                zzbulVar = this.zza.zza;
                zzcigVar.zzd(zzbulVar.zza(jSONObject));
                zzbtzVar = this.zzb;
            } catch (IllegalStateException unused) {
                zzbtzVar = this.zzb;
            } catch (JSONException e2) {
                this.zzc.zze(e2);
                zzbtzVar = this.zzb;
            }
            zzbtzVar.zzb();
        } catch (Throwable th) {
            this.zzb.zzb();
            throw th;
        }
    }
}
