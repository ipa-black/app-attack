package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzala implements zzajo {
    private final zzakz zzc;
    private final Map zza = new LinkedHashMap(16, 0.75f, true);
    private long zzb = 0;
    private final int zzd = 5242880;

    public zzala(zzakz zzakzVar, int i) {
        this.zzc = zzakzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(InputStream inputStream) throws IOException {
        return (zzn(inputStream) << 24) | zzn(inputStream) | (zzn(inputStream) << 8) | (zzn(inputStream) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzf(InputStream inputStream) throws IOException {
        return (zzn(inputStream) & 255) | ((zzn(inputStream) & 255) << 8) | ((zzn(inputStream) & 255) << 16) | ((zzn(inputStream) & 255) << 24) | ((zzn(inputStream) & 255) << 32) | ((zzn(inputStream) & 255) << 40) | ((zzn(inputStream) & 255) << 48) | ((255 & zzn(inputStream)) << 56);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzh(zzaky zzakyVar) throws IOException {
        return new String(zzm(zzakyVar, zzf(zzakyVar)), C.UTF8_NAME);
    }

    static void zzj(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static void zzk(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static void zzl(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(C.UTF8_NAME);
        int length = bytes.length;
        zzk(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    static byte[] zzm(zzaky zzakyVar, long j) throws IOException {
        long zza = zzakyVar.zza();
        if (j >= 0 && j <= zza) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(zzakyVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + zza);
    }

    private static int zzn(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private final void zzo(String str, zzakx zzakxVar) {
        if (this.zza.containsKey(str)) {
            this.zzb += zzakxVar.zza - ((zzakx) this.zza.get(str)).zza;
        } else {
            this.zzb += zzakxVar.zza;
        }
        this.zza.put(str, zzakxVar);
    }

    private final void zzp(String str) {
        zzakx zzakxVar = (zzakx) this.zza.remove(str);
        if (zzakxVar != null) {
            this.zzb -= zzakxVar.zza;
        }
    }

    private static final String zzq(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    @Override // com.google.android.gms.internal.ads.zzajo
    public final synchronized zzajn zza(String str) {
        zzakx zzakxVar = (zzakx) this.zza.get(str);
        if (zzakxVar == null) {
            return null;
        }
        File zzg = zzg(str);
        try {
            zzaky zzakyVar = new zzaky(new BufferedInputStream(new FileInputStream(zzg)), zzg.length());
            try {
                zzakx zza = zzakx.zza(zzakyVar);
                if (!TextUtils.equals(str, zza.zzb)) {
                    zzakq.zza("%s: key=%s, found=%s", zzg.getAbsolutePath(), str, zza.zzb);
                    zzp(str);
                    return null;
                }
                byte[] zzm = zzm(zzakyVar, zzakyVar.zza());
                zzajn zzajnVar = new zzajn();
                zzajnVar.zza = zzm;
                zzajnVar.zzb = zzakxVar.zzc;
                zzajnVar.zzc = zzakxVar.zzd;
                zzajnVar.zzd = zzakxVar.zze;
                zzajnVar.zze = zzakxVar.zzf;
                zzajnVar.zzf = zzakxVar.zzg;
                List<zzajw> list = zzakxVar.zzh;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzajw zzajwVar : list) {
                    treeMap.put(zzajwVar.zza(), zzajwVar.zzb());
                }
                zzajnVar.zzg = treeMap;
                zzajnVar.zzh = Collections.unmodifiableList(zzakxVar.zzh);
                return zzajnVar;
            } finally {
                zzakyVar.close();
            }
        } catch (IOException e2) {
            zzakq.zza("%s: %s", zzg.getAbsolutePath(), e2.toString());
            zzi(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajo
    public final synchronized void zzb() {
        long length;
        zzaky zzakyVar;
        File zza = this.zzc.zza();
        if (!zza.exists()) {
            if (zza.mkdirs()) {
                return;
            }
            zzakq.zzb("Unable to create cache dir %s", zza.getAbsolutePath());
            return;
        }
        File[] listFiles = zza.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file : listFiles) {
            try {
                length = file.length();
                zzakyVar = new zzaky(new BufferedInputStream(new FileInputStream(file)), length);
            } catch (IOException unused) {
                file.delete();
            }
            try {
                zzakx zza2 = zzakx.zza(zzakyVar);
                zza2.zza = length;
                zzo(zza2.zzb, zza2);
                zzakyVar.close();
            } catch (Throwable th) {
                zzakyVar.close();
                throw th;
                break;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajo
    public final synchronized void zzc(String str, boolean z) {
        zzajn zza = zza(str);
        if (zza != null) {
            zza.zzf = 0L;
            zza.zze = 0L;
            zzd(str, zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajo
    public final synchronized void zzd(String str, zzajn zzajnVar) {
        long j = this.zzb;
        int length = zzajnVar.zza.length;
        int i = this.zzd;
        if (j + length <= i || length <= i * 0.9f) {
            File zzg = zzg(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zzg));
                zzakx zzakxVar = new zzakx(str, zzajnVar);
                try {
                    zzj(bufferedOutputStream, 538247942);
                    zzl(bufferedOutputStream, zzakxVar.zzb);
                    String str2 = zzakxVar.zzc;
                    if (str2 == null) {
                        str2 = "";
                    }
                    zzl(bufferedOutputStream, str2);
                    zzk(bufferedOutputStream, zzakxVar.zzd);
                    zzk(bufferedOutputStream, zzakxVar.zze);
                    zzk(bufferedOutputStream, zzakxVar.zzf);
                    zzk(bufferedOutputStream, zzakxVar.zzg);
                    List<zzajw> list = zzakxVar.zzh;
                    if (list != null) {
                        zzj(bufferedOutputStream, list.size());
                        for (zzajw zzajwVar : list) {
                            zzl(bufferedOutputStream, zzajwVar.zza());
                            zzl(bufferedOutputStream, zzajwVar.zzb());
                        }
                    } else {
                        zzj(bufferedOutputStream, 0);
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.write(zzajnVar.zza);
                    bufferedOutputStream.close();
                    zzakxVar.zza = zzg.length();
                    zzo(str, zzakxVar);
                    if (this.zzb >= this.zzd) {
                        if (zzakq.zzb) {
                            zzakq.zzd("Pruning old cache entries.", new Object[0]);
                        }
                        long j2 = this.zzb;
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        Iterator it = this.zza.entrySet().iterator();
                        int i2 = 0;
                        while (it.hasNext()) {
                            zzakx zzakxVar2 = (zzakx) ((Map.Entry) it.next()).getValue();
                            if (zzg(zzakxVar2.zzb).delete()) {
                                this.zzb -= zzakxVar2.zza;
                            } else {
                                String str3 = zzakxVar2.zzb;
                                zzakq.zza("Could not delete cache entry for key=%s, filename=%s", str3, zzq(str3));
                            }
                            it.remove();
                            i2++;
                            if (((float) this.zzb) < this.zzd * 0.9f) {
                                break;
                            }
                        }
                        if (zzakq.zzb) {
                            zzakq.zzd("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.zzb - j2), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                        }
                    }
                } catch (IOException e2) {
                    zzakq.zza("%s", e2.toString());
                    bufferedOutputStream.close();
                    zzakq.zza("Failed to write header for %s", zzg.getAbsolutePath());
                    throw new IOException();
                }
            } catch (IOException unused) {
                if (!zzg.delete()) {
                    zzakq.zza("Could not clean up file %s", zzg.getAbsolutePath());
                }
                if (!this.zzc.zza().exists()) {
                    zzakq.zza("Re-initializing cache after external clearing.", new Object[0]);
                    this.zza.clear();
                    this.zzb = 0L;
                    zzb();
                }
            }
        }
    }

    public final File zzg(String str) {
        return new File(this.zzc.zza(), zzq(str));
    }

    public final synchronized void zzi(String str) {
        boolean delete = zzg(str).delete();
        zzp(str);
        if (delete) {
            return;
        }
        zzakq.zza("Could not delete cache entry for key=%s, filename=%s", str, zzq(str));
    }

    public zzala(File file, int i) {
        this.zzc = new zzakw(this, file);
    }
}
