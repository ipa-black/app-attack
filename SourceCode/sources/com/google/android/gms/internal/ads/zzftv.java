package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.util.Hex;
import java.io.File;
import java.util.HashSet;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzftv {
    private static final Object zza = new Object();
    private final Context zzb;
    private final SharedPreferences zzc;
    private final String zzd;
    private final zzftc zze;
    private boolean zzf;

    public zzftv(Context context, int i, zzftc zzftcVar, boolean z) {
        this.zzf = false;
        this.zzb = context;
        this.zzd = Integer.toString(i - 1);
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        this.zze = zzftcVar;
        this.zzf = z;
    }

    private final File zze(String str) {
        return new File(new File(this.zzb.getDir("pccache", 0), this.zzd), str);
    }

    private static String zzf(zzasc zzascVar) {
        zzase zze = zzasf.zze();
        zze.zze(zzascVar.zzd().zzk());
        zze.zza(zzascVar.zzd().zzj());
        zze.zzb(zzascVar.zzd().zza());
        zze.zzd(zzascVar.zzd().zzd());
        zze.zzc(zzascVar.zzd().zzc());
        return Hex.bytesToStringLowercase(((zzasf) zze.zzak()).zzaw());
    }

    private final String zzg() {
        return "FBAMTD".concat(String.valueOf(this.zzd));
    }

    private final String zzh() {
        return "LATMTD".concat(String.valueOf(this.zzd));
    }

    private final void zzi(int i, long j) {
        zzftc zzftcVar = this.zze;
        if (zzftcVar != null) {
            zzftcVar.zza(i, j);
        }
    }

    private final void zzj(int i, long j, String str) {
        zzftc zzftcVar = this.zze;
        if (zzftcVar != null) {
            zzftcVar.zzb(i, j, str);
        }
    }

    private final zzasf zzk(int i) {
        String string;
        zzgxp zzb;
        if (i == 1) {
            string = this.zzc.getString(zzh(), null);
        } else {
            string = this.zzc.getString(zzg(), null);
        }
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzgwv zzv = zzgwv.zzv(Hex.stringToBytes(string));
            if (this.zzf) {
                zzb = zzgxp.zza();
            } else {
                zzb = zzgxp.zzb();
            }
            return zzasf.zzi(zzv, zzb);
        } catch (zzgyp unused) {
            return null;
        } catch (NullPointerException unused2) {
            zzi(2029, currentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            zzi(2032, currentTimeMillis);
            return null;
        }
    }

    public final boolean zza(zzasc zzascVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            if (!zzftp.zze(new File(zze(zzascVar.zzd().zzk()), "pcbc"), zzascVar.zze().zzE())) {
                zzi(4020, currentTimeMillis);
                return false;
            }
            String zzf = zzf(zzascVar);
            SharedPreferences.Editor edit = this.zzc.edit();
            edit.putString(zzh(), zzf);
            boolean commit = edit.commit();
            if (commit) {
                zzi(5015, currentTimeMillis);
            } else {
                zzi(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    public final boolean zzb(zzasc zzascVar, zzftu zzftuVar) {
        File[] listFiles;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzasf zzk = zzk(1);
            String zzk2 = zzascVar.zzd().zzk();
            if (zzk == null || !zzk.zzk().equals(zzk2)) {
                long currentTimeMillis2 = System.currentTimeMillis();
                File zze = zze(zzk2);
                if (zze.exists()) {
                    boolean isDirectory = zze.isDirectory();
                    String str = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
                    if (true != isDirectory) {
                        str = "0";
                    }
                    boolean isFile = zze.isFile();
                    String str2 = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
                    if (true != isFile) {
                        str2 = "0";
                    }
                    zzj(4023, currentTimeMillis2, "d:" + str + ",f:" + str2);
                    zzi(4015, currentTimeMillis2);
                } else if (!zze.mkdirs()) {
                    boolean canWrite = zze.canWrite();
                    String str3 = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
                    if (true != canWrite) {
                        str3 = "0";
                    }
                    zzj(4024, currentTimeMillis2, "cw:".concat(str3));
                    zzi(4015, currentTimeMillis2);
                    return false;
                }
                File zze2 = zze(zzk2);
                File file = new File(zze2, "pcam.jar");
                File file2 = new File(zze2, "pcbc");
                if (!zzftp.zze(file, zzascVar.zzf().zzE())) {
                    zzi(4016, currentTimeMillis);
                    return false;
                } else if (!zzftp.zze(file2, zzascVar.zze().zzE())) {
                    zzi(4017, currentTimeMillis);
                    return false;
                } else if (zzftuVar == null || zzftuVar.zza(file)) {
                    String zzf = zzf(zzascVar);
                    long currentTimeMillis3 = System.currentTimeMillis();
                    String string = this.zzc.getString(zzh(), null);
                    SharedPreferences.Editor edit = this.zzc.edit();
                    edit.putString(zzh(), zzf);
                    if (string != null) {
                        edit.putString(zzg(), string);
                    }
                    if (edit.commit()) {
                        HashSet hashSet = new HashSet();
                        zzasf zzk3 = zzk(1);
                        if (zzk3 != null) {
                            hashSet.add(zzk3.zzk());
                        }
                        zzasf zzk4 = zzk(2);
                        if (zzk4 != null) {
                            hashSet.add(zzk4.zzk());
                        }
                        for (File file3 : new File(this.zzb.getDir("pccache", 0), this.zzd).listFiles()) {
                            if (!hashSet.contains(file3.getName())) {
                                zzftp.zzd(file3);
                            }
                        }
                        zzi(5014, currentTimeMillis);
                        return true;
                    }
                    zzi(4019, currentTimeMillis3);
                    return false;
                } else {
                    zzi(4018, currentTimeMillis);
                    zzftp.zzd(zze2);
                    return false;
                }
            }
            zzi(4014, currentTimeMillis);
            return false;
        }
    }

    public final zzftn zzc(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzasf zzk = zzk(1);
            if (zzk == null) {
                zzi(4022, currentTimeMillis);
                return null;
            }
            File zze = zze(zzk.zzk());
            File file = new File(zze, "pcam.jar");
            if (!file.exists()) {
                file = new File(zze, "pcam");
            }
            File file2 = new File(zze, "pcbc");
            File file3 = new File(zze, "pcopt");
            zzi(5016, currentTimeMillis);
            return new zzftn(zzk, file, file2, file3);
        }
    }

    public final boolean zzd(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            zzasf zzk = zzk(1);
            if (zzk == null) {
                zzi(4025, currentTimeMillis);
                return false;
            }
            File zze = zze(zzk.zzk());
            if (!new File(zze, "pcam.jar").exists()) {
                zzi(4026, currentTimeMillis);
                return false;
            } else if (!new File(zze, "pcbc").exists()) {
                zzi(4027, currentTimeMillis);
                return false;
            } else {
                zzi(5019, currentTimeMillis);
                return true;
            }
        }
    }
}
