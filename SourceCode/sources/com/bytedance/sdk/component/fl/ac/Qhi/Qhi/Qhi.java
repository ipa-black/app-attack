package com.bytedance.sdk.component.fl.ac.Qhi.Qhi;

import android.util.Log;
import com.appnext.base.b.d;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;
/* compiled from: DiskLruCache.java */
/* loaded from: classes2.dex */
public final class Qhi implements Closeable {
    static final Pattern Qhi = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream ac = new OutputStream() { // from class: com.bytedance.sdk.component.fl.ac.Qhi.Qhi.Qhi.2
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    };
    private final File CJ;
    private final File ROR;
    private final int Sf;
    private final File Tgh;
    private final int WAv;
    final ExecutorService cJ;
    private final File fl;
    private long hm;
    private int iMK;
    private Writer zc;
    private long Gm = 0;
    private final LinkedHashMap<String, cJ> ABk = new LinkedHashMap<>(0, 0.75f, true);
    private long pA = -1;
    private long hpZ = 0;
    private final Callable<Void> HzH = new Callable<Void>() { // from class: com.bytedance.sdk.component.fl.ac.Qhi.Qhi.Qhi.1
        @Override // java.util.concurrent.Callable
        /* renamed from: Qhi */
        public Void call() throws Exception {
            synchronized (Qhi.this) {
                if (Qhi.this.zc == null) {
                    return null;
                }
                Qhi.this.Sf();
                if (Qhi.this.Tgh()) {
                    Qhi.this.fl();
                    Qhi.this.iMK = 0;
                }
                return null;
            }
        }
    };

    private Qhi(File file, int i, int i2, long j, ExecutorService executorService) {
        this.CJ = file;
        this.Sf = i;
        this.fl = new File(file, "journal");
        this.Tgh = new File(file, "journal.tmp");
        this.ROR = new File(file, "journal.bkp");
        this.WAv = i2;
        this.hm = j;
        this.cJ = executorService;
    }

    public static Qhi Qhi(File file, int i, int i2, long j, ExecutorService executorService) throws IOException {
        if (j > 0) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("valueCount <= 0");
            }
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    Qhi(file2, file3, false);
                }
            }
            Qhi qhi = new Qhi(file, i, i2, j, executorService);
            if (qhi.fl.exists()) {
                try {
                    qhi.ac();
                    qhi.CJ();
                    return qhi;
                } catch (IOException e2) {
                    Log.w("DiskLruCache ", file + " is corrupt: " + e2.getMessage() + ", removing");
                    qhi.cJ();
                }
            }
            file.mkdirs();
            Qhi qhi2 = new Qhi(file, i, i2, j, executorService);
            qhi2.fl();
            return qhi2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private void ac() throws IOException {
        com.bytedance.sdk.component.fl.ac.Qhi.Qhi.ac acVar = new com.bytedance.sdk.component.fl.ac.Qhi.Qhi.ac(new FileInputStream(this.fl), fl.Qhi);
        try {
            String Qhi2 = acVar.Qhi();
            String Qhi3 = acVar.Qhi();
            String Qhi4 = acVar.Qhi();
            String Qhi5 = acVar.Qhi();
            String Qhi6 = acVar.Qhi();
            if (!"libcore.io.DiskLruCache".equals(Qhi2) || !IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(Qhi3) || !Integer.toString(this.Sf).equals(Qhi4) || !Integer.toString(this.WAv).equals(Qhi5) || !"".equals(Qhi6)) {
                throw new IOException("unexpected journal header: [" + Qhi2 + ", " + Qhi3 + ", " + Qhi5 + ", " + Qhi6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    CJ(acVar.Qhi());
                    i++;
                } catch (EOFException unused) {
                    this.iMK = i - this.ABk.size();
                    if (acVar.cJ()) {
                        fl();
                    } else {
                        this.zc = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.fl, true), fl.Qhi));
                    }
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(acVar);
                    return;
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(acVar);
            throw th;
        }
    }

    private void CJ(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(String.valueOf(str)));
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            substring = str.substring(i);
            if (indexOf == 6 && str.startsWith("REMOVE")) {
                this.ABk.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        cJ cJVar = this.ABk.get(substring);
        if (cJVar == null) {
            cJVar = new cJ(substring);
            this.ABk.put(substring, cJVar);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            cJVar.CJ = true;
            cJVar.fl = null;
            cJVar.Qhi(split);
        } else if (indexOf2 != -1 || indexOf != 5 || !str.startsWith("DIRTY")) {
            if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: ".concat(String.valueOf(str)));
            }
        } else {
            cJVar.fl = new C0200Qhi(cJVar);
        }
    }

    private void CJ() throws IOException {
        Qhi(this.Tgh);
        Iterator<cJ> it = this.ABk.values().iterator();
        while (it.hasNext()) {
            cJ next = it.next();
            int i = 0;
            if (next.fl == null) {
                while (i < this.WAv) {
                    this.Gm += next.ac[i];
                    i++;
                }
            } else {
                next.fl = null;
                while (i < this.WAv) {
                    Qhi(next.Qhi(i));
                    Qhi(next.cJ(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void fl() throws IOException {
        Writer writer = this.zc;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.Tgh), fl.Qhi));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write("\n");
        bufferedWriter.write(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.Sf));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.WAv));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (cJ cJVar : this.ABk.values()) {
            if (cJVar.fl != null) {
                bufferedWriter.write("DIRTY " + cJVar.cJ + '\n');
            } else {
                bufferedWriter.write("CLEAN " + cJVar.cJ + cJVar.Qhi() + '\n');
            }
        }
        bufferedWriter.close();
        if (this.fl.exists()) {
            Qhi(this.fl, this.ROR, true);
        }
        Qhi(this.Tgh, this.fl, false);
        this.ROR.delete();
        this.zc = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.fl, true), fl.Qhi));
    }

    private static void Qhi(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void Qhi(File file, File file2, boolean z) throws IOException {
        if (z) {
            Qhi(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized ac Qhi(String str) throws IOException {
        InputStream inputStream;
        ROR();
        fl(str);
        cJ cJVar = this.ABk.get(str);
        if (cJVar == null) {
            return null;
        }
        if (cJVar.CJ) {
            InputStream[] inputStreamArr = new InputStream[this.WAv];
            for (int i = 0; i < this.WAv; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(cJVar.Qhi(i));
                } catch (FileNotFoundException unused) {
                    for (int i2 = 0; i2 < this.WAv && (inputStream = inputStreamArr[i2]) != null; i2++) {
                        com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(inputStream);
                    }
                    return null;
                }
            }
            this.iMK++;
            this.zc.append((CharSequence) ("READ " + str + '\n'));
            if (Tgh()) {
                this.cJ.submit(this.HzH);
            }
            return new ac(str, cJVar.Tgh, inputStreamArr, cJVar.ac);
        }
        return null;
    }

    public C0200Qhi cJ(String str) throws IOException {
        return Qhi(str, -1L);
    }

    private synchronized C0200Qhi Qhi(String str, long j) throws IOException {
        ROR();
        fl(str);
        cJ cJVar = this.ABk.get(str);
        if (j == -1 || (cJVar != null && cJVar.Tgh == j)) {
            if (cJVar == null) {
                cJVar = new cJ(str);
                this.ABk.put(str, cJVar);
            } else if (cJVar.fl != null) {
                return null;
            }
            C0200Qhi c0200Qhi = new C0200Qhi(cJVar);
            cJVar.fl = c0200Qhi;
            this.zc.write("DIRTY " + str + '\n');
            this.zc.flush();
            return c0200Qhi;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Qhi(C0200Qhi c0200Qhi, boolean z) throws IOException {
        cJ cJVar = c0200Qhi.cJ;
        if (cJVar.fl != c0200Qhi) {
            throw new IllegalStateException();
        }
        if (z && !cJVar.CJ) {
            for (int i = 0; i < this.WAv; i++) {
                if (!c0200Qhi.ac[i]) {
                    c0200Qhi.cJ();
                    throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i)));
                } else if (!cJVar.cJ(i).exists()) {
                    c0200Qhi.cJ();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.WAv; i2++) {
            File cJ2 = cJVar.cJ(i2);
            if (z) {
                if (cJ2.exists()) {
                    File Qhi2 = cJVar.Qhi(i2);
                    cJ2.renameTo(Qhi2);
                    long j = cJVar.ac[i2];
                    long length = Qhi2.length();
                    cJVar.ac[i2] = length;
                    this.Gm = (this.Gm - j) + length;
                }
            } else {
                Qhi(cJ2);
            }
        }
        this.iMK++;
        cJVar.fl = null;
        if (cJVar.CJ | z) {
            cJVar.CJ = true;
            this.zc.write("CLEAN " + cJVar.cJ + cJVar.Qhi() + '\n');
            if (z) {
                long j2 = this.hpZ;
                this.hpZ = 1 + j2;
                cJVar.Tgh = j2;
            }
        } else {
            this.ABk.remove(cJVar.cJ);
            this.zc.write("REMOVE " + cJVar.cJ + '\n');
        }
        this.zc.flush();
        if (this.Gm > this.hm || Tgh()) {
            this.cJ.submit(this.HzH);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Tgh() {
        int i = this.iMK;
        return i >= 2000 && i >= this.ABk.size();
    }

    public synchronized boolean ac(String str) throws IOException {
        ROR();
        fl(str);
        cJ cJVar = this.ABk.get(str);
        if (cJVar != null && cJVar.fl == null) {
            for (int i = 0; i < this.WAv; i++) {
                File Qhi2 = cJVar.Qhi(i);
                if (Qhi2.exists() && !Qhi2.delete()) {
                    throw new IOException("failed to delete ".concat(String.valueOf(Qhi2)));
                }
                this.Gm -= cJVar.ac[i];
                cJVar.ac[i] = 0;
            }
            this.iMK++;
            this.zc.append((CharSequence) ("REMOVE " + str + '\n'));
            this.ABk.remove(str);
            if (Tgh()) {
                this.cJ.submit(this.HzH);
            }
            return true;
        }
        return false;
    }

    private void ROR() {
        if (this.zc == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void Qhi() throws IOException {
        ROR();
        Sf();
        this.zc.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.zc == null) {
            return;
        }
        Iterator it = new ArrayList(this.ABk.values()).iterator();
        while (it.hasNext()) {
            cJ cJVar = (cJ) it.next();
            if (cJVar.fl != null) {
                cJVar.fl.cJ();
            }
        }
        Sf();
        this.zc.close();
        this.zc = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sf() throws IOException {
        long j = this.hm;
        long j2 = this.pA;
        if (j2 >= 0) {
            j = j2;
        }
        while (this.Gm > j) {
            ac(this.ABk.entrySet().iterator().next().getKey());
        }
        this.pA = -1L;
    }

    public void cJ() throws IOException {
        close();
        fl.Qhi(this.CJ);
    }

    private void fl(String str) {
        if (!Qhi.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes2.dex */
    public final class ac implements Closeable {
        private final InputStream[] CJ;
        private final long ac;
        private final String cJ;
        private final long[] fl;

        private ac(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.cJ = str;
            this.ac = j;
            this.CJ = inputStreamArr;
            this.fl = jArr;
        }

        public InputStream Qhi(int i) {
            return this.CJ[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.CJ) {
                com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(inputStream);
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* renamed from: com.bytedance.sdk.component.fl.ac.Qhi.Qhi.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0200Qhi {
        private boolean CJ;
        private final boolean[] ac;
        private final cJ cJ;
        private boolean fl;

        private C0200Qhi(cJ cJVar) {
            this.cJ = cJVar;
            this.ac = cJVar.CJ ? null : new boolean[Qhi.this.WAv];
        }

        public OutputStream Qhi(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C0201Qhi c0201Qhi;
            if (i < 0 || i >= Qhi.this.WAv) {
                throw new IllegalArgumentException("Expected index " + i + " to be greater than 0 and less than the maximum value count of " + Qhi.this.WAv);
            }
            synchronized (Qhi.this) {
                if (this.cJ.fl != this) {
                    throw new IllegalStateException();
                }
                if (!this.cJ.CJ) {
                    this.ac[i] = true;
                }
                File cJ = this.cJ.cJ(i);
                try {
                    fileOutputStream = new FileOutputStream(cJ);
                } catch (FileNotFoundException unused) {
                    Qhi.this.CJ.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(cJ);
                    } catch (FileNotFoundException unused2) {
                        return Qhi.ac;
                    }
                }
                c0201Qhi = new C0201Qhi(fileOutputStream);
            }
            return c0201Qhi;
        }

        public void Qhi() throws IOException {
            if (this.CJ) {
                Qhi.this.Qhi(this, false);
                Qhi.this.ac(this.cJ.cJ);
            } else {
                Qhi.this.Qhi(this, true);
            }
            this.fl = true;
        }

        public void cJ() throws IOException {
            Qhi.this.Qhi(this, false);
        }

        /* compiled from: DiskLruCache.java */
        /* renamed from: com.bytedance.sdk.component.fl.ac.Qhi.Qhi.Qhi$Qhi$Qhi  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private class C0201Qhi extends FilterOutputStream {
            private C0201Qhi(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException unused) {
                    C0200Qhi.this.CJ = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException unused) {
                    C0200Qhi.this.CJ = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.out.close();
                } catch (IOException unused) {
                    C0200Qhi.this.CJ = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException unused) {
                    C0200Qhi.this.CJ = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiskLruCache.java */
    /* loaded from: classes2.dex */
    public final class cJ {
        private boolean CJ;
        private long Tgh;
        private final long[] ac;
        private final String cJ;
        private C0200Qhi fl;

        private cJ(String str) {
            this.cJ = str;
            this.ac = new long[Qhi.this.WAv];
        }

        public String Qhi() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.ac) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void Qhi(String[] strArr) throws IOException {
            if (strArr.length != Qhi.this.WAv) {
                throw cJ(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.ac[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw cJ(strArr);
                }
            }
        }

        private IOException cJ(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File Qhi(int i) {
            return new File(Qhi.this.CJ, this.cJ + "." + i);
        }

        public File cJ(int i) {
            return new File(Qhi.this.CJ, this.cJ + "." + i + d.eY);
        }
    }
}
