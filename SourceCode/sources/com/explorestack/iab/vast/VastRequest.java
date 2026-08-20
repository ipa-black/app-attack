package com.explorestack.iab.vast;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.explorestack.iab.CacheControl;
import com.explorestack.iab.measurer.VastAdMeasurer;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastUrlProcessorRegistry;
import com.explorestack.iab.vast.activity.VastActivity;
import com.explorestack.iab.vast.activity.VastView;
import com.explorestack.iab.vast.processor.VastAd;
import com.explorestack.iab.vast.tags.AppodealExtensionTag;
import com.explorestack.iab.vast.tags.MediaFileTag;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class VastRequest {
    public static final String PARAMS_ERROR_CODE = "params_error_code";
    public static int y = 5;
    public static final VastUrlProcessorRegistry.b z = new f();

    /* renamed from: c  reason: collision with root package name */
    public Uri f9467c;

    /* renamed from: d  reason: collision with root package name */
    public VastAd f9468d;

    /* renamed from: e  reason: collision with root package name */
    public String f9469e;

    /* renamed from: g  reason: collision with root package name */
    public Bundle f9471g;

    /* renamed from: h  reason: collision with root package name */
    public com.explorestack.iab.vast.processor.b<MediaFileTag> f9472h;
    public com.explorestack.iab.vast.d i;
    public float l;
    public boolean m;
    public int n;
    public boolean p;

    /* renamed from: b  reason: collision with root package name */
    public CacheControl f9466b = CacheControl.FullLoad;

    /* renamed from: f  reason: collision with root package name */
    public VideoType f9470f = VideoType.NonRewarded;
    public float j = 3.0f;
    public float k = -1.0f;
    public int o = 0;
    public boolean q = false;
    public boolean r = true;
    public boolean s = true;
    public boolean t = false;
    public boolean u = false;
    public int v = -1;
    public final AtomicBoolean w = new AtomicBoolean(false);
    public final AtomicBoolean x = new AtomicBoolean(false);

    /* renamed from: a  reason: collision with root package name */
    public final String f9465a = UUID.randomUUID().toString();

    /* loaded from: classes2.dex */
    public class Builder {
        public Builder() {
        }

        public Builder addExtra(String str, String str2) {
            VastRequest.this.addExtra(str, str2);
            return this;
        }

        public VastRequest build() {
            return VastRequest.this;
        }

        public Builder forceUseNativeCloseTime(boolean z) {
            VastRequest.this.m = z;
            return this;
        }

        public Builder setAutoClose(boolean z) {
            VastRequest.this.p = z;
            return this;
        }

        public Builder setCacheControl(CacheControl cacheControl) {
            VastRequest.this.f9466b = cacheControl;
            return this;
        }

        public Builder setCompanionCloseTime(int i) {
            VastRequest.this.l = i;
            return this;
        }

        public Builder setMaxDuration(int i) {
            VastRequest.this.n = i;
            return this;
        }

        public Builder setMediaFilePicker(com.explorestack.iab.vast.processor.b<MediaFileTag> bVar) {
            VastRequest.this.f9472h = bVar;
            return this;
        }

        public Builder setPlaceholderTimeoutSec(float f2) {
            VastRequest.this.j = f2;
            return this;
        }

        public Builder setPreloadCompanion(boolean z) {
            VastRequest.this.s = z;
            return this;
        }

        public Builder setUseScreenSizeForCompanionOrientation(boolean z) {
            VastRequest.this.r = z;
            return this;
        }

        public Builder setUseScreenSizeForVideoOrientation(boolean z) {
            VastRequest.this.q = z;
            return this;
        }

        public Builder setVideoCloseTime(int i) {
            VastRequest.this.k = i;
            return this;
        }

        public Builder setXmlUrl(String str) {
            VastRequest.this.f9469e = str;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f9474a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Context f9475b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VastRequestListener f9476c;

        public a(String str, Context context, VastRequestListener vastRequestListener) {
            this.f9474a = str;
            this.f9475b = context;
            this.f9476c = vastRequestListener;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BufferedReader bufferedReader;
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(new URL(this.f9474a).openStream()));
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                StringBuffer stringBuffer = new StringBuffer();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        stringBuffer.append(readLine).append(System.getProperty("line.separator"));
                    } else {
                        try {
                            break;
                        } catch (IOException unused) {
                        }
                    }
                }
                bufferedReader.close();
                VastRequest.this.loadVideoWithData(this.f9475b, stringBuffer.toString(), this.f9476c);
            } catch (Exception e3) {
                e = e3;
                bufferedReader2 = bufferedReader;
                VastRequest.this.a(this.f9475b, 100, this.f9476c);
                VastLog.a("VastRequest", e);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused2) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        }
    }

    /* loaded from: classes2.dex */
    public class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f9478a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f9479b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VastRequestListener f9480c;

        public b(Context context, String str, VastRequestListener vastRequestListener) {
            this.f9478a = context;
            this.f9479b = str;
            this.f9480c = vastRequestListener;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            VastRequest.this.loadVideoWithDataSync(this.f9478a, this.f9479b, this.f9480c);
        }
    }

    /* loaded from: classes2.dex */
    public class c extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f9482a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ VastRequestListener f9483b;

        public c(Context context, VastRequestListener vastRequestListener) {
            this.f9482a = context;
            this.f9483b = vastRequestListener;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            VastRequest vastRequest = VastRequest.this;
            vastRequest.a(this.f9482a, vastRequest.f9468d, this.f9483b);
        }
    }

    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ VastRequestListener f9485a;

        public d(VastRequestListener vastRequestListener) {
            this.f9485a = vastRequestListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f9485a.onVastLoaded(VastRequest.this);
        }
    }

    /* loaded from: classes2.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ VastErrorListener f9487a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Context f9488b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ int f9489c;

        public e(VastErrorListener vastErrorListener, Context context, int i) {
            this.f9487a = vastErrorListener;
            this.f9488b = context;
            this.f9489c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            VastErrorListener vastErrorListener;
            Context context;
            VastRequest vastRequest;
            int i;
            if (VastRequest.this.f9466b == CacheControl.PartialLoad && VastRequest.this.w.get() && !VastRequest.this.x.get()) {
                vastErrorListener = this.f9487a;
                context = this.f9488b;
                vastRequest = VastRequest.this;
                i = 4;
            } else {
                vastErrorListener = this.f9487a;
                context = this.f9488b;
                vastRequest = VastRequest.this;
                i = this.f9489c;
            }
            vastErrorListener.onVastError(context, vastRequest, i);
        }
    }

    /* loaded from: classes2.dex */
    public class f implements VastUrlProcessorRegistry.b {
        @Override // com.explorestack.iab.vast.VastUrlProcessorRegistry.b
        public void a(String str) {
            VastLog.d("VastRequest", String.format("Fire url: %s", str));
            Utils.httpGetURL(str);
        }
    }

    /* loaded from: classes2.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ VastAd f9491a;

        public g(VastAd vastAd) {
            this.f9491a = vastAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VastRequest.this.i != null) {
                VastRequest.this.i.a(VastRequest.this, this.f9491a);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VastRequest.this.i != null) {
                VastRequest.this.i.a(VastRequest.this);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static /* synthetic */ class i {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f9494a;

        static {
            int[] iArr = new int[CacheControl.values().length];
            f9494a = iArr;
            try {
                iArr[CacheControl.FullLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9494a[CacheControl.Stream.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9494a[CacheControl.PartialLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public class j implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        public long f9495a;

        /* renamed from: b  reason: collision with root package name */
        public File f9496b;

        public j(File file) {
            this.f9496b = file;
            this.f9495a = file.lastModified();
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            int i = (this.f9495a > ((j) obj).f9495a ? 1 : (this.f9495a == ((j) obj).f9495a ? 0 : -1));
            if (i > 0) {
                return -1;
            }
            return i == 0 ? 0 : 1;
        }
    }

    private VastRequest() {
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public static void setCacheSize(int i2) {
        if (i2 > 0) {
            y = i2;
        }
    }

    public final Uri a(Context context, String str) {
        String b2 = b(context);
        if (b2 != null) {
            File file = new File(b2);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str2 = "temp" + System.currentTimeMillis();
            String replace = str.substring(0, Math.min(230 - file.getPath().length(), str.length())).replace("/", "").replace(":", "");
            File file2 = new File(file, replace);
            if (file2.exists()) {
                return Uri.fromFile(file2);
            }
            File file3 = new File(file, str2);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            InputStream inputStream = httpURLConnection.getInputStream();
            FileOutputStream fileOutputStream = new FileOutputStream(file3);
            long contentLength = httpURLConnection.getContentLength();
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
                j2 += read;
            }
            fileOutputStream.close();
            if (contentLength == j2) {
                file3.renameTo(new File(file, replace));
            }
            return Uri.fromFile(new File(file, replace));
        }
        throw new FileNotFoundException("No dir for caching file");
    }

    public final synchronized void a() {
        if (this.i == null) {
            return;
        }
        Utils.onUiThread(new h());
    }

    public final void a(int i2) {
        try {
            sendError(i2);
        } catch (Exception e2) {
            VastLog.a("VastRequest", e2);
        }
    }

    public final void a(Context context) {
        File[] listFiles;
        try {
            String b2 = b(context);
            if (b2 == null || (listFiles = new File(b2).listFiles()) == null || listFiles.length <= y) {
                return;
            }
            j[] jVarArr = new j[listFiles.length];
            for (int i2 = 0; i2 < listFiles.length; i2++) {
                jVarArr[i2] = new j(listFiles[i2]);
            }
            Arrays.sort(jVarArr);
            for (int i3 = 0; i3 < listFiles.length; i3++) {
                listFiles[i3] = jVarArr[i3].f9496b;
            }
            for (int i4 = y; i4 < listFiles.length; i4++) {
                if (!Uri.fromFile(listFiles[i4]).equals(this.f9467c)) {
                    listFiles[i4].delete();
                }
            }
        } catch (Exception e2) {
            VastLog.a("VastRequest", e2);
        }
    }

    public final void a(Context context, int i2, VastErrorListener vastErrorListener) {
        VastLog.d("VastRequest", "sendError, code: " + i2);
        if (VastError.a(i2)) {
            a(i2);
        }
        if (vastErrorListener != null) {
            Utils.onUiThread(new e(vastErrorListener, context, i2));
        }
    }

    public final void a(Context context, VastAd vastAd, VastRequestListener vastRequestListener) {
        String str;
        long parseLong;
        int i2;
        try {
            Uri a2 = a(context, vastAd.getPickedMediaFileTag().getText());
            if (a2 != null && !TextUtils.isEmpty(a2.getPath()) && new File(a2.getPath()).exists()) {
                Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(a2.getPath(), 1);
                if (createVideoThumbnail == null) {
                    str = "video file not supported";
                } else if (!createVideoThumbnail.equals(Bitmap.createBitmap(createVideoThumbnail.getWidth(), createVideoThumbnail.getHeight(), createVideoThumbnail.getConfig()))) {
                    try {
                        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                        mediaMetadataRetriever.setDataSource(context, a2);
                        parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
                        i2 = this.n;
                    } catch (Exception e2) {
                        VastLog.a("VastRequest", e2);
                    }
                    if (i2 != 0 && parseLong > i2) {
                        a();
                        a(context, 202, vastRequestListener);
                        a(context);
                        return;
                    }
                    this.f9467c = a2;
                    a(vastAd);
                    a(vastRequestListener);
                    a(context);
                    return;
                } else {
                    str = "empty thumbnail";
                }
                VastLog.d("VastRequest", str);
                a();
                a(context, 403, vastRequestListener);
                a(context);
                return;
            }
            VastLog.d("VastRequest", "fileUri is null");
            a();
            a(context, 301, vastRequestListener);
        } catch (Exception unused) {
            VastLog.d("VastRequest", "exception when to cache file");
            a();
            a(context, 301, vastRequestListener);
        }
    }

    public final void a(VastRequestListener vastRequestListener) {
        if (this.w.getAndSet(true)) {
            return;
        }
        VastLog.d("VastRequest", "sendReady");
        if (vastRequestListener != null) {
            Utils.onUiThread(new d(vastRequestListener));
        }
    }

    public final synchronized void a(VastAd vastAd) {
        if (this.i == null) {
            return;
        }
        Utils.onUiThread(new g(vastAd));
    }

    public void addExtra(String str, String str2) {
        if (this.f9471g == null) {
            this.f9471g = new Bundle();
        }
        this.f9471g.putString(str, str2);
    }

    public final String b(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            return externalFilesDir.getPath() + "/vast_rtb_cache/";
        }
        return null;
    }

    public boolean canDisplay() {
        return this.w.get() && (this.f9466b != CacheControl.FullLoad || checkFile());
    }

    public boolean checkFile() {
        try {
            Uri uri = this.f9467c;
            if (uri == null || TextUtils.isEmpty(uri.getPath())) {
                return false;
            }
            return new File(this.f9467c.getPath()).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    public void destroy() {
        this.i = null;
        com.explorestack.iab.vast.c.a(this);
    }

    public void display(Context context, VideoType videoType, VastActivityListener vastActivityListener) {
        display(context, videoType, vastActivityListener, null, null);
    }

    public void display(Context context, VideoType videoType, VastActivityListener vastActivityListener, VastPlaybackListener vastPlaybackListener, VastAdMeasurer vastAdMeasurer) {
        this.x.set(true);
        VastLog.d("VastRequest", "play");
        if (this.f9468d == null) {
            VastLog.d("VastRequest", "vastAd is null; nothing to play");
        } else if (!Utils.isNetworkAvailable(context)) {
            a(context, 1, vastActivityListener);
        } else {
            this.f9470f = videoType;
            this.o = context.getResources().getConfiguration().orientation;
            if (new VastActivity.Builder().setRequest(this).setListener(vastActivityListener).setPlaybackListener(vastPlaybackListener).setAdMeasurer(vastAdMeasurer).display(context)) {
                return;
            }
            a(context, 2, vastActivityListener);
        }
    }

    public void display(VastView vastView) {
        this.x.set(true);
        if (this.f9468d == null) {
            VastLog.d("VastRequest", "vastAd is null; nothing to play");
            return;
        }
        this.f9470f = VideoType.NonRewarded;
        com.explorestack.iab.vast.c.b(this);
        vastView.display(this, Boolean.FALSE);
    }

    public void fireErrorUrls(List<String> list, Bundle bundle) {
        fireUrls(list, bundle);
    }

    public void fireUrls(List<String> list, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f9471g;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        if (list != null) {
            VastUrlProcessorRegistry.a(list, bundle2, z);
        } else {
            VastLog.d("VastRequest", "Url list is null");
        }
    }

    public CacheControl getCacheControl() {
        return this.f9466b;
    }

    public float getCompanionCloseTime() {
        return this.l;
    }

    public Uri getFileUri() {
        return this.f9467c;
    }

    public int getForceOrientation() {
        return this.v;
    }

    public String getId() {
        return this.f9465a;
    }

    public int getMaxDurationMillis() {
        return this.n;
    }

    public float getPlaceholderTimeoutSec() {
        return this.j;
    }

    public int getPreferredVideoOrientation() {
        if (shouldUseScreenSizeForVideoOrientation()) {
            VastAd vastAd = this.f9468d;
            if (vastAd != null) {
                MediaFileTag pickedMediaFileTag = vastAd.getPickedMediaFileTag();
                return Utils.orientationBySize(pickedMediaFileTag.getWidth(), pickedMediaFileTag.getHeight());
            }
            return 2;
        }
        return 0;
    }

    public int getRequestedOrientation() {
        return this.o;
    }

    public VastAd getVastAd() {
        return this.f9468d;
    }

    public float getVideoCloseTime() {
        return this.k;
    }

    public VideoType getVideoType() {
        return this.f9470f;
    }

    public boolean isAutoClose() {
        return this.p;
    }

    public boolean isForceUseNativeCloseTime() {
        return this.m;
    }

    public boolean isR1() {
        return this.t;
    }

    public boolean isR2() {
        return this.u;
    }

    public void loadVideoWithData(Context context, String str, VastRequestListener vastRequestListener) {
        int i2;
        VastLog.d("VastRequest", "loadVideoWithData\n" + str);
        this.f9468d = null;
        if (Utils.isNetworkAvailable(context)) {
            try {
                new b(context, str, vastRequestListener).start();
                return;
            } catch (Exception unused) {
                i2 = 301;
            }
        } else {
            i2 = 1;
        }
        a(context, i2, vastRequestListener);
    }

    public void loadVideoWithDataSync(Context context, String str, VastRequestListener vastRequestListener) {
        com.explorestack.iab.vast.processor.b bVar = this.f9472h;
        if (bVar == null) {
            bVar = new com.explorestack.iab.vast.processor.a(context);
        }
        com.explorestack.iab.vast.processor.d a2 = new com.explorestack.iab.vast.processor.c(this, bVar).a(str);
        if (!a2.d()) {
            a(context, a2.b(), vastRequestListener);
            return;
        }
        VastAd c2 = a2.c();
        this.f9468d = c2;
        c2.setVastRequest(this);
        AppodealExtensionTag appodealExtension = this.f9468d.getAppodealExtension();
        if (appodealExtension != null) {
            Boolean isAutoRotate = appodealExtension.isAutoRotate();
            if (isAutoRotate != null) {
                if (isAutoRotate.booleanValue()) {
                    this.q = false;
                    this.r = false;
                } else {
                    this.q = true;
                    this.r = true;
                }
            }
            if (appodealExtension.getPostBannerTag().getCloseTimeSec() > 0.0f) {
                this.l = appodealExtension.getPostBannerTag().getCloseTimeSec();
            }
            if (appodealExtension.getCloseTimeSec() != null) {
                this.k = appodealExtension.getCloseTimeSec().floatValue();
            }
            this.t = appodealExtension.isR1();
            this.u = appodealExtension.isR2();
            Integer forceOrientation = appodealExtension.getForceOrientation();
            if (forceOrientation != null) {
                this.v = forceOrientation.intValue();
            }
        }
        int i2 = i.f9494a[this.f9466b.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                a(vastRequestListener);
                return;
            } else if (i2 != 3) {
                return;
            } else {
                a(vastRequestListener);
            }
        }
        a(context, this.f9468d, vastRequestListener);
    }

    public void loadVideoWithUrl(Context context, String str, VastRequestListener vastRequestListener) {
        int i2;
        VastLog.d("VastRequest", "loadVideoWithUrl " + str);
        this.f9468d = null;
        if (Utils.isNetworkAvailable(context)) {
            try {
                new a(str, context, vastRequestListener).start();
                return;
            } catch (Exception unused) {
                i2 = 301;
            }
        } else {
            i2 = 1;
        }
        a(context, i2, vastRequestListener);
    }

    public void performCache(Context context, VastRequestListener vastRequestListener) {
        if (this.f9468d == null) {
            a();
            a(context, 5, vastRequestListener);
            return;
        }
        try {
            new c(context, vastRequestListener).start();
        } catch (Exception unused) {
            a();
            a(context, 301, vastRequestListener);
        }
    }

    public void sendError(int i2) {
        if (this.f9468d != null) {
            Bundle bundle = new Bundle();
            bundle.putInt(PARAMS_ERROR_CODE, i2);
            fireErrorUrls(this.f9468d.getErrorUrlList(), bundle);
        }
    }

    public synchronized void setVastFileLoadedListener(com.explorestack.iab.vast.d dVar) {
        this.i = dVar;
    }

    public boolean shouldPreloadCompanion() {
        return this.s;
    }

    public boolean shouldUseScreenSizeForCompanionOrientation() {
        return this.r;
    }

    public boolean shouldUseScreenSizeForVideoOrientation() {
        return this.q;
    }
}
