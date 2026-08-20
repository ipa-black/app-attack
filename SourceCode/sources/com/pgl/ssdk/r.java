package com.pgl.ssdk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ApkInfo.java */
/* loaded from: classes3.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static volatile String f12240a = null;

    /* renamed from: b  reason: collision with root package name */
    private static String f12241b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f12242c = null;

    /* renamed from: d  reason: collision with root package name */
    private static String f12243d = null;

    /* renamed from: e  reason: collision with root package name */
    private static int f12244e = -1;

    /* renamed from: f  reason: collision with root package name */
    private static long f12245f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static long f12246g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static volatile long f12247h = -1;

    public static void a(File file, boolean z) {
        RandomAccessFile randomAccessFile;
        C1374e a2;
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                if (TextUtils.isEmpty(f12240a) && (a2 = a(file)) != null) {
                    f12240a = a(a2.a());
                    f12241b = a2.b();
                    if (z) {
                        a();
                        try {
                            randomAccessFile.close();
                            return;
                        } catch (IOException unused) {
                            return;
                        }
                    }
                }
                if (TextUtils.isEmpty(f12242c)) {
                    f12242c = a(randomAccessFile);
                }
                if (f12245f == 0) {
                    f12245f = randomAccessFile.length() / 1024;
                }
                if (f12246g == 0) {
                    f12246g = b(file);
                }
            } catch (FileNotFoundException unused2) {
                randomAccessFile2 = randomAccessFile;
                if (randomAccessFile2 == null) {
                    return;
                }
                randomAccessFile = randomAccessFile2;
                randomAccessFile.close();
            } catch (IOException unused3) {
                randomAccessFile2 = randomAccessFile;
                if (randomAccessFile2 == null) {
                    return;
                }
                randomAccessFile = randomAccessFile2;
                randomAccessFile.close();
            } catch (Throwable th) {
                th = th;
                randomAccessFile2 = randomAccessFile;
                if (randomAccessFile2 != null) {
                    try {
                        randomAccessFile2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
        } catch (IOException unused6) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            randomAccessFile.close();
        } catch (IOException unused7) {
        }
    }

    public static String b() {
        String str;
        String str2;
        String str3;
        String str4;
        int i;
        long j;
        long j2;
        if (TextUtils.isEmpty(f12240a) || TextUtils.isEmpty(f12242c) || f12244e == -1) {
            SharedPreferences a2 = L.a(C1390v.b());
            long j3 = -1;
            if (a2 != null) {
                j3 = a2.getLong("mt", -1L);
                str2 = a2.getString("sa", null);
                str3 = a2.getString("sj", null);
                str4 = a2.getString("md5", null);
                j = a2.getLong("as", 0L);
                j2 = a2.getLong("ds", 0L);
                i = a2.getInt("cpc", -1);
                str = a2.getString("ap", null);
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
                i = 0;
                j = 0;
                j2 = 0;
            }
            String c2 = c();
            if (c2 == null) {
                return null;
            }
            File file = new File(c2);
            Object[] objArr = (Object[]) com.pgl.ssdk.ces.a.meta(158, C1390v.b(), c2);
            Integer num = (Integer) objArr[0];
            String str5 = (String) objArr[1];
            long lastModified = file.lastModified();
            if (lastModified == j3 && str2 != null && i != -1) {
                f12240a = str2;
                f12241b = str3;
                f12245f = j;
                f12246g = j2;
                f12242c = str4;
                f12244e = i;
                f12243d = str;
            } else {
                f12247h = lastModified;
                if (str5 != null) {
                    f12243d = str5;
                }
                if (num != null) {
                    f12244e = num.intValue();
                }
                a(file, false);
                a();
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(f12240a)) {
                jSONObject.put("sign", f12240a);
            }
            if (!TextUtils.isEmpty(f12241b)) {
                jSONObject.put("subject", f12241b);
            }
            if (!TextUtils.isEmpty(f12242c)) {
                jSONObject.put("md5", f12242c);
            }
            if (!TextUtils.isEmpty(f12243d)) {
                jSONObject.put("path", f12243d);
            }
            long j4 = f12245f;
            if (j4 != 0) {
                jSONObject.put("apkSize", j4);
            }
            long j5 = f12246g;
            if (j5 != 0) {
                jSONObject.put("dexSize", j5);
            }
            int i2 = f12244e;
            if (i2 != -1) {
                jSONObject.put("code", i2);
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String c() {
        if (C1390v.b() == null) {
            return null;
        }
        String packageCodePath = C1390v.b().getPackageCodePath();
        if (TextUtils.isEmpty(packageCodePath)) {
            return null;
        }
        File file = new File(packageCodePath);
        if (file.exists() && file.canRead()) {
            return packageCodePath;
        }
        return null;
    }

    public static String d() {
        String str;
        if (!TextUtils.isEmpty(f12240a)) {
            return f12240a;
        }
        SharedPreferences a2 = L.a(C1390v.b());
        long j = -1;
        if (a2 != null) {
            j = a2.getLong("mt", -1L);
            str = a2.getString("sa", null);
        } else {
            str = null;
        }
        String c2 = c();
        if (TextUtils.isEmpty(c2)) {
            return null;
        }
        File file = new File(c2);
        long lastModified = file.lastModified();
        if (lastModified == j && str != null) {
            f12240a = str;
            return str;
        }
        f12247h = lastModified;
        a(file, true);
        a();
        return f12240a;
    }

    public static void a() {
        SharedPreferences a2 = L.a(C1390v.b());
        if (a2 != null) {
            if (!TextUtils.isEmpty(f12240a)) {
                a2.edit().putString("sa", f12240a).apply();
            }
            if (!TextUtils.isEmpty(f12242c)) {
                a2.edit().putString("md5", f12242c).apply();
            }
            if (!TextUtils.isEmpty(f12241b)) {
                a2.edit().putString("sj", f12241b).apply();
            }
            if (f12245f != 0) {
                a2.edit().putLong("as", f12245f).apply();
            }
            if (f12246g != 0) {
                a2.edit().putLong("ds", f12246g).apply();
            }
            if (f12247h != -1) {
                a2.edit().putLong("mt", f12247h).apply();
            }
            if (f12244e != -1) {
                a2.edit().putInt("cpc", f12244e).apply();
            }
            if (TextUtils.isEmpty(f12243d)) {
                return;
            }
            a2.edit().putString("ap", f12243d).apply();
        }
    }

    public static long b(File file) {
        String format;
        ZipFile zipFile = null;
        try {
            try {
                ZipFile zipFile2 = new ZipFile(file);
                int i = 0;
                int i2 = 0;
                while (true) {
                    if (i == 0) {
                        format = "classes.dex";
                    } else {
                        format = String.format(Locale.getDefault(), "classes%d.dex", Integer.valueOf(i));
                    }
                    ZipEntry entry = zipFile2.getEntry(format);
                    if (entry == null) {
                        break;
                    }
                    try {
                        i2 = (int) (i2 + entry.getSize());
                        i++;
                    } catch (ZipException unused) {
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            zipFile.close();
                            return 0L;
                        }
                        return 0L;
                    } catch (IOException unused2) {
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            zipFile.close();
                            return 0L;
                        }
                        return 0L;
                    } catch (Throwable th) {
                        th = th;
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                }
                long j = i2 / 1000;
                try {
                    zipFile2.close();
                } catch (IOException unused4) {
                }
                return j;
            } catch (IOException unused5) {
                return 0L;
            }
        } catch (ZipException unused6) {
        } catch (IOException unused7) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String a(byte[] bArr) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(bArr);
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toHexString((b2 & 255) | 256).substring(1, 3).toUpperCase());
                sb.append(":");
            }
            return sb.substring(0, sb.length() - 1);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f8, code lost:
        if (r4 == null) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0100  */
    @com.pgl.ssdk.ces.out.DungeonFlag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.pgl.ssdk.C1374e a(java.io.File r10) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.r.a(java.io.File):com.pgl.ssdk.e");
    }

    public static String a(RandomAccessFile randomAccessFile) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1048576];
            while (true) {
                int read = randomAccessFile.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            String bigInteger = new BigInteger(1, messageDigest.digest()).toString(16);
            while (bigInteger.length() < 32) {
                bigInteger = "0".concat(String.valueOf(bigInteger));
            }
            return bigInteger;
        } catch (FileNotFoundException | IOException | NoSuchAlgorithmException unused) {
            return "";
        }
    }
}
