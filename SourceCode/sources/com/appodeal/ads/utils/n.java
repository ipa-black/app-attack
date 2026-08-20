package com.appodeal.ads.utils;

import android.content.Context;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.n5;
import com.explorestack.iab.CacheControl;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.processor.VastAd;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes2.dex */
public final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public Context f7798a;

    /* renamed from: b  reason: collision with root package name */
    public b f7799b;

    /* renamed from: c  reason: collision with root package name */
    public String f7800c;

    /* renamed from: d  reason: collision with root package name */
    public File f7801d;

    /* renamed from: e  reason: collision with root package name */
    public final a f7802e = new a(Looper.getMainLooper());

    /* renamed from: f  reason: collision with root package name */
    public boolean f7803f;

    /* loaded from: classes2.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            b bVar = n.this.f7799b;
            if (bVar != null) {
                int i = message.what;
                if (i == 0) {
                    bVar.a();
                } else if (i != 1) {
                } else {
                    Pair pair = (Pair) message.obj;
                    bVar.a((Uri) pair.first, (VastRequest) pair.second);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void a(Uri uri, VastRequest vastRequest);
    }

    public n(Context context, b bVar, String str) {
        if (context == null || str == null || !n5.a(context)) {
            bVar.a();
            return;
        }
        this.f7798a = context;
        this.f7799b = bVar;
        this.f7800c = str;
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            bVar.a();
            return;
        }
        File file = new File(externalFilesDir.getPath() + "/native_video/");
        this.f7801d = file;
        if (!file.exists()) {
            this.f7801d.mkdirs();
        }
        this.f7803f = true;
    }

    public static InputStream a(String str) {
        try {
            URLConnection openConnection = new URL(str).openConnection();
            try {
                if (openConnection instanceof HttpsURLConnection) {
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
                    httpsURLConnection.setSSLSocketFactory(new t(httpsURLConnection.getSSLSocketFactory()));
                }
            } catch (Exception e2) {
                Log.log(e2);
            }
            openConnection.setConnectTimeout(Constants.SERVER_TIMEOUT_MS);
            openConnection.setReadTimeout(Constants.SERVER_TIMEOUT_MS);
            openConnection.connect();
            return openConnection.getInputStream();
        } catch (IOException e3) {
            Log.log(e3);
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.scheme("http");
            URLConnection openConnection2 = new URL(buildUpon.build().toString()).openConnection();
            openConnection2.setConnectTimeout(Constants.SERVER_TIMEOUT_MS);
            openConnection2.setReadTimeout(Constants.SERVER_TIMEOUT_MS);
            openConnection2.connect();
            return openConnection2.getInputStream();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f7803f) {
            this.f7802e.sendEmptyMessage(0);
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                try {
                    VastRequest build = VastRequest.newBuilder().setCacheControl(CacheControl.Stream).build();
                    build.loadVideoWithDataSync(this.f7798a, this.f7800c, null);
                    VastAd vastAd = build.getVastAd();
                    if (vastAd != null && vastAd.getPickedMediaFileTag().getType().matches("video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)")) {
                        String text = vastAd.getPickedMediaFileTag().getText();
                        inputStream = a(text);
                        File file = new File(this.f7801d, new BigInteger(n5.a(text.getBytes())).abs().toString(36));
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        }
                        fileOutputStream.close();
                        if (ThumbnailUtils.createVideoThumbnail(file.getPath(), 1) != null) {
                            this.f7802e.sendMessage(this.f7802e.obtainMessage(1, new Pair(Uri.fromFile(file), build)));
                            try {
                                inputStream.close();
                                return;
                            } catch (Exception e2) {
                                Log.log(e2);
                                return;
                            }
                        }
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e3) {
                            Log.log(e3);
                        }
                    }
                    throw th;
                }
            } catch (Exception e4) {
                Log.log(e4);
                if (inputStream != null) {
                    inputStream.close();
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Exception e5) {
            Log.log(e5);
        }
        this.f7802e.sendEmptyMessage(0);
    }
}
