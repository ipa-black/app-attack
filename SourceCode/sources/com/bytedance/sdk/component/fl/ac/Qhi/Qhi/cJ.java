package com.bytedance.sdk.component.fl.ac.Qhi.Qhi;

import android.util.Log;
import com.bytedance.sdk.component.fl.ac.Qhi.Qhi.Qhi;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
/* compiled from: LruCountDiskCache.java */
/* loaded from: classes2.dex */
public class cJ implements com.bytedance.sdk.component.fl.ac {
    private long Qhi;
    private Qhi cJ;

    public cJ(File file, long j, ExecutorService executorService) {
        this.Qhi = j;
        try {
            this.cJ = Qhi.Qhi(file, 20210302, 1, j, executorService);
        } catch (IOException e2) {
            Log.w("LruCountDiskCache", e2.toString());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.component.fl.ac
    public InputStream Qhi(String str) {
        Qhi qhi = this.cJ;
        if (qhi == null) {
            return null;
        }
        try {
            Qhi.ac Qhi = qhi.Qhi(str);
            if (Qhi != null) {
                return Qhi.Qhi(0);
            }
        } catch (IOException e2) {
            Log.w("LruCountDiskCache", e2.getMessage());
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public boolean Qhi(String str, byte[] bArr) {
        Closeable closeable;
        Qhi.C0200Qhi cJ;
        Qhi qhi = this.cJ;
        if (qhi == null || bArr == null || str == null) {
            return false;
        }
        Closeable closeable2 = null;
        Qhi.C0200Qhi c0200Qhi = null;
        try {
            try {
                cJ = qhi.cJ(str);
            } catch (IOException e2) {
                e = e2;
                closeable = null;
            }
            try {
                if (cJ == null) {
                    Log.w("LruCountDiskCache", "save " + str + " failed for edit null");
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(null);
                    return false;
                }
                OutputStream Qhi = cJ.Qhi(0);
                if (Qhi == Qhi.ac) {
                    Log.w("LruCountDiskCache", "save " + str + " failed for null OutputStream");
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(Qhi);
                    return false;
                }
                Qhi.write(bArr);
                cJ.Qhi();
                this.cJ.Qhi();
                com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(Qhi);
                return true;
            } catch (IOException e3) {
                e = e3;
                closeable = null;
                c0200Qhi = cJ;
                try {
                    Log.w("LruCountDiskCache", e.toString());
                    if (c0200Qhi != null) {
                        try {
                            c0200Qhi.cJ();
                        } catch (IOException unused) {
                        }
                    }
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(closeable);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    closeable2 = closeable;
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(closeable2);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(closeable2);
            throw th;
        }
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    /* renamed from: cJ  reason: avoid collision after fix types in other method */
    public byte[] Qhi(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStream;
        Qhi qhi = this.cJ;
        InputStream inputStream2 = null;
        if (qhi == null || str == null) {
            return null;
        }
        try {
            Qhi.ac Qhi = qhi.Qhi(str);
            if (Qhi == null) {
                com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(null);
                com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(null);
                return null;
            }
            inputStream = Qhi.Qhi(0);
            if (inputStream != null) {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                        } catch (IOException e2) {
                            e = e2;
                            Log.w("LruCountDiskCache", e.toString());
                            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(inputStream);
                            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(byteArrayOutputStream);
                            return null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream2 = inputStream;
                        com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(inputStream2);
                        com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(byteArrayOutputStream);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    byteArrayOutputStream = null;
                    Log.w("LruCountDiskCache", e.toString());
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(inputStream);
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(byteArrayOutputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream = null;
                    inputStream2 = inputStream;
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(inputStream2);
                    com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(byteArrayOutputStream);
                    throw th;
                }
            } else {
                byteArrayOutputStream = null;
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(inputStream);
            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(byteArrayOutputStream);
            return byteArray;
        } catch (IOException e4) {
            e = e4;
            inputStream = null;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(inputStream2);
            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(byteArrayOutputStream);
            throw th;
        }
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    /* renamed from: ac */
    public boolean cJ(String str) {
        try {
            try {
                Qhi.ac Qhi = this.cJ.Qhi(str);
                boolean z = Qhi != null;
                com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(Qhi);
                return z;
            } catch (IOException e2) {
                Log.w("LruCountDiskCache", e2.getMessage());
                com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(null);
                return false;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.fl.ac.ac.cJ.Qhi(null);
            throw th;
        }
    }
}
