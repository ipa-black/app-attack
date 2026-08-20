package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcjd extends TextureView implements zzcka {
    protected final zzcjr zza;
    protected final zzckb zzb;
    protected final Integer zzc;

    public zzcjd(Context context, Integer num) {
        super(context);
        this.zza = new zzcjr();
        this.zzb = new zzckb(context, this);
        this.zzc = num;
    }

    public void zzA(int i) {
    }

    public void zzB(String str, String[] strArr) {
        zzs(str);
    }

    public abstract int zza();

    public abstract int zzb();

    public abstract int zzc();

    public abstract int zzd();

    public abstract int zze();

    public abstract long zzf();

    public abstract long zzg();

    public abstract long zzh();

    public abstract String zzj();

    public abstract void zzn();

    public abstract void zzo();

    public abstract void zzp();

    public abstract void zzq(int i);

    public abstract void zzr(zzcjc zzcjcVar);

    public abstract void zzs(String str);

    public abstract void zzt();

    public abstract void zzu(float f2, float f3);

    public void zzw(int i) {
    }

    public void zzx(int i) {
    }

    public void zzy(int i) {
    }

    public void zzz(int i) {
    }
}
