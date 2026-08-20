package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes5.dex */
public class DeferredFileOutputStream extends ThresholdingOutputStream {
    private OutputStream currentOutputStream;
    private FileOutputStream diskOutputStream;
    private java.io.ByteArrayOutputStream memoryOutputStream;
    private File outputFile;

    public DeferredFileOutputStream(int i, File file) {
        super(i);
        this.outputFile = file;
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(i);
        this.memoryOutputStream = byteArrayOutputStream;
        this.currentOutputStream = byteArrayOutputStream;
    }

    @Override // org.apache.commons.io.output.ThresholdingOutputStream
    protected OutputStream getStream() throws IOException {
        return this.currentOutputStream;
    }

    @Override // org.apache.commons.io.output.ThresholdingOutputStream
    protected void thresholdReached() throws IOException {
        byte[] byteArray = this.memoryOutputStream.toByteArray();
        FileOutputStream fileOutputStream = new FileOutputStream(this.outputFile);
        fileOutputStream.write(byteArray);
        this.diskOutputStream = fileOutputStream;
        this.currentOutputStream = fileOutputStream;
        this.memoryOutputStream = null;
    }

    public boolean isInMemory() {
        return !isThresholdExceeded();
    }

    public byte[] getData() {
        java.io.ByteArrayOutputStream byteArrayOutputStream = this.memoryOutputStream;
        if (byteArrayOutputStream != null) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    public File getFile() {
        return this.outputFile;
    }
}
