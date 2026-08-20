package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcxc implements zzbbx {
    private zzcno zza;
    private final Executor zzb;
    private final zzcwo zzc;
    private final Clock zzd;
    private boolean zze = false;
    private boolean zzf = false;
    private final zzcwr zzg = new zzcwr();

    public zzcxc(Executor executor, zzcwo zzcwoVar, Clock clock) {
        this.zzb = executor;
        this.zzc = zzcwoVar;
        this.zzd = clock;
    }

    private final void zzg() {
        try {
            final JSONObject zzb = this.zzc.zzb(this.zzg);
            if (this.zza != null) {
                this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcxb
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcxc.this.zzd(zzb);
                    }
                });
            }
        } catch (JSONException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed to call video active view js", e2);
        }
    }

    public final void zza() {
        this.zze = false;
    }

    public final void zzb() {
        this.zze = true;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbbx
    public final void zzc(zzbbw zzbbwVar) {
        zzcwr zzcwrVar = this.zzg;
        zzcwrVar.zza = this.zzf ? false : zzbbwVar.zzj;
        zzcwrVar.zzd = this.zzd.elapsedRealtime();
        this.zzg.zzf = zzbbwVar;
        if (this.zze) {
            zzg();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(JSONObject jSONObject) {
        this.zza.zzl("AFMA_updateActiveView", jSONObject);
    }

    public final void zze(boolean z) {
        this.zzf = z;
    }

    public final void zzf(zzcno zzcnoVar) {
        this.zza = zzcnoVar;
    }
}
