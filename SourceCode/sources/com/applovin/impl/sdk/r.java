package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.google.android.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class r {

    /* renamed from: b  reason: collision with root package name */
    private final n f6025b;

    /* renamed from: c  reason: collision with root package name */
    private final v f6026c;

    /* renamed from: a  reason: collision with root package name */
    private final String f6024a = "FileManager";

    /* renamed from: d  reason: collision with root package name */
    private final Object f6027d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final Set<String> f6028e = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(n nVar) {
        this.f6025b = nVar;
        this.f6026c = nVar.D();
    }

    private long a() {
        long longValue = ((Long) this.f6025b.a(com.applovin.impl.sdk.c.b.bt)).longValue();
        if (longValue < 0 || !b()) {
            return -1L;
        }
        return longValue;
    }

    private long a(long j) {
        return j / 1048576;
    }

    private File a(String str, boolean z, Context context) {
        if (!StringUtils.isValidString(str)) {
            if (v.a()) {
                this.f6026c.b("FileManager", "Nothing to look up, skipping...");
            }
            return null;
        }
        if (v.a()) {
            this.f6026c.b("FileManager", "Looking up cached resource: " + str);
        }
        if (str.contains("icon")) {
            str = str.replace("/", "_").replace(".", "_");
        }
        File e2 = e(context);
        File file = new File(e2, str);
        if (z) {
            try {
                e2.mkdirs();
            } catch (Throwable th) {
                if (v.a()) {
                    this.f6026c.b("FileManager", "Unable to make cache directory at " + e2, th);
                }
                return null;
            }
        }
        return file;
    }

    private void a(long j, Context context) {
        v vVar;
        String str;
        if (b()) {
            long intValue = ((Integer) this.f6025b.a(com.applovin.impl.sdk.c.b.bu)).intValue();
            if (intValue == -1) {
                if (!v.a()) {
                    return;
                }
                vVar = this.f6026c;
                str = "Cache has no maximum size set; skipping drop...";
            } else if (a(j) > intValue) {
                if (v.a()) {
                    this.f6026c.b("FileManager", "Cache has exceeded maximum size; dropping...");
                }
                for (File file : d(context)) {
                    b(file);
                }
                this.f6025b.W().a(com.applovin.impl.sdk.d.f.f5660h);
                return;
            } else if (!v.a()) {
                return;
            } else {
                vVar = this.f6026c;
                str = "Cache is present but under size limit; not dropping...";
            }
            vVar.b("FileManager", str);
        }
    }

    private boolean a(File file, String str, List<String> list, boolean z, com.applovin.impl.sdk.d.e eVar) {
        InputStream inputStream;
        if (file != null && file.exists() && !file.isDirectory()) {
            if (v.a()) {
                this.f6026c.b("FileManager", "File exists for " + str);
            }
            if (eVar != null) {
                eVar.b(file.length());
                return true;
            }
            return true;
        }
        try {
            inputStream = a(str, list, z, eVar);
            try {
                boolean b2 = b(inputStream, file);
                Utils.close(inputStream, this.f6025b);
                return b2;
            } catch (Throwable th) {
                th = th;
                Utils.close(inputStream, this.f6025b);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    private boolean b() {
        return ((Boolean) this.f6025b.a(com.applovin.impl.sdk.c.b.bs)).booleanValue();
    }

    private boolean b(File file) {
        if (v.a()) {
            this.f6026c.b("FileManager", "Removing file " + file.getName() + " from filesystem...");
        }
        try {
            try {
                c(file);
                return file.delete();
            } catch (Exception e2) {
                if (v.a()) {
                    this.f6026c.b("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", e2);
                }
                d(file);
                return false;
            }
        } finally {
            d(file);
        }
    }

    private long c(Context context) {
        boolean z;
        long a2 = a();
        boolean z2 = a2 != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        List<String> b2 = this.f6025b.b(com.applovin.impl.sdk.c.b.bz);
        long j = 0;
        for (File file : d(context)) {
            if (!z2 || b2.contains(file.getName()) || e(file) || seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) <= a2) {
                z = false;
            } else {
                if (v.a()) {
                    this.f6026c.b("FileManager", "File " + file.getName() + " has expired, removing...");
                }
                z = b(file);
            }
            if (z) {
                this.f6025b.W().a(com.applovin.impl.sdk.d.f.f5659g);
            } else {
                j += file.length();
            }
        }
        return j;
    }

    private void c(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f6027d) {
            boolean add = this.f6028e.add(absolutePath);
            while (!add) {
                try {
                    this.f6027d.wait();
                    add = this.f6028e.add(absolutePath);
                } catch (InterruptedException e2) {
                    if (v.a()) {
                        this.f6026c.b("FileManager", "Lock '" + absolutePath + "' interrupted", e2);
                    }
                    throw new RuntimeException(e2);
                }
            }
        }
    }

    private List<File> d(Context context) {
        File[] listFiles;
        File e2 = e(context);
        return (!e2.isDirectory() || (listFiles = e2.listFiles()) == null) ? Collections.emptyList() : Arrays.asList(listFiles);
    }

    private void d(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f6027d) {
            this.f6028e.remove(absolutePath);
            this.f6027d.notifyAll();
        }
    }

    private File e(Context context) {
        return new File(context.getFilesDir(), "al");
    }

    private boolean e(File file) {
        boolean contains;
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f6027d) {
            contains = this.f6028e.contains(absolutePath);
        }
        return contains;
    }

    public File a(String str, Context context) {
        return a(str, true, context);
    }

    public InputStream a(String str, List<String> list, boolean z, com.applovin.impl.sdk.d.e eVar) {
        if (z && !Utils.isDomainWhitelisted(str, list)) {
            if (v.a()) {
                this.f6026c.b("FileManager", "Domain is not whitelisted, skipping precache for url: " + str);
            }
            return null;
        }
        if (((Boolean) this.f6025b.a(com.applovin.impl.sdk.c.b.cX)).booleanValue() && !str.contains("https://")) {
            if (v.a()) {
                this.f6026c.d("FileManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
            }
            str = str.replace("http://", "https://");
        }
        if (v.a()) {
            this.f6026c.b("FileManager", "Loading " + str + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(((Integer) this.f6025b.a(com.applovin.impl.sdk.c.b.cV)).intValue());
            httpURLConnection.setReadTimeout(((Integer) this.f6025b.a(com.applovin.impl.sdk.c.b.cW)).intValue());
            httpURLConnection.setDefaultUseCaches(true);
            httpURLConnection.setUseCaches(true);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            int responseCode = httpURLConnection.getResponseCode();
            eVar.a(responseCode);
            if (responseCode >= 200 && responseCode < 300) {
                if (v.a()) {
                    this.f6026c.b("FileManager", "Opened stream to resource " + str);
                }
                return httpURLConnection.getInputStream();
            }
            return null;
        } catch (Exception e2) {
            if (v.a()) {
                this.f6026c.b("FileManager", "Error loading " + str, e2);
            }
            eVar.a(e2);
            return null;
        }
    }

    public String a(Context context, String str, String str2, List<String> list, boolean z, boolean z2, com.applovin.impl.sdk.d.e eVar) {
        return a(context, str, str2, list, z, z2, false, eVar);
    }

    public String a(Context context, String str, String str2, List<String> list, boolean z, boolean z2, boolean z3, com.applovin.impl.sdk.d.e eVar) {
        if (!StringUtils.isValidString(str)) {
            if (v.a()) {
                this.f6026c.b("FileManager", "Nothing to cache, skipping...");
            }
            return null;
        }
        Uri parse = Uri.parse(str);
        String fileName = ((Boolean) this.f6025b.a(com.applovin.impl.sdk.c.b.fe)).booleanValue() ? Utils.getFileName(parse) : parse.getLastPathSegment();
        if (z2) {
            fileName = StringUtils.encodeUriString(fileName, this.f6025b);
        }
        if (StringUtils.isValidString(fileName) && StringUtils.isValidString(str2)) {
            fileName = str2 + fileName;
        }
        String str3 = fileName;
        File a2 = a(str3, context);
        if (a(a2, str, list, z, eVar)) {
            if (v.a()) {
                this.f6026c.b("FileManager", "Caching succeeded for file " + str3);
            }
            return z3 ? Uri.fromFile(a2).toString() : str3;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public String a(File file) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        String str = null;
        if (file == null) {
            return null;
        }
        boolean a2 = v.a();
        ?? r1 = a2;
        if (a2) {
            v vVar = this.f6026c;
            vVar.b("FileManager", "Reading resource from filesystem: " + file.getName());
            r1 = vVar;
        }
        try {
            try {
                c(file);
                r1 = new FileInputStream(file);
                try {
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        bArr = new byte[8192];
                    } catch (Throwable th) {
                        th = th;
                        r1 = r1;
                        if (v.a()) {
                            this.f6026c.b("FileManager", "Unknown failure to read file.", th);
                            r1 = r1;
                        }
                        return str;
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    r1 = r1;
                    if (v.a()) {
                        this.f6026c.c("FileManager", "File not found. " + e);
                        r1 = r1;
                    }
                    return str;
                } catch (IOException e3) {
                    e = e3;
                    r1 = r1;
                    if (v.a()) {
                        this.f6026c.b("FileManager", "Failed to read file: " + file.getName() + e);
                        r1 = r1;
                    }
                    return str;
                }
            } finally {
                Utils.close(r1, this.f6025b);
                d(file);
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            r1 = 0;
        } catch (IOException e5) {
            e = e5;
            r1 = 0;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
        }
        while (true) {
            int read = r1.read(bArr, 0, 8192);
            if (read < 0) {
                break;
            }
            try {
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Exception unused) {
                Utils.close(byteArrayOutputStream, this.f6025b);
            }
            return str;
        }
        str = byteArrayOutputStream.toString(C.UTF8_NAME);
        return str;
    }

    public void a(Context context) {
        if (b() && this.f6025b.c()) {
            if (v.a()) {
                this.f6026c.b("FileManager", "Compacting cache...");
            }
            a(c(context), context);
        }
    }

    public boolean a(File file, String str, List<String> list, com.applovin.impl.sdk.d.e eVar) {
        return a(file, str, list, true, eVar);
    }

    public boolean a(InputStream inputStream, File file) {
        if (v.a()) {
            this.f6026c.b("FileManager", "Writing resource to filesystem: " + file.getName());
        }
        FileOutputStream fileOutputStream = null;
        try {
            c(file);
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = inputStream.read(bArr, 0, 8192);
                    if (read < 0) {
                        Utils.close(fileOutputStream2, this.f6025b);
                        d(file);
                        return true;
                    }
                    try {
                        fileOutputStream2.write(bArr, 0, read);
                    } catch (Exception e2) {
                        if (v.a()) {
                            this.f6026c.b("FileManager", "Failed to write next buffer to file", e2);
                        }
                        Utils.close(fileOutputStream2, this.f6025b);
                        d(file);
                        return false;
                    }
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                try {
                    if (v.a()) {
                        this.f6026c.b("FileManager", "Unknown failure to write file.", th);
                    }
                    Utils.close(fileOutputStream, this.f6025b);
                    d(file);
                    return false;
                } catch (Throwable th2) {
                    Utils.close(fileOutputStream, this.f6025b);
                    d(file);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void b(Context context) {
        try {
            a(".nomedia", context);
            File file = new File(e(context), ".nomedia");
            if (file.exists()) {
                return;
            }
            if (v.a()) {
                this.f6026c.b("FileManager", "Creating .nomedia file at " + file.getAbsolutePath());
            }
            if (!file.createNewFile() && v.a()) {
                this.f6026c.e("FileManager", "Failed to create .nomedia file");
            }
        } catch (IOException e2) {
            if (v.a()) {
                this.f6026c.b("FileManager", "Failed to create .nomedia file", e2);
            }
        }
    }

    public boolean b(InputStream inputStream, File file) {
        if (file == null) {
            return false;
        }
        if (v.a()) {
            this.f6026c.b("FileManager", "Caching " + file.getAbsolutePath() + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        if (!a(inputStream, file)) {
            if (v.a()) {
                this.f6026c.e("FileManager", "Unable to cache " + file.getAbsolutePath());
            }
            return false;
        } else if (v.a()) {
            this.f6026c.b("FileManager", "Caching completed for " + file);
            return true;
        } else {
            return true;
        }
    }

    public boolean b(String str, Context context) {
        File a2 = a(str, false, context);
        return (a2 == null || !a2.exists() || a2.isDirectory()) ? false : true;
    }
}
