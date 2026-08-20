package com.bykv.vk.openvk.component.video.Qhi.cJ;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* compiled from: RandomAccessFileWrapper.java */
/* loaded from: classes2.dex */
class hm {
    private final RandomAccessFile Qhi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hm(File file, String str) throws Qhi {
        try {
            this.Qhi = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e2) {
            throw new Qhi(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(long j) throws Qhi {
        try {
            this.Qhi.seek(j);
        } catch (IOException e2) {
            throw new Qhi(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(byte[] bArr, int i, int i2) throws Qhi {
        try {
            this.Qhi.write(bArr, i, i2);
        } catch (IOException e2) {
            throw new Qhi(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int Qhi(byte[] bArr) throws Qhi {
        try {
            return this.Qhi.read(bArr);
        } catch (IOException e2) {
            throw new Qhi(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi() {
        com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(this.Qhi);
    }

    /* compiled from: RandomAccessFileWrapper.java */
    /* loaded from: classes2.dex */
    static class Qhi extends Exception {
        Qhi(Throwable th) {
            super(th);
        }
    }
}
