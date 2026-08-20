package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
/* loaded from: classes.dex */
public class s {

    /* renamed from: b  reason: collision with root package name */
    private final n f6030b;

    /* renamed from: c  reason: collision with root package name */
    private final v f6031c;

    /* renamed from: a  reason: collision with root package name */
    private final String f6029a = "FileManagerOld";

    /* renamed from: d  reason: collision with root package name */
    private final Object f6032d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(n nVar) {
        this.f6030b = nVar;
        this.f6031c = nVar.D();
    }

    private File a(Context context) {
        return new File(context.getFilesDir(), "al");
    }

    private boolean a(File file, String str, List<String> list, boolean z, com.applovin.impl.sdk.d.e eVar) {
        if (file == null || !file.exists() || file.isDirectory()) {
            ByteArrayOutputStream a2 = a(str, list, z, eVar);
            if (eVar != null && a2 != null) {
                eVar.a(a2.size());
            }
            return a(a2, file);
        }
        if (v.a()) {
            this.f6031c.b("FileManagerOld", "File exists for " + str);
        }
        if (eVar != null) {
            eVar.b(file.length());
            return true;
        }
        return true;
    }

    private boolean b(ByteArrayOutputStream byteArrayOutputStream, File file) {
        n nVar;
        boolean z;
        if (v.a()) {
            this.f6031c.b("FileManagerOld", "Writing resource to filesystem: " + file.getName());
        }
        synchronized (this.f6032d) {
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    byteArrayOutputStream.writeTo(fileOutputStream2);
                    Utils.close(fileOutputStream2, this.f6030b);
                    z = true;
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    if (v.a()) {
                        this.f6031c.b("FileManagerOld", "Unable to write data to file.", e);
                    }
                    nVar = this.f6030b;
                    Utils.close(fileOutputStream, nVar);
                    z = false;
                    return z;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (v.a()) {
                        this.f6031c.b("FileManagerOld", "Unknown failure to write file.", th);
                    }
                    nVar = this.f6030b;
                    Utils.close(fileOutputStream, nVar);
                    z = false;
                    return z;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return z;
    }

    public ByteArrayOutputStream a(File file) {
        FileInputStream fileInputStream;
        if (file == null) {
            return null;
        }
        if (v.a()) {
            this.f6031c.b("FileManagerOld", "Reading resource from filesystem: " + file.getName());
        }
        synchronized (this.f6032d) {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream.read(bArr, 0, 1024);
                            if (read < 0) {
                                Utils.close(fileInputStream, this.f6030b);
                                return byteArrayOutputStream;
                            }
                            try {
                                byteArrayOutputStream.write(bArr, 0, read);
                            } catch (Exception unused) {
                                Utils.close(byteArrayOutputStream, this.f6030b);
                                Utils.close(fileInputStream, this.f6030b);
                                return null;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (v.a()) {
                            this.f6031c.b("FileManagerOld", "Unknown failure to read file.", th);
                        }
                        Utils.close(fileInputStream, this.f6030b);
                        return null;
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    if (v.a()) {
                        this.f6031c.c("FileManagerOld", "File not found. " + e);
                    }
                    Utils.close(fileInputStream, this.f6030b);
                    return null;
                } catch (IOException e3) {
                    e = e3;
                    if (v.a()) {
                        this.f6031c.b("FileManagerOld", "Failed to read file: " + file.getName() + e);
                    }
                    Utils.close(fileInputStream, this.f6030b);
                    return null;
                }
            } catch (FileNotFoundException e4) {
                e = e4;
                fileInputStream = null;
            } catch (IOException e5) {
                e = e5;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0137 A[Catch: all -> 0x0153, TryCatch #0 {all -> 0x0153, blocks: (B:30:0x00c7, B:31:0x00c9, B:33:0x00cf, B:39:0x00e8, B:41:0x00ee, B:35:0x00d3, B:60:0x0131, B:62:0x0137, B:63:0x014f), top: B:69:0x0071 }] */
    /* JADX WARN: Type inference failed for: r10v1, types: [com.applovin.impl.sdk.c.b<java.lang.Boolean>, com.applovin.impl.sdk.c.b] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v22, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v15, types: [java.io.ByteArrayOutputStream, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.ByteArrayOutputStream a(java.lang.String r8, java.util.List<java.lang.String> r9, boolean r10, com.applovin.impl.sdk.d.e r11) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.s.a(java.lang.String, java.util.List, boolean, com.applovin.impl.sdk.d.e):java.io.ByteArrayOutputStream");
    }

    public File a(String str, Context context) {
        File file;
        if (!StringUtils.isValidString(str)) {
            if (v.a()) {
                this.f6031c.b("FileManagerOld", "Nothing to look up, skipping...");
            }
            return null;
        }
        if (v.a()) {
            this.f6031c.b("FileManagerOld", "Looking up cached resource: " + str);
        }
        if (str.contains("icon")) {
            str = str.replace("/", "_").replace(".", "_");
        }
        synchronized (this.f6032d) {
            File a2 = a(context);
            file = new File(a2, str);
            a2.mkdirs();
        }
        return file;
    }

    public String a(Context context, String str, String str2, List<String> list, boolean z, boolean z2, com.applovin.impl.sdk.d.e eVar) {
        return a(context, str, str2, list, z, z2, false, eVar);
    }

    public String a(Context context, String str, String str2, List<String> list, boolean z, boolean z2, boolean z3, com.applovin.impl.sdk.d.e eVar) {
        if (!StringUtils.isValidString(str)) {
            if (v.a()) {
                this.f6031c.b("FileManagerOld", "Nothing to cache, skipping...");
            }
            return null;
        }
        Uri parse = Uri.parse(str);
        String fileName = ((Boolean) this.f6030b.a(com.applovin.impl.sdk.c.b.fe)).booleanValue() ? Utils.getFileName(parse) : parse.getLastPathSegment();
        if (z2) {
            fileName = StringUtils.encodeUriString(fileName, this.f6030b);
        }
        if (StringUtils.isValidString(fileName) && StringUtils.isValidString(str2)) {
            fileName = str2 + fileName;
        }
        String str3 = fileName;
        File a2 = a(str3, context);
        if (a(a2, str, list, z, eVar)) {
            if (v.a()) {
                this.f6031c.b("FileManagerOld", "Caching succeeded for file " + str3);
            }
            return z3 ? Uri.fromFile(a2).toString() : str3;
        }
        return null;
    }

    public boolean a(ByteArrayOutputStream byteArrayOutputStream, File file) {
        if (file == null) {
            return false;
        }
        if (v.a()) {
            this.f6031c.b("FileManagerOld", "Caching " + file.getAbsolutePath() + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        if (byteArrayOutputStream == null || byteArrayOutputStream.size() <= 0) {
            if (v.a()) {
                this.f6031c.d("FileManagerOld", "No data for " + file.getAbsolutePath());
            }
            return false;
        } else if (!b(byteArrayOutputStream, file)) {
            if (v.a()) {
                this.f6031c.e("FileManagerOld", "Unable to cache " + file.getAbsolutePath());
            }
            return false;
        } else if (v.a()) {
            this.f6031c.b("FileManagerOld", "Caching completed for " + file);
            return true;
        } else {
            return true;
        }
    }

    public boolean a(File file, String str, List<String> list, com.applovin.impl.sdk.d.e eVar) {
        return a(file, str, list, true, eVar);
    }

    public boolean b(String str, Context context) {
        boolean z;
        synchronized (this.f6032d) {
            File a2 = a(str, context);
            z = (a2 == null || !a2.exists() || a2.isDirectory()) ? false : true;
        }
        return z;
    }
}
