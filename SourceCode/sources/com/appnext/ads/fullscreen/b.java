package com.appnext.ads.fullscreen;

import android.content.Context;
import android.net.Uri;
import android.util.Pair;
import com.appnext.core.Ad;
import com.appnext.core.AppnextAd;
import com.appnext.core.p;
import com.unity3d.services.core.di.ServiceProvider;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes.dex */
public final class b extends com.appnext.core.d {
    private static b aL;
    private final int aM = 30;
    private HashMap<Ad, String> aN = new HashMap<>();

    public static synchronized b j() {
        b bVar;
        synchronized (b.class) {
            if (aL == null) {
                aL = new b();
            }
            bVar = aL;
        }
        return bVar;
    }

    private b() {
    }

    @Override // com.appnext.core.d
    protected final String a(Context context, Ad ad, String str, ArrayList<Pair<String, String>> arrayList) {
        return "&auid=" + (ad != null ? ad.getAUID() : "700") + "&vidmin=" + (ad == null ? "" : Integer.valueOf(ad.getMinVideoLength())) + "&vidmax=" + (ad != null ? Integer.valueOf(ad.getMaxVideoLength()) : "");
    }

    @Override // com.appnext.core.d
    protected final int a(Context context, com.appnext.core.g gVar) {
        int i;
        AppnextAd appnextAd = (AppnextAd) gVar;
        FullscreenAd fullscreenAd = new FullscreenAd(appnextAd);
        if (fullscreenAd.getCampaignGoal().equals(com.appnext.core.a.b.hX) && com.appnext.core.f.c(context, fullscreenAd.getAdPackage())) {
            i = 1;
        } else {
            i = (!fullscreenAd.getCampaignGoal().equals(com.appnext.core.a.b.hY) || com.appnext.core.f.c(context, fullscreenAd.getAdPackage())) ? 0 : 2;
        }
        int b2 = b(context, appnextAd);
        if (i == 0 && b2 == 0) {
            return 0;
        }
        return i != 0 ? i : b2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.d
    public final boolean a(Ad ad) {
        return super.a(ad) && e(ad);
    }

    @Override // com.appnext.core.d
    protected final boolean a(Context context, Ad ad, ArrayList<?> arrayList) {
        return a(context, ad, (ArrayList<AppnextAd>) arrayList, "") != null;
    }

    private void a(Context context, Ad ad, AppnextAd appnextAd) throws Exception {
        Video video;
        String str;
        if (!appnextAd.getImageURL().equals("")) {
            com.appnext.core.f.Y(appnextAd.getImageURL());
        }
        if (!appnextAd.getWideImageURL().equals("")) {
            com.appnext.core.f.Y(appnextAd.getWideImageURL());
        }
        String videoUrl = getVideoUrl(appnextAd, ((Video) ad).getVideoLength());
        String c2 = c(videoUrl);
        if (Video.getCacheVideo()) {
            str = context.getFilesDir().getAbsolutePath() + "/data/appnext/videos/";
        } else {
            str = context.getFilesDir().getAbsolutePath() + "/data/appnext/videos/tmp/vid" + video.rnd + "/";
        }
        File file = new File(str + c2);
        if (file.exists()) {
            file.setLastModified(System.currentTimeMillis());
            file.getPath();
            this.aN.put(ad, file.getAbsolutePath());
        } else if (Video.isStreamingModeEnabled()) {
        } else {
            new File(str).mkdirs();
            URL url = new URL(videoUrl);
            url.openConnection().connect();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream(), 1024);
            FileOutputStream fileOutputStream = new FileOutputStream(str + c2 + com.appnext.base.b.d.eY);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    bufferedInputStream.close();
                    File file2 = new File(str + c2 + com.appnext.base.b.d.eY);
                    file2.renameTo(new File(str + c2));
                    file2.delete();
                    this.aN.put(ad, file.getAbsolutePath());
                    return;
                }
            }
        }
    }

    private void a(Context context, Ad ad) {
        int i;
        int parseInt;
        try {
            File[] listFiles = new File(context.getFilesDir().getAbsolutePath() + "/data/appnext/videos/").listFiles();
            Arrays.sort(listFiles, new AnonymousClass1());
            if (Video.getCacheVideo()) {
                if (ad instanceof FullScreenVideo) {
                    parseInt = Integer.parseInt(c.m().get("num_saved_videos"));
                } else {
                    parseInt = Integer.parseInt(f.q().get("num_saved_videos"));
                }
                i = parseInt - 1;
            } else {
                i = 0;
            }
            if (listFiles.length <= i) {
                return;
            }
            for (int i2 = 0; i2 < listFiles.length - i; i2++) {
                listFiles[i2].delete();
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: com.appnext.ads.fullscreen.b$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Comparator<File> {
        AnonymousClass1() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(File file, File file2) {
            return Long.valueOf(file.lastModified()).compareTo(Long.valueOf(file2.lastModified()));
        }

        public static int a(File file, File file2) {
            return Long.valueOf(file.lastModified()).compareTo(Long.valueOf(file2.lastModified()));
        }
    }

    @Override // com.appnext.core.d
    protected final void a(Ad ad, String str, String str2) {
        if (ad != null) {
            com.appnext.core.f.a(ad.getTID(), ad.getVID(), ad.getAUID(), str2, str, com.appnext.ads.a.k, ServiceProvider.NAMED_SDK, "", "");
        } else {
            com.appnext.core.f.a("300", "2.5.1.472", "700", str2, str, com.appnext.ads.a.k, ServiceProvider.NAMED_SDK, "", "");
        }
    }

    @Override // com.appnext.core.d
    protected final <T> void a(String str, Ad ad, T t) {
        com.appnext.core.f.a(ad.getTID(), ad.getVID(), ad.getAUID(), str, ((Video) ad).getSessionId(), com.appnext.ads.a.j, ServiceProvider.NAMED_SDK, "", "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getVideoUrl(AppnextAd appnextAd, String str) {
        String videoUrlHigh;
        if (str.equals("30")) {
            videoUrlHigh = appnextAd.getVideoUrlHigh30Sec();
            if (videoUrlHigh.equals("")) {
                videoUrlHigh = appnextAd.getVideoUrlHigh();
            }
        } else {
            videoUrlHigh = appnextAd.getVideoUrlHigh();
            if (videoUrlHigh.equals("")) {
                videoUrlHigh = appnextAd.getVideoUrlHigh30Sec();
            }
        }
        appnextAd.getBannerID();
        return videoUrlHigh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.d
    public final void a(String str, Ad ad) {
        super.a(str, ad);
        if (this.aN.containsKey(ad)) {
            this.aN.remove(ad);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b(Ad ad) {
        try {
            if (h(ad) && k(ad).aU().longValue() + j(ad) + 300000 >= System.currentTimeMillis()) {
                if (e(ad)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.appnext.core.d
    protected final p c(Ad ad) {
        return ad instanceof RewardedVideo ? f.q() : c.m();
    }

    protected final boolean d(Ad ad) {
        try {
            if (a(ad)) {
                if (e(ad)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private boolean e(Ad ad) {
        if (Video.isStreamingModeEnabled()) {
            return true;
        }
        if (this.aN.containsKey(ad)) {
            return new File(this.aN.get(ad)).exists();
        }
        return false;
    }

    private static boolean b(AppnextAd appnextAd) {
        return (appnextAd.getVideoUrlHigh().equals("") && appnextAd.getVideoUrlHigh30Sec().equals("")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AppnextAd b(Context context, Ad ad) {
        return a(context, ad, "");
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final AppnextAd a(Context context, Ad ad, String str) {
        ArrayList<?> ads;
        if (k(ad) == null || (ads = k(ad).getAds()) == null) {
            return null;
        }
        return a(context, ad, (ArrayList<AppnextAd>) ads, str);
    }

    protected final AppnextAd a(Context context, Ad ad, ArrayList<AppnextAd> arrayList, String str) {
        Iterator<AppnextAd> it = arrayList.iterator();
        while (it.hasNext()) {
            AppnextAd next = it.next();
            if (b(next) && !a(next.getBannerID(), ad.getPlacementID()) && !next.getBannerID().equals(str)) {
                return next;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ArrayList<AppnextAd> f(Ad ad) {
        return k(ad).getAds();
    }

    private static int a(Context context, AppnextAd appnextAd) {
        FullscreenAd fullscreenAd = new FullscreenAd(appnextAd);
        if (fullscreenAd.getCampaignGoal().equals(com.appnext.core.a.b.hX) && com.appnext.core.f.c(context, fullscreenAd.getAdPackage())) {
            return 1;
        }
        return (!fullscreenAd.getCampaignGoal().equals(com.appnext.core.a.b.hY) || com.appnext.core.f.c(context, fullscreenAd.getAdPackage())) ? 0 : 2;
    }

    private static int b(Context context, AppnextAd appnextAd) {
        FullscreenAd fullscreenAd = new FullscreenAd(appnextAd);
        if (!fullscreenAd.getCptList().equals("") && !fullscreenAd.getCptList().equals("[]")) {
            try {
                JSONArray jSONArray = new JSONArray(fullscreenAd.getCptList());
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (com.appnext.core.f.c(context, jSONArray.getString(i))) {
                        return 0;
                    }
                }
                return 3;
            } catch (JSONException unused) {
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String c(String str) {
        String substring = str.substring(str.lastIndexOf("/") + 1);
        if (substring.contains("?")) {
            substring = substring.substring(0, substring.indexOf("?"));
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter("rnd");
            return (queryParameter == null || queryParameter.equals("")) ? substring : substring.substring(0, substring.lastIndexOf(46)) + "_" + queryParameter + substring.substring(substring.lastIndexOf(46));
        } catch (Throwable unused) {
            return substring;
        }
    }

    @Override // com.appnext.core.d
    protected final void a(Context context, Ad ad, com.appnext.core.a aVar) throws Exception {
        AppnextAd appnextAd;
        AppnextAd a2;
        int i;
        int parseInt;
        try {
            File[] listFiles = new File(context.getFilesDir().getAbsolutePath() + "/data/appnext/videos/").listFiles();
            Arrays.sort(listFiles, new AnonymousClass1());
            if (Video.getCacheVideo()) {
                if (ad instanceof FullScreenVideo) {
                    parseInt = Integer.parseInt(c.m().get("num_saved_videos"));
                } else {
                    parseInt = Integer.parseInt(f.q().get("num_saved_videos"));
                }
                i = parseInt - 1;
            } else {
                i = 0;
            }
            if (listFiles.length > i) {
                for (int i2 = 0; i2 < listFiles.length - i; i2++) {
                    listFiles[i2].delete();
                }
            }
        } catch (Throwable unused) {
        }
        try {
            appnextAd = b(context, ad);
            try {
                if (appnextAd == null) {
                    throw new Exception("No video ads");
                }
                a(context, ad, appnextAd);
                if (ad instanceof RewardedVideo) {
                    String mode = ((RewardedVideo) ad).getMode();
                    if (mode.equals(RewardedVideo.VIDEO_MODE_DEFAULT)) {
                        mode = f.q().get("default_mode");
                    }
                    if (!mode.equals("multi") || (a2 = a(context, ad, appnextAd.getBannerID())) == null) {
                        return;
                    }
                    a(context, ad, a2);
                }
            } catch (Throwable th) {
                th = th;
                if (appnextAd != null) {
                    a(appnextAd.getBannerID(), ad);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            appnextAd = null;
        }
    }
}
