package com.adcolony.sdk;

import android.content.Context;
import android.os.StatFs;
import com.adcolony.sdk.e0;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v0 {

    /* renamed from: a  reason: collision with root package name */
    private String f598a;

    /* renamed from: b  reason: collision with root package name */
    private String f599b;

    /* renamed from: c  reason: collision with root package name */
    private String f600c;

    /* renamed from: d  reason: collision with root package name */
    private String f601d;

    /* renamed from: e  reason: collision with root package name */
    private File f602e;

    /* renamed from: f  reason: collision with root package name */
    private File f603f;

    /* renamed from: g  reason: collision with root package name */
    private File f604g;

    private long b(StatFs statFs) {
        return statFs.getAvailableBlocksLong();
    }

    private long c(StatFs statFs) {
        return d(statFs);
    }

    private long d(StatFs statFs) {
        return statFs.getBlockSizeLong();
    }

    double a(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return a(statFs) * c(statFs);
        } catch (RuntimeException unused) {
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        k b2 = a.b();
        this.f598a = f() + "/adc3/";
        this.f599b = this.f598a + "media/";
        File file = new File(this.f599b);
        this.f602e = file;
        if (!file.isDirectory()) {
            this.f602e.delete();
            this.f602e.mkdirs();
        }
        if (!this.f602e.isDirectory()) {
            b2.b(true);
            return false;
        } else if (a(this.f599b) < 2.097152E7d) {
            new e0.a().a("Not enough memory available at media path, disabling AdColony.").a(e0.f295f);
            b2.b(true);
            return false;
        } else {
            this.f600c = f() + "/adc3/data/";
            File file2 = new File(this.f600c);
            this.f603f = file2;
            if (!file2.isDirectory()) {
                this.f603f.delete();
            }
            this.f603f.mkdirs();
            this.f601d = this.f598a + "tmp/";
            File file3 = new File(this.f601d);
            this.f604g = file3;
            if (!file3.isDirectory()) {
                this.f604g.delete();
                this.f604g.mkdirs();
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        Context a2 = a.a();
        if (a2 == null) {
            return "";
        }
        return a2.getFilesDir().getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 g() {
        if (new File(a() + "AppVersion").exists()) {
            return c0.c(a() + "AppVersion");
        }
        return c0.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        File file = this.f602e;
        if (file == null || this.f603f == null || this.f604g == null) {
            return false;
        }
        if (!file.isDirectory()) {
            this.f602e.delete();
        }
        if (!this.f603f.isDirectory()) {
            this.f603f.delete();
        }
        if (!this.f604g.isDirectory()) {
            this.f604g.delete();
        }
        this.f602e.mkdirs();
        this.f603f.mkdirs();
        this.f604g.mkdirs();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f600c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return this.f599b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return this.f601d;
    }

    private long a(StatFs statFs) {
        return b(statFs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f1 f1Var) {
        c0.j(f1Var, a() + "AppVersion");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.f598a;
    }
}
