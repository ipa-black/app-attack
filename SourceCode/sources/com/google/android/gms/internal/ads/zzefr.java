package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzefr {
    private final zzgfc zza;
    private final zzeex zzb;
    private final zzhej zzc;
    private final zzfoy zzd;
    private final Context zze;
    private final zzchu zzf;

    public zzefr(zzgfc zzgfcVar, zzeex zzeexVar, zzhej zzhejVar, zzfoy zzfoyVar, Context context, zzchu zzchuVar) {
        this.zza = zzgfcVar;
        this.zzb = zzeexVar;
        this.zzc = zzhejVar;
        this.zzd = zzfoyVar;
        this.zze = context;
        this.zzf = zzchuVar;
    }

    private final zzgfb zzh(final zzccb zzccbVar, zzefq zzefqVar, final zzefq zzefqVar2, final zzgdy zzgdyVar) {
        zzgfb zzg;
        String str = zzccbVar.zzd;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzs.zzy(str)) {
            zzg = zzger.zzh(new zzefg(1));
        } else {
            zzg = zzger.zzg(zzefqVar.zza(zzccbVar), ExecutionException.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzefh
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    ExecutionException executionException = (ExecutionException) obj;
                    Throwable cause = executionException.getCause();
                    Throwable th = executionException;
                    if (cause != null) {
                        th = executionException.getCause();
                    }
                    return zzger.zzh(th);
                }
            }, this.zza);
        }
        return zzger.zzg(zzger.zzn(zzgei.zzv(zzg), zzgdyVar, this.zza), zzefg.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzefp
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzefr.this.zzc(zzefqVar2, zzccbVar, zzgdyVar, (zzefg) obj);
            }
        }, this.zza);
    }

    public final zzgfb zza(final zzccb zzccbVar) {
        zzgdy zzgdyVar = new zzgdy() { // from class: com.google.android.gms.internal.ads.zzefm
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                zzccb zzccbVar2 = zzccb.this;
                zzccbVar2.zzj = new String(zzgcw.zza((InputStream) obj), zzfxr.zzc);
                return zzger.zzi(zzccbVar2);
            }
        };
        final zzeex zzeexVar = this.zzb;
        return zzh(zzccbVar, new zzefq() { // from class: com.google.android.gms.internal.ads.zzefn
            @Override // com.google.android.gms.internal.ads.zzefq
            public final zzgfb zza(zzccb zzccbVar2) {
                return zzeex.this.zzb(zzccbVar2);
            }
        }, new zzefq() { // from class: com.google.android.gms.internal.ads.zzefo
            @Override // com.google.android.gms.internal.ads.zzefq
            public final zzgfb zza(zzccb zzccbVar2) {
                return zzefr.this.zzd(zzccbVar2);
            }
        }, zzgdyVar);
    }

    public final zzgfb zzb(JSONObject jSONObject) {
        return zzger.zzn(zzgei.zzv(zzger.zzi(jSONObject)), com.google.android.gms.ads.internal.zzt.zzf().zza(this.zze, this.zzf, this.zzd).zza("AFMA_getAdDictionary", zzbuq.zza, new zzbul() { // from class: com.google.android.gms.internal.ads.zzefl
            @Override // com.google.android.gms.internal.ads.zzbul
            public final Object zza(JSONObject jSONObject2) {
                return new zzcce(jSONObject2);
            }
        }), this.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzc(zzefq zzefqVar, zzccb zzccbVar, zzgdy zzgdyVar, zzefg zzefgVar) throws Exception {
        return zzger.zzn(zzefqVar.zza(zzccbVar), zzgdyVar, this.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzd(zzccb zzccbVar) {
        return ((zzehm) this.zzc.zzb()).zzb(zzccbVar, Binder.getCallingUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zze(zzccb zzccbVar) {
        return this.zzb.zzc(zzccbVar.zzh);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzf(zzccb zzccbVar) {
        return ((zzehm) this.zzc.zzb()).zzi(zzccbVar.zzh);
    }

    public final zzgfb zzg(zzccb zzccbVar) {
        return zzh(zzccbVar, new zzefq() { // from class: com.google.android.gms.internal.ads.zzefj
            @Override // com.google.android.gms.internal.ads.zzefq
            public final zzgfb zza(zzccb zzccbVar2) {
                return zzefr.this.zze(zzccbVar2);
            }
        }, new zzefq() { // from class: com.google.android.gms.internal.ads.zzefk
            @Override // com.google.android.gms.internal.ads.zzefq
            public final zzgfb zza(zzccb zzccbVar2) {
                return zzefr.this.zzf(zzccbVar2);
            }
        }, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzefi
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                InputStream inputStream = (InputStream) obj;
                return zzger.zzi(null);
            }
        });
    }
}
