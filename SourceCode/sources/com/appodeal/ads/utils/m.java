package com.appodeal.ads.utils;

import android.content.Context;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.n5;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2.dex */
public final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public b f7792a;

    /* renamed from: b  reason: collision with root package name */
    public String f7793b;

    /* renamed from: c  reason: collision with root package name */
    public File f7794c;

    /* renamed from: d  reason: collision with root package name */
    public final a f7795d = new a(Looper.getMainLooper());

    /* renamed from: e  reason: collision with root package name */
    public boolean f7796e;

    /* loaded from: classes2.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            b bVar = m.this.f7792a;
            if (bVar != null) {
                int i = message.what;
                if (i == 0) {
                    bVar.a();
                } else if (i != 1) {
                } else {
                    bVar.a((Uri) message.obj);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void a(Uri uri);
    }

    public m(Context context, b bVar, String str) {
        if (context == null || str == null || !n5.a(context)) {
            bVar.a();
            return;
        }
        this.f7792a = bVar;
        this.f7793b = str;
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            bVar.a();
            return;
        }
        File file = new File(externalFilesDir.getPath() + "/native_video/");
        this.f7794c = file;
        if (!file.exists()) {
            this.f7794c.mkdirs();
        }
        this.f7796e = true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InputStream inputStream;
        File file;
        if (!this.f7796e) {
            this.f7795d.sendEmptyMessage(0);
            return;
        }
        InputStream inputStream2 = null;
        try {
        } catch (Exception e2) {
            Log.log(e2);
        }
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f7793b).openConnection();
                httpURLConnection.setConnectTimeout(Constants.SERVER_TIMEOUT_MS);
                httpURLConnection.setReadTimeout(Constants.SERVER_TIMEOUT_MS);
                inputStream = httpURLConnection.getInputStream();
                File file2 = new File(this.f7794c, "temp" + System.currentTimeMillis());
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                long contentLength = httpURLConnection.getContentLength();
                byte[] bArr = new byte[1024];
                long j = 0;
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                    j += read;
                }
                fileOutputStream.close();
                String bigInteger = new BigInteger(n5.a(this.f7793b.getBytes())).abs().toString(36);
                if (contentLength == j) {
                    file2.renameTo(new File(this.f7794c, bigInteger));
                }
                file = new File(this.f7794c, bigInteger);
            } catch (Exception e3) {
                Log.log(e3);
                if (0 != 0) {
                    inputStream2.close();
                }
            }
            if (ThumbnailUtils.createVideoThumbnail(file.getPath(), 1) != null) {
                this.f7795d.sendMessage(this.f7795d.obtainMessage(1, Uri.fromFile(file)));
                try {
                    inputStream.close();
                    return;
                } catch (Exception e4) {
                    Log.log(e4);
                    return;
                }
            }
            Log.log(LogConstants.EVENT_ASSETS, "Video", "video file not supported");
            inputStream.close();
            this.f7795d.sendEmptyMessage(0);
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream2.close();
                } catch (Exception e5) {
                    Log.log(e5);
                }
            }
            throw th;
        }
    }
}
