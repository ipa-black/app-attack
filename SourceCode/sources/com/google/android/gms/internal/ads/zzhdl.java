package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhdl extends zzgyd implements zzgzo {
    private static final zzhdl zzb;
    private zzhci zzB;
    private zzhca zzD;
    private int zzd;
    private int zze;
    private int zzf;
    private zzhce zzj;
    private zzhcz zzn;
    private boolean zzo;
    private boolean zzr;
    private boolean zzs;
    private zzhdh zzu;
    private boolean zzv;
    private zzhdk zzz;
    private byte zzF = 2;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private zzgym zzk = zzaL();
    private zzgym zzl = zzaL();
    private String zzm = "";
    private zzgym zzp = zzgyd.zzaL();
    private String zzq = "";
    private zzgwv zzt = zzgwv.zzb;
    private String zzw = "";
    private zzgym zzx = zzgyd.zzaL();
    private zzgym zzy = zzgyd.zzaL();
    private zzgym zzA = zzaL();
    private String zzC = "";
    private zzgym zzE = zzaL();

    static {
        zzhdl zzhdlVar = new zzhdl();
        zzb = zzhdlVar;
        zzgyd.zzaS(zzhdl.class, zzhdlVar);
    }

    private zzhdl() {
    }

    public static zzhcc zza() {
        return (zzhcc) zzb.zzaz();
    }

    public static /* synthetic */ void zzg(zzhdl zzhdlVar, String str) {
        str.getClass();
        zzhdlVar.zzd |= 4;
        zzhdlVar.zzg = str;
    }

    public static /* synthetic */ void zzh(zzhdl zzhdlVar, String str) {
        str.getClass();
        zzhdlVar.zzd |= 8;
        zzhdlVar.zzh = str;
    }

    public static /* synthetic */ void zzi(zzhdl zzhdlVar, zzhce zzhceVar) {
        zzhceVar.getClass();
        zzhdlVar.zzj = zzhceVar;
        zzhdlVar.zzd |= 32;
    }

    public static /* synthetic */ void zzj(zzhdl zzhdlVar, zzhdf zzhdfVar) {
        zzhdfVar.getClass();
        zzgym zzgymVar = zzhdlVar.zzk;
        if (!zzgymVar.zzc()) {
            zzhdlVar.zzk = zzgyd.zzaM(zzgymVar);
        }
        zzhdlVar.zzk.add(zzhdfVar);
    }

    public static /* synthetic */ void zzk(zzhdl zzhdlVar, String str) {
        zzhdlVar.zzd |= 64;
        zzhdlVar.zzm = str;
    }

    public static /* synthetic */ void zzl(zzhdl zzhdlVar) {
        zzhdlVar.zzd &= -65;
        zzhdlVar.zzm = zzb.zzm;
    }

    public static /* synthetic */ void zzm(zzhdl zzhdlVar, zzhcz zzhczVar) {
        zzhczVar.getClass();
        zzhdlVar.zzn = zzhczVar;
        zzhdlVar.zzd |= 128;
    }

    public static /* synthetic */ void zzn(zzhdl zzhdlVar, zzhdh zzhdhVar) {
        zzhdhVar.getClass();
        zzhdlVar.zzu = zzhdhVar;
        zzhdlVar.zzd |= 8192;
    }

    public static /* synthetic */ void zzo(zzhdl zzhdlVar, Iterable iterable) {
        zzgym zzgymVar = zzhdlVar.zzx;
        if (!zzgymVar.zzc()) {
            zzhdlVar.zzx = zzgyd.zzaM(zzgymVar);
        }
        zzgwe.zzau(iterable, zzhdlVar.zzx);
    }

    public static /* synthetic */ void zzp(zzhdl zzhdlVar, Iterable iterable) {
        zzgym zzgymVar = zzhdlVar.zzy;
        if (!zzgymVar.zzc()) {
            zzhdlVar.zzy = zzgyd.zzaM(zzgymVar);
        }
        zzgwe.zzau(iterable, zzhdlVar.zzy);
    }

    public static /* synthetic */ void zzq(zzhdl zzhdlVar, int i) {
        zzhdlVar.zze = i - 1;
        zzhdlVar.zzd |= 1;
    }

    public final String zzd() {
        return this.zzm;
    }

    public final String zze() {
        return this.zzg;
    }

    public final List zzf() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzgyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzaP(zzb, "\u0001\u001b\u0000\u0001\u0001\u001b\u001b\u0000\u0007\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ\u0000\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0010\u001b\u0011ဉ\r\u0012ဇ\u000e\u0013ဈ\u000f\u0014\u001a\u0015\u001a\u0016ဉ\u0010\u0017\u001b\u0018ဉ\u0011\u0019ဈ\u0012\u001aဉ\u0013\u001b\u001b", new Object[]{"zzd", "zzg", "zzh", "zzi", "zzk", zzhdf.class, "zzo", "zzp", "zzq", "zzr", "zzs", "zze", zzhda.zza, "zzf", zzhcb.zza, "zzj", "zzm", "zzn", "zzt", "zzl", zzhdp.class, "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", zzhdv.class, "zzB", "zzC", "zzD", "zzE", zzhcm.class});
            } else if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 == 5) {
                        return zzb;
                    }
                    this.zzF = obj == null ? (byte) 0 : (byte) 1;
                    return null;
                }
                return new zzhcc(null);
            } else {
                return new zzhdl();
            }
        }
        return Byte.valueOf(this.zzF);
    }
}
