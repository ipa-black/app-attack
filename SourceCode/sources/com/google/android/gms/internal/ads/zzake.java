package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzake implements Comparable {
    private final zzakp zza;
    private final int zzb;
    private final String zzc;
    private final int zzd;
    private final Object zze;
    private final zzaki zzf;
    private Integer zzg;
    private zzakh zzh;
    private boolean zzi;
    private zzajn zzj;
    private zzakd zzk;
    private final zzajs zzl;

    public zzake(int i, String str, zzaki zzakiVar) {
        Uri parse;
        String host;
        this.zza = zzakp.zza ? new zzakp() : null;
        this.zze = new Object();
        int i2 = 0;
        this.zzi = false;
        this.zzj = null;
        this.zzb = i;
        this.zzc = str;
        this.zzf = zzakiVar;
        this.zzl = new zzajs();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i2 = host.hashCode();
        }
        this.zzd = i2;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.zzg.intValue() - ((zzake) obj).zzg.intValue();
    }

    public final String toString() {
        String hexString = Integer.toHexString(this.zzd);
        zzw();
        String str = this.zzc;
        Integer num = this.zzg;
        return "[ ] " + str + " " + "0x".concat(String.valueOf(hexString)) + " NORMAL " + num;
    }

    public final int zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzl.zzb();
    }

    public final int zzc() {
        return this.zzd;
    }

    public final zzajn zzd() {
        return this.zzj;
    }

    public final zzake zze(zzajn zzajnVar) {
        this.zzj = zzajnVar;
        return this;
    }

    public final zzake zzf(zzakh zzakhVar) {
        this.zzh = zzakhVar;
        return this;
    }

    public final zzake zzg(int i) {
        this.zzg = Integer.valueOf(i);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract zzakk zzh(zzaka zzakaVar);

    public final String zzj() {
        String str = this.zzc;
        if (this.zzb != 0) {
            String num = Integer.toString(1);
            return num + "-" + str;
        }
        return str;
    }

    public final String zzk() {
        return this.zzc;
    }

    public Map zzl() throws zzajm {
        return Collections.emptyMap();
    }

    public final void zzm(String str) {
        if (zzakp.zza) {
            this.zza.zza(str, Thread.currentThread().getId());
        }
    }

    public final void zzn(zzakn zzaknVar) {
        zzaki zzakiVar;
        synchronized (this.zze) {
            zzakiVar = this.zzf;
        }
        if (zzakiVar != null) {
            zzakiVar.zza(zzaknVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zzo(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzp(String str) {
        zzakh zzakhVar = this.zzh;
        if (zzakhVar != null) {
            zzakhVar.zzb(this);
        }
        if (zzakp.zza) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzakc(this, str, id));
                return;
            }
            this.zza.zza(str, id);
            this.zza.zzb(toString());
        }
    }

    public final void zzq() {
        synchronized (this.zze) {
            this.zzi = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzr() {
        zzakd zzakdVar;
        synchronized (this.zze) {
            zzakdVar = this.zzk;
        }
        if (zzakdVar != null) {
            zzakdVar.zza(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzs(zzakk zzakkVar) {
        zzakd zzakdVar;
        synchronized (this.zze) {
            zzakdVar = this.zzk;
        }
        if (zzakdVar != null) {
            zzakdVar.zzb(this, zzakkVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzt(int i) {
        zzakh zzakhVar = this.zzh;
        if (zzakhVar != null) {
            zzakhVar.zzc(this, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzu(zzakd zzakdVar) {
        synchronized (this.zze) {
            this.zzk = zzakdVar;
        }
    }

    public final boolean zzv() {
        boolean z;
        synchronized (this.zze) {
            z = this.zzi;
        }
        return z;
    }

    public final boolean zzw() {
        synchronized (this.zze) {
        }
        return false;
    }

    public byte[] zzx() throws zzajm {
        return null;
    }

    public final zzajs zzy() {
        return this.zzl;
    }
}
