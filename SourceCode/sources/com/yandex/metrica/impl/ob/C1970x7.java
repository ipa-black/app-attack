package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.yandex.metrica.impl.ob.x7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1970x7 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f16019a;

    /* renamed from: b  reason: collision with root package name */
    private final File f16020b;

    /* renamed from: c  reason: collision with root package name */
    private final B0 f16021c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1970x7(Context context, File file) {
        this(context, file, new B0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str, String str2) {
        ZipFile zipFile;
        String str3 = this.f16019a.getApplicationInfo().sourceDir;
        File b2 = this.f16021c.b(this.f16020b, str2);
        if (b2 == null) {
            return null;
        }
        if (b2.exists()) {
            return b2.getAbsolutePath();
        }
        Rm a2 = Rm.a(this.f16019a, "crpad_ext");
        try {
            a2.a();
            if (b2.exists()) {
                String absolutePath = b2.getAbsolutePath();
                a2.b();
                return absolutePath;
            }
            zipFile = new ZipFile(str3);
            try {
                ZipEntry entry = zipFile.getEntry(str);
                if (entry != null) {
                    InputStream inputStream = zipFile.getInputStream(entry);
                    FileOutputStream fileOutputStream = new FileOutputStream(b2);
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = inputStream.read(bArr, 0, 4096);
                        if (-1 == read) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    if (!b2.setReadable(true, false)) {
                        a2.b();
                        try {
                            zipFile.close();
                        } catch (IOException unused) {
                        }
                        return null;
                    } else if (!b2.setExecutable(true, false)) {
                        a2.b();
                        try {
                            zipFile.close();
                        } catch (IOException unused2) {
                        }
                        return null;
                    } else {
                        String absolutePath2 = b2.getAbsolutePath();
                        a2.b();
                        try {
                            zipFile.close();
                        } catch (IOException unused3) {
                        }
                        return absolutePath2;
                    }
                }
                throw new RuntimeException("Cannot find ZipEntry" + str);
            } catch (Throwable unused4) {
                a2.b();
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException unused5) {
                    }
                }
                return null;
            }
        } catch (Throwable unused6) {
            zipFile = null;
        }
    }

    C1970x7(Context context, File file, B0 b0) {
        this.f16019a = context;
        this.f16020b = file;
        this.f16021c = b0;
    }
}
