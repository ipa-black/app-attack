package com.appodeal.ads.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.n5;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes2.dex */
public final class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final a f7784a = new a(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    public String f7785b;

    /* renamed from: c  reason: collision with root package name */
    public File f7786c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7787d;

    /* renamed from: e  reason: collision with root package name */
    public b f7788e;

    /* renamed from: f  reason: collision with root package name */
    public int f7789f;

    /* renamed from: g  reason: collision with root package name */
    public int f7790g;

    /* loaded from: classes2.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            b bVar = l.this.f7788e;
            if (bVar != null) {
                int i = message.what;
                if (i == 0) {
                    bVar.a();
                } else if (i == 1) {
                    bVar.a((String) message.obj);
                } else if (i != 2) {
                } else {
                    bVar.a((Bitmap) message.obj);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void a(Bitmap bitmap);

        void a(String str);
    }

    public l(Context context, String str, boolean z, b bVar) {
        if (context == null) {
            bVar.a();
            return;
        }
        this.f7785b = str;
        this.f7787d = z;
        this.f7788e = bVar;
        int a2 = p.a(context);
        this.f7789f = a2;
        this.f7790g = p.a(a2, z);
        if (n5.a(context)) {
            this.f7786c = n5.c(context);
        }
    }

    public static Bitmap a(byte[] bArr, BitmapFactory.Options options) {
        ByteArrayOutputStream byteArrayOutputStream;
        options.inJustDecodeBounds = false;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
            try {
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                decodeByteArray.compress(Bitmap.CompressFormat.PNG, 85, byteArrayOutputStream);
                decodeByteArray.recycle();
                Bitmap decodeStream = BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                n5.a((OutputStream) byteArrayOutputStream);
                n5.a((Closeable) byteArrayOutputStream);
                return decodeStream;
            } catch (Exception e2) {
                e = e2;
                try {
                    Log.log(e);
                    n5.a((OutputStream) byteArrayOutputStream);
                    n5.a((Closeable) byteArrayOutputStream);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    n5.a((OutputStream) byteArrayOutputStream);
                    n5.a((Closeable) byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                n5.a((OutputStream) byteArrayOutputStream);
                n5.a((Closeable) byteArrayOutputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = byteArrayOutputStream2;
            n5.a((OutputStream) byteArrayOutputStream);
            n5.a((Closeable) byteArrayOutputStream);
            throw th;
        }
    }

    public static HttpURLConnection a(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(Constants.SERVER_TIMEOUT_MS);
            httpURLConnection.setReadTimeout(Constants.SERVER_TIMEOUT_MS);
            try {
                if (httpURLConnection instanceof HttpsURLConnection) {
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
                    httpsURLConnection.setSSLSocketFactory(new t(httpsURLConnection.getSSLSocketFactory()));
                }
            } catch (Exception e2) {
                Log.log(e2);
            }
            httpURLConnection.connect();
            return httpURLConnection;
        } catch (Exception unused) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.scheme("http");
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(buildUpon.build().toString()).openConnection();
            httpURLConnection2.setConnectTimeout(Constants.SERVER_TIMEOUT_MS);
            httpURLConnection2.setReadTimeout(Constants.SERVER_TIMEOUT_MS);
            httpURLConnection2.connect();
            return httpURLConnection2;
        }
    }

    public static void a(File file, byte[] bArr, BitmapFactory.Options options) {
        FileOutputStream fileOutputStream;
        options.inJustDecodeBounds = false;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
            fileOutputStream = fileOutputStream2;
        }
        try {
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options).compress(Bitmap.CompressFormat.PNG, 85, fileOutputStream);
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Log.log(e);
            fileOutputStream = fileOutputStream2;
            n5.a((OutputStream) fileOutputStream);
            n5.a((Closeable) fileOutputStream);
        } catch (Throwable th2) {
            th = th2;
            n5.a((OutputStream) fileOutputStream);
            n5.a((Closeable) fileOutputStream);
            throw th;
        }
        n5.a((OutputStream) fileOutputStream);
        n5.a((Closeable) fileOutputStream);
    }

    @Override // java.lang.Runnable
    public final void run() {
        File file;
        Throwable th;
        InputStream inputStream;
        Exception e2;
        ByteArrayOutputStream byteArrayOutputStream;
        if (!TextUtils.isEmpty(this.f7785b)) {
            String str = this.f7785b;
            if (str.startsWith("http://") || str.startsWith("https://")) {
                String replace = this.f7785b.replace(" ", "%20");
                this.f7785b = replace;
                BitmapFactory.Options options = new BitmapFactory.Options();
                int i = 1;
                options.inJustDecodeBounds = true;
                ByteArrayOutputStream byteArrayOutputStream2 = null;
                if (this.f7786c != null) {
                    file = new File(this.f7786c, new BigInteger(n5.a(replace.getBytes())).abs().toString(36));
                    if (file.exists() && file.length() > 0) {
                        BitmapFactory.decodeFile(file.getPath(), options);
                        if (this.f7787d) {
                            if (options.outWidth / options.outHeight < 1.5f) {
                                a aVar = this.f7784a;
                                if (aVar != null) {
                                    aVar.sendEmptyMessage(0);
                                    return;
                                }
                                return;
                            }
                        }
                        String absolutePath = file.getAbsolutePath();
                        a aVar2 = this.f7784a;
                        if (aVar2 != null) {
                            this.f7784a.sendMessage(aVar2.obtainMessage(1, absolutePath));
                            return;
                        }
                        return;
                    }
                } else {
                    file = null;
                }
                try {
                    inputStream = a(replace).getInputStream();
                    try {
                        try {
                            byteArrayOutputStream = new ByteArrayOutputStream(inputStream.available());
                        } catch (Exception e3) {
                            e2 = e3;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        n5.a((OutputStream) byteArrayOutputStream);
                        n5.a((Closeable) byteArrayOutputStream);
                        n5.a((Closeable) inputStream);
                        throw th;
                    }
                } catch (Exception e4) {
                    e2 = e4;
                    inputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    n5.a((OutputStream) byteArrayOutputStream);
                    n5.a((Closeable) byteArrayOutputStream);
                    n5.a((Closeable) inputStream);
                    throw th;
                }
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
                    if (this.f7787d) {
                        if (options.outWidth / options.outHeight < 1.5f) {
                            a aVar3 = this.f7784a;
                            if (aVar3 != null) {
                                aVar3.sendEmptyMessage(0);
                            }
                            n5.a((OutputStream) byteArrayOutputStream);
                            n5.a((Closeable) byteArrayOutputStream);
                            n5.a((Closeable) inputStream);
                            return;
                        }
                    }
                    if (file != null) {
                        a(file, byteArray, options);
                        String absolutePath2 = file.getAbsolutePath();
                        a aVar4 = this.f7784a;
                        if (aVar4 != null) {
                            this.f7784a.sendMessage(aVar4.obtainMessage(1, absolutePath2));
                        }
                    } else {
                        int i2 = this.f7789f;
                        int i3 = this.f7790g;
                        int i4 = options.outWidth;
                        int i5 = options.outHeight;
                        while (true) {
                            if (i4 / i <= i2 && i5 / i <= i3) {
                                break;
                            }
                            i *= 2;
                        }
                        options.inSampleSize = i;
                        Bitmap a2 = a(byteArray, options);
                        if (a2 != null) {
                            a aVar5 = this.f7784a;
                            if (aVar5 != null) {
                                this.f7784a.sendMessage(aVar5.obtainMessage(2, a2));
                            }
                        } else {
                            a aVar6 = this.f7784a;
                            if (aVar6 != null) {
                                aVar6.sendEmptyMessage(0);
                            }
                        }
                    }
                    n5.a((OutputStream) byteArrayOutputStream);
                    n5.a((Closeable) byteArrayOutputStream);
                    n5.a((Closeable) inputStream);
                    return;
                } catch (Exception e5) {
                    e2 = e5;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    Log.log(e2);
                    a aVar7 = this.f7784a;
                    if (aVar7 != null) {
                        aVar7.sendEmptyMessage(0);
                    }
                    n5.a((OutputStream) byteArrayOutputStream2);
                    n5.a((Closeable) byteArrayOutputStream2);
                    n5.a((Closeable) inputStream);
                    return;
                } catch (Throwable th4) {
                    th = th4;
                    n5.a((OutputStream) byteArrayOutputStream);
                    n5.a((Closeable) byteArrayOutputStream);
                    n5.a((Closeable) inputStream);
                    throw th;
                }
            }
        }
        a aVar8 = this.f7784a;
        if (aVar8 != null) {
            aVar8.sendEmptyMessage(0);
        }
    }
}
