package org.apache.commons.io.output;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes5.dex */
public class LockableFileWriter extends Writer {
    private static final String LCK = ".lck";
    static /* synthetic */ Class class$org$apache$commons$io$output$LockableFileWriter;
    private boolean append;
    private File lockFile;
    private FileWriter writer;

    public LockableFileWriter(String str) throws IOException {
        this(str, false, (String) null);
    }

    public LockableFileWriter(String str, boolean z) throws IOException {
        this(str, z, (String) null);
    }

    public LockableFileWriter(String str, boolean z, String str2) throws IOException {
        this(new File(str), z, str2);
    }

    public LockableFileWriter(File file) throws IOException {
        this(file, false, (String) null);
    }

    public LockableFileWriter(File file, boolean z) throws IOException {
        this(file, z, (String) null);
    }

    public LockableFileWriter(File file, boolean z, String str) throws IOException {
        this.lockFile = null;
        this.writer = null;
        this.append = z;
        str = str == null ? System.getProperty("java.io.tmpdir") : str;
        testLockDir(new File(str));
        this.lockFile = new File(str, new StringBuffer().append(file.getName()).append(LCK).toString());
        createLock();
        this.writer = new FileWriter(file.getAbsolutePath(), this.append);
    }

    private void testLockDir(File file) throws IOException {
        if (!file.exists()) {
            throw new IOException(new StringBuffer("Could not find lockDir: ").append(file.getAbsolutePath()).toString());
        }
        if (!file.canWrite()) {
            throw new IOException(new StringBuffer("Could not write to lockDir: ").append(file.getAbsolutePath()).toString());
        }
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    private void createLock() throws IOException {
        Class cls = class$org$apache$commons$io$output$LockableFileWriter;
        if (cls == null) {
            cls = class$("org.apache.commons.io.output.LockableFileWriter");
            class$org$apache$commons$io$output$LockableFileWriter = cls;
        }
        synchronized (cls) {
            if (!this.lockFile.createNewFile()) {
                throw new IOException(new StringBuffer("Can't write file, lock ").append(this.lockFile.getAbsolutePath()).append(" exists").toString());
            }
            this.lockFile.deleteOnExit();
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.writer.close();
        } finally {
            this.lockFile.delete();
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.writer.write(cArr, i, i2);
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.writer.flush();
    }
}
