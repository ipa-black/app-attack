package com.adcolony.sdk;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.C;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.util.LinkedList;
import java.util.zip.GZIPInputStream;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private LinkedList<Runnable> f605a = new LinkedList<>();

    /* renamed from: b  reason: collision with root package name */
    private boolean f606b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {

        /* renamed from: com.adcolony.sdk.w$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0013a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f608a;

            RunnableC0013a(h0 h0Var) {
                this.f608a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.g(this.f608a);
                w.this.a();
            }
        }

        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new RunnableC0013a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f611a;

            a(h0 h0Var) {
                this.f611a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.a(this.f611a, new File(c0.h(this.f611a.a(), "filepath")));
                w.this.a();
            }
        }

        b() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f614a;

            a(h0 h0Var) {
                this.f614a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.d(this.f614a);
                w.this.a();
            }
        }

        c() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f617a;

            a(h0 h0Var) {
                this.f617a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.e(this.f617a);
                w.this.a();
            }
        }

        d() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f620a;

            a(h0 h0Var) {
                this.f620a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.f(this.f620a);
                w.this.a();
            }
        }

        e() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f623a;

            a(h0 h0Var) {
                this.f623a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.b(this.f623a);
                w.this.a();
            }
        }

        f() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f626a;

            a(h0 h0Var) {
                this.f626a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.c(this.f626a);
                w.this.a();
            }
        }

        g() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f629a;

            a(h0 h0Var) {
                this.f629a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.h(this.f629a);
                w.this.a();
            }
        }

        h() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f632a;

            a(h0 h0Var) {
                this.f632a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                w.this.a(this.f632a);
                w.this.a();
            }
        }

        i() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            w.this.a(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(h0 h0Var) {
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "filepath");
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        try {
            int d2 = c0.d(a2, TypedValues.CycleType.S_WAVE_OFFSET);
            int d3 = c0.d(a2, "size");
            boolean b3 = c0.b(a2, "gunzip");
            String h3 = c0.h(a2, "output_filepath");
            InputStream w0Var = new w0(new FileInputStream(h2), d2, d3);
            if (b3) {
                w0Var = new GZIPInputStream(w0Var, 1024);
            }
            if (h3.equals("")) {
                StringBuilder sb = new StringBuilder(w0Var.available());
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = w0Var.read(bArr, 0, 1024);
                    if (read < 0) {
                        break;
                    }
                    sb.append(new String(bArr, 0, read, C.ISO88591_NAME));
                }
                c0.b(b2, "size", sb.length());
                c0.a(b2, "data", sb.toString());
            } else {
                FileOutputStream fileOutputStream = new FileOutputStream(h3);
                byte[] bArr2 = new byte[1024];
                int i2 = 0;
                while (true) {
                    int read2 = w0Var.read(bArr2, 0, 1024);
                    if (read2 < 0) {
                        break;
                    }
                    fileOutputStream.write(bArr2, 0, read2);
                    i2 += read2;
                }
                fileOutputStream.close();
                c0.b(b2, "size", i2);
            }
            w0Var.close();
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            return true;
        } catch (IOException unused) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        } catch (OutOfMemoryError unused2) {
            new e0.a().a("Out of memory error - disabling AdColony.").a(e0.f297h);
            com.adcolony.sdk.a.b().b(true);
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "filepath");
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        String[] list = new File(h2).list();
        if (list != null) {
            e1 a2 = c0.a();
            for (String str : list) {
                f1 b3 = c0.b();
                c0.a(b3, "filename", str);
                if (new File(h2 + str).isDirectory()) {
                    c0.b(b3, "is_folder", true);
                } else {
                    c0.b(b3, "is_folder", false);
                }
                c0.a(a2, b3);
            }
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            c0.a(b2, "entries", a2);
            h0Var.a(b2).c();
            return true;
        }
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
        h0Var.a(b2).c();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(h0 h0Var) {
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "filepath");
        String h3 = c0.h(a2, "encoding");
        boolean z = h3 != null && h3.equals("utf8");
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        try {
            StringBuilder a3 = a(h2, z);
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            c0.a(b2, "data", a3.toString());
            h0Var.a(b2).c();
            return a3.toString();
        } catch (IOException unused) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f(h0 h0Var) {
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "filepath");
        String h3 = c0.h(a2, "new_filepath");
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        try {
            if (new File(h2).renameTo(new File(h3))) {
                c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
                h0Var.a(b2).c();
                return true;
            }
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        } catch (Exception unused) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(h0 h0Var) {
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "filepath");
        String h3 = c0.h(a2, "data");
        boolean equals = c0.h(a2, "encoding").equals("utf8");
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        try {
            a(h2, h3, equals);
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            return true;
        } catch (IOException unused) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h(h0 h0Var) {
        boolean z;
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "filepath");
        String h3 = c0.h(a2, "bundle_path");
        e1 a3 = c0.a(a2, "bundle_filenames");
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        try {
            try {
                File file = new File(h3);
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
                byte[] bArr = new byte[32];
                randomAccessFile.readInt();
                int readInt = randomAccessFile.readInt();
                e1 e1Var = new e1();
                byte[] bArr2 = new byte[1024];
                int i2 = 0;
                while (i2 < readInt) {
                    File file2 = file;
                    randomAccessFile.seek((i2 * 44) + 8);
                    randomAccessFile.read(bArr);
                    randomAccessFile.readInt();
                    int readInt2 = randomAccessFile.readInt();
                    int readInt3 = randomAccessFile.readInt();
                    e1Var.f(readInt3);
                    try {
                        String str = h2 + a3.a(i2);
                        e1 e1Var2 = a3;
                        String str2 = h2;
                        randomAccessFile.seek(readInt2);
                        FileOutputStream fileOutputStream = new FileOutputStream(str);
                        int i3 = readInt3 / 1024;
                        int i4 = readInt3 % 1024;
                        int i5 = 0;
                        while (i5 < i3) {
                            int i6 = i3;
                            try {
                                randomAccessFile.read(bArr2, 0, 1024);
                                fileOutputStream.write(bArr2, 0, 1024);
                                i5++;
                                i3 = i6;
                            } catch (IOException unused) {
                                z = false;
                                new e0.a().a("Failed to find or open ad unit bundle at path: ").a(h3).a(e0.i);
                                c0.b(b2, FirebaseAnalytics.Param.SUCCESS, z);
                                h0Var.a(b2).c();
                                return z;
                            }
                        }
                        randomAccessFile.read(bArr2, 0, i4);
                        fileOutputStream.write(bArr2, 0, i4);
                        fileOutputStream.close();
                        i2++;
                        file = file2;
                        a3 = e1Var2;
                        h2 = str2;
                    } catch (JSONException unused2) {
                        new e0.a().a("Couldn't extract file name at index ").a(i2).a(" unpacking ad unit bundle at ").a(h3).a(e0.f297h);
                        z = false;
                        try {
                            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
                            h0Var.a(b2).c();
                            return false;
                        } catch (IOException unused3) {
                            new e0.a().a("Failed to find or open ad unit bundle at path: ").a(h3).a(e0.i);
                            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, z);
                            h0Var.a(b2).c();
                            return z;
                        }
                    }
                }
                File file3 = file;
                randomAccessFile.close();
                file3.delete();
                c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
                c0.a(b2, "file_sizes", e1Var);
                h0Var.a(b2).c();
                return true;
            } catch (OutOfMemoryError unused4) {
                new e0.a().a("Out of memory error - disabling AdColony.").a(e0.f297h);
                com.adcolony.sdk.a.b().b(true);
                c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
                h0Var.a(b2).c();
                return false;
            }
        } catch (IOException unused5) {
            z = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        com.adcolony.sdk.a.a("FileSystem.save", new a());
        com.adcolony.sdk.a.a("FileSystem.delete", new b());
        com.adcolony.sdk.a.a("FileSystem.listing", new c());
        com.adcolony.sdk.a.a("FileSystem.load", new d());
        com.adcolony.sdk.a.a("FileSystem.rename", new e());
        com.adcolony.sdk.a.a("FileSystem.exists", new f());
        com.adcolony.sdk.a.a("FileSystem.extract", new g());
        com.adcolony.sdk.a.a("FileSystem.unpack_bundle", new h());
        com.adcolony.sdk.a.a("FileSystem.create_directory", new i());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, boolean z) throws IOException {
        BufferedWriter bufferedWriter;
        if (z) {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str), com.adcolony.sdk.h.f341a));
        } else {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str)));
        }
        bufferedWriter.write(str2);
        bufferedWriter.flush();
        bufferedWriter.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(h0 h0Var, File file) {
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        if (a(file)) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            return true;
        }
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
        h0Var.a(b2).c();
        return false;
    }

    boolean a(File file) {
        try {
            if (file.isDirectory()) {
                if (file.list().length == 0) {
                    return file.delete();
                }
                String[] list = file.list();
                if (list.length > 0) {
                    return a(new File(file, list[0]));
                }
                if (file.list().length == 0) {
                    return file.delete();
                }
                return false;
            }
            return file.delete();
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringBuilder a(String str, boolean z) throws IOException {
        BufferedReader bufferedReader;
        File file = new File(str);
        StringBuilder sb = new StringBuilder((int) file.length());
        if (z) {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file.getAbsolutePath()), com.adcolony.sdk.h.f341a));
        } else {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file.getAbsolutePath())));
        }
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine);
                sb.append("\n");
            } else {
                bufferedReader.close();
                return sb;
            }
        }
    }

    private boolean a(String str) {
        return new File(str).exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "filepath");
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        try {
            if (new File(h2).mkdir()) {
                c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
                h0Var.a(b2).c();
                return true;
            }
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            return false;
        } catch (Exception unused) {
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Runnable runnable) {
        if (this.f605a.isEmpty() && !this.f606b) {
            this.f606b = true;
            runnable.run();
            return;
        }
        this.f605a.push(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f606b = false;
        if (this.f605a.isEmpty()) {
            return;
        }
        this.f606b = true;
        this.f605a.removeLast().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "filepath");
        com.adcolony.sdk.a.b().z().h();
        f1 b2 = c0.b();
        try {
            boolean a2 = a(h2);
            c0.b(b2, IronSourceConstants.EVENTS_RESULT, a2);
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            return a2;
        } catch (Exception e2) {
            c0.b(b2, IronSourceConstants.EVENTS_RESULT, false);
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
            h0Var.a(b2).c();
            e2.printStackTrace();
            return false;
        }
    }
}
