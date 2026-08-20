package com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.component.cJ.Qhi.HzH;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
/* compiled from: MediaDownloadPlayCacheImpl.java */
/* loaded from: classes2.dex */
public class cJ implements ac {
    private File CJ;
    private final com.bykv.vk.openvk.component.video.api.ac.ac WAv;
    private File ac;
    private long fl;
    private RandomAccessFile hm;
    private volatile long Qhi = -2147483648L;
    private final Object cJ = new Object();
    private volatile long Tgh = -1;
    private volatile boolean ROR = false;
    private volatile boolean Sf = false;

    public cJ(Context context, com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        this.fl = 0L;
        this.hm = null;
        this.WAv = acVar;
        try {
            this.ac = com.bykv.vk.openvk.component.video.Qhi.fl.cJ.cJ(acVar.cJ(), acVar.iMK());
            this.CJ = com.bykv.vk.openvk.component.video.Qhi.fl.cJ.ac(acVar.cJ(), acVar.iMK());
            if (CJ()) {
                this.hm = new RandomAccessFile(this.CJ, "r");
            } else {
                this.hm = new RandomAccessFile(this.ac, "rw");
            }
            if (CJ()) {
                return;
            }
            this.fl = this.ac.length();
            Qhi();
        } catch (Throwable unused) {
            new Object[]{"Error using file ", acVar.ABk(), " as disc cache"};
        }
    }

    private boolean CJ() {
        return this.CJ.exists();
    }

    public void Qhi() {
        zc.Qhi qhi;
        if (com.bykv.vk.openvk.component.video.api.ac.CJ() != null) {
            qhi = com.bykv.vk.openvk.component.video.api.ac.CJ().cJ();
        } else {
            qhi = new zc.Qhi("v_cache");
        }
        qhi.Qhi(this.WAv.hpZ(), TimeUnit.MILLISECONDS).cJ(this.WAv.HzH(), TimeUnit.MILLISECONDS).ac(this.WAv.kYc(), TimeUnit.MILLISECONDS);
        zc Qhi = qhi.Qhi();
        new Object[]{"RANGE, bytes=", Long.valueOf(this.fl), " file hash=", this.WAv.iMK()};
        Qhi.Qhi(new iMK.Qhi().Qhi("RANGE", "bytes=" + this.fl + "-").cJ(this.WAv.ABk()).Qhi().Qhi("videoLoadWhenPlaying").Qhi(9).cJ()).Qhi(new com.bytedance.sdk.component.cJ.Qhi.ac() { // from class: com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi.cJ.1
            @Override // com.bytedance.sdk.component.cJ.Qhi.ac
            public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ cJVar, IOException iOException) {
                cJ.this.Sf = false;
                cJ.this.Qhi = -1L;
            }

            @Override // com.bytedance.sdk.component.cJ.Qhi.ac
            public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ cJVar, hpZ hpz) throws IOException {
                HzH hzH;
                InputStream inputStream;
                boolean z;
                boolean z2;
                int i;
                if (hpz == null) {
                    cJ.this.Sf = false;
                    cJ cJVar2 = cJ.this;
                    cJVar2.Qhi = cJVar2.Tgh;
                    return;
                }
                InputStream inputStream2 = null;
                try {
                    cJ.this.Sf = hpz.CJ();
                    if (cJ.this.Sf) {
                        hzH = hpz.Tgh();
                        try {
                            if (cJ.this.Sf && hzH != null) {
                                cJ.this.Qhi = hzH.Qhi() + cJ.this.fl;
                                inputStream2 = hzH.ac();
                            }
                            inputStream = inputStream2;
                            if (inputStream == null) {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Throwable unused) {
                                        return;
                                    }
                                }
                                if (z2) {
                                    if (i == 0) {
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            try {
                                byte[] bArr = new byte[8192];
                                long j = cJ.this.fl;
                                int i2 = 0;
                                long j2 = 0;
                                while (true) {
                                    int read = inputStream.read(bArr, i2, 8192 - i2);
                                    z = true;
                                    if (read == -1) {
                                        break;
                                    }
                                    i2 += read;
                                    j2 += read;
                                    if (j2 % PlaybackStateCompat.ACTION_PLAY_FROM_URI != 0 && j2 != cJ.this.Qhi - cJ.this.fl) {
                                        z = false;
                                    }
                                    new Object[]{"Write segment,execAppend =", Boolean.valueOf(z), " offset=", Integer.valueOf(i2), " totalLength = ", Long.valueOf(cJ.this.Qhi), " saveSize =", Long.valueOf(j2), " startSaved=", Long.valueOf(cJ.this.fl), " fileHash=", cJ.this.WAv.iMK(), " url=", cJ.this.WAv.ABk()};
                                    if (z) {
                                        synchronized (cJ.this.cJ) {
                                            com.bykv.vk.openvk.component.video.Qhi.fl.cJ.Qhi(cJ.this.hm, bArr, Long.valueOf(j).intValue(), i2, cJ.this.WAv.iMK());
                                        }
                                        j += i2;
                                        i2 = 0;
                                    }
                                }
                                Long valueOf = Long.valueOf(cJ.this.fl);
                                Long valueOf2 = Long.valueOf(cJ.this.Qhi);
                                Long valueOf3 = Long.valueOf(j2);
                                if (j2 != cJ.this.Qhi - cJ.this.fl) {
                                    z = false;
                                }
                                new Object[]{"Write segment,Write over, startIndex =", valueOf, " totalLength = ", valueOf2, " saveSize = ", valueOf3, " writeEndSegment =", Boolean.valueOf(z), " url=", cJ.this.WAv.ABk()};
                                inputStream2 = inputStream;
                            } catch (Throwable unused2) {
                                try {
                                    cJ.this.Sf = false;
                                    cJ cJVar3 = cJ.this;
                                    cJVar3.Qhi = cJVar3.Tgh;
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable unused3) {
                                            return;
                                        }
                                    }
                                    if (hzH != null) {
                                        hzH.close();
                                    }
                                    if (hpz != null) {
                                        hpz.close();
                                    }
                                    if (cJ.this.Sf && cJ.this.ac.length() == cJ.this.Qhi) {
                                        cJ.this.Tgh();
                                        return;
                                    }
                                    return;
                                } finally {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable unused4) {
                                        }
                                    }
                                    if (hzH != null) {
                                        hzH.close();
                                    }
                                    if (hpz != null) {
                                        hpz.close();
                                    }
                                    if (cJ.this.Sf && cJ.this.ac.length() == cJ.this.Qhi) {
                                        cJ.this.Tgh();
                                    }
                                }
                            }
                        } catch (Throwable unused5) {
                            inputStream = null;
                        }
                    } else {
                        cJ.this.Sf = false;
                        cJ cJVar4 = cJ.this;
                        cJVar4.Qhi = cJVar4.Tgh;
                        hzH = null;
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Throwable unused6) {
                            return;
                        }
                    }
                    if (hzH != null) {
                        hzH.close();
                    }
                    if (hpz != null) {
                        hpz.close();
                    }
                    if (cJ.this.Sf && cJ.this.ac.length() == cJ.this.Qhi) {
                        cJ.this.Tgh();
                    }
                } catch (Throwable unused7) {
                    hzH = null;
                    inputStream = null;
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi.ac
    public int Qhi(long j, byte[] bArr, int i, int i2) throws IOException {
        try {
            if (j == this.Qhi) {
                return -1;
            }
            int i3 = 0;
            int i4 = 0;
            while (!this.ROR) {
                synchronized (this.cJ) {
                    long fl = fl();
                    if (j < fl) {
                        new StringBuilder("read:  read ").append(j);
                        this.hm.seek(j);
                        i4 = this.hm.read(bArr, i, i2);
                    } else {
                        new Object[]{"read: wait at ", Long.valueOf(j), "  file size = ", Long.valueOf(fl)};
                        i3 += 33;
                        this.cJ.wait(33L);
                    }
                }
                if (i4 > 0) {
                    return i4;
                }
                if (i3 >= 20000) {
                    throw new SocketTimeoutException();
                }
            }
            return -1;
        } catch (Throwable th) {
            if (th instanceof IOException) {
                throw th;
            }
            throw new IOException();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi.ac
    public void cJ() {
        try {
            if (!this.ROR) {
                this.hm.close();
            }
            File file = this.ac;
            if (file != null) {
                file.setLastModified(System.currentTimeMillis());
            }
            File file2 = this.CJ;
            if (file2 != null) {
                file2.setLastModified(System.currentTimeMillis());
            }
        } catch (Throwable unused) {
        }
        this.ROR = true;
    }

    private long fl() {
        if (CJ()) {
            return this.CJ.length();
        }
        return this.ac.length();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Tgh() throws IOException {
        synchronized (this.cJ) {
            if (CJ()) {
                new Object[]{"complete: isCompleted ", this.WAv.ABk(), this.WAv.iMK()};
            } else if (!this.ac.renameTo(this.CJ)) {
                throw new IOException("Error renaming file " + this.ac + " to " + this.CJ + " for completion!");
            } else {
                RandomAccessFile randomAccessFile = this.hm;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.hm = new RandomAccessFile(this.CJ, "rw");
                new Object[]{"complete: rename ", this.WAv.iMK(), this.WAv.ABk()};
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi.ac
    public long ac() throws IOException {
        if (CJ()) {
            this.Qhi = this.CJ.length();
        } else {
            synchronized (this.cJ) {
                int i = 0;
                do {
                    if (this.Qhi == -2147483648L) {
                        i += 15;
                        try {
                            this.cJ.wait(5L);
                        } catch (InterruptedException unused) {
                            throw new IOException("total length InterruptException");
                        }
                    }
                } while (i <= 20000);
                return -1L;
            }
        }
        new Object[]{"totalLength= ", Long.valueOf(this.Qhi)};
        return this.Qhi;
    }
}
