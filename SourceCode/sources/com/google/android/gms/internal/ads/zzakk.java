package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzakk {
    public final Object zza;
    public final zzajn zzb;
    public final zzakn zzc;
    public boolean zzd;

    private zzakk(zzakn zzaknVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzaknVar;
    }

    private zzakk(Object obj, zzajn zzajnVar) {
        this.zzd = false;
        this.zza = obj;
        this.zzb = zzajnVar;
        this.zzc = null;
    }

    public static zzakk zza(zzakn zzaknVar) {
        return new zzakk(zzaknVar);
    }

    public static zzakk zzb(Object obj, zzajn zzajnVar) {
        return new zzakk(obj, zzajnVar);
    }

    public final boolean zzc() {
        return this.zzc == null;
    }
}
