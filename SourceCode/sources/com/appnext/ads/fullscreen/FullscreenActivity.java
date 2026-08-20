package com.appnext.ads.fullscreen;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.widget.RelativeLayout;
import androidx.exifinterface.media.ExifInterface;
import com.appnext.R;
import com.appnext.core.Ad;
import com.appnext.core.AppnextActivity;
import com.appnext.core.AppnextAd;
import com.appnext.core.AppnextError;
import com.appnext.core.e;
import com.appnext.core.p;
import com.appnext.core.q;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.services.core.request.metrics.AdOperationMetric;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
/* loaded from: classes.dex */
public class FullscreenActivity extends AppnextActivity implements h, i, j, e.a {
    private p aB;
    private AppnextAd aD;
    private AppnextAd aE;
    com.appnext.ads.b aF;
    private HashMap<String, Integer> aG;
    private Video aH;
    private ArrayList<AppnextAd> ads;
    private Handler mHandler;
    private int type;
    private boolean aC = true;
    private boolean finished = false;
    private int state = 0;
    Runnable aI = new Runnable() { // from class: com.appnext.ads.fullscreen.FullscreenActivity.3
        @Override // java.lang.Runnable
        public final void run() {
            if (FullscreenActivity.this.userAction != null) {
                FullscreenActivity.this.userAction.e(FullscreenActivity.this.aD);
            }
            FullscreenActivity.this.report(com.appnext.ads.a.G, "S2");
        }
    };
    Runnable aJ = new Runnable() { // from class: com.appnext.ads.fullscreen.FullscreenActivity.4
        @Override // java.lang.Runnable
        public final void run() {
            FullscreenActivity fullscreenActivity = FullscreenActivity.this;
            fullscreenActivity.a(fullscreenActivity.aD, (e.a) null);
            FullscreenActivity.this.report(com.appnext.ads.a.H, "S2");
        }
    };

    private static void c() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Fragment gVar;
        if (bundle != null) {
            this.aG = (HashMap) bundle.getSerializable("templates");
            this.state = bundle.getInt(AdOperationMetric.INIT_STATE);
        }
        Configuration configuration = getResources().getConfiguration();
        configuration.setLayoutDirection(new Locale("en"));
        getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
        super.onCreate(bundle);
        if (Video.currentAd == null) {
            onError(AppnextError.NO_ADS);
            finish();
            return;
        }
        if (Video.currentAd instanceof RewardedVideo) {
            this.aH = new RewardedVideo(this, (RewardedVideo) Video.currentAd);
        } else {
            this.aH = new FullScreenVideo(this, (FullScreenVideo) Video.currentAd);
        }
        String orientation = d().getOrientation();
        orientation.hashCode();
        char c2 = 65535;
        switch (orientation.hashCode()) {
            case 729267099:
                if (orientation.equals("portrait")) {
                    c2 = 0;
                    break;
                }
                break;
            case 1430647483:
                if (orientation.equals("landscape")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1673671211:
                if (orientation.equals(Ad.ORIENTATION_AUTO)) {
                    c2 = 2;
                    break;
                }
                break;
            case 2129065206:
                if (orientation.equals(Ad.ORIENTATION_DEFAULT)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                setRequestedOrientation(7);
                break;
            case 1:
                setRequestedOrientation(6);
                break;
            case 2:
            case 3:
                if (getResources().getConfiguration().orientation == 2) {
                    setRequestedOrientation(6);
                    break;
                } else {
                    setRequestedOrientation(7);
                    break;
                }
        }
        this.mHandler = new Handler();
        this.placementID = getIntent().getExtras().getString("id");
        int i = getIntent().getExtras().getInt(SessionDescription.ATTR_TYPE);
        this.type = i;
        if (i == 1) {
            this.aB = c.m();
        } else {
            this.aB = f.q();
        }
        this.aC = Boolean.parseBoolean(this.aB.get("can_close"));
        if (d() instanceof FullScreenVideo) {
            this.aC = ((FullScreenVideo) d()).isBackButtonCanClose();
        }
        if (bundle == null) {
            ArrayList<AppnextAd> f2 = b.j().f(d());
            this.ads = f2;
            if (f2 != null) {
                this.aD = a(f2, this.placementID, "");
            } else {
                onError(AppnextError.NO_ADS);
                finish();
                return;
            }
        } else {
            this.ads = (ArrayList) bundle.getSerializable("ads");
            this.aD = (AppnextAd) bundle.getSerializable("currentAd");
        }
        if (this.aD == null) {
            onError(AppnextError.NO_ADS);
            finish();
            return;
        }
        setContentView(R.layout.apnxt_video_activity);
        if (bundle == null) {
            Bundle bundle2 = new Bundle();
            String mode = d() instanceof RewardedVideo ? ((RewardedVideo) d()).getMode() : "";
            if (mode.equals(RewardedVideo.VIDEO_MODE_DEFAULT)) {
                mode = getConfig().get("default_mode");
            }
            if (this.type == 2 && mode.equals("multi")) {
                gVar = new e();
                bundle2.putInt("time", ((RewardedVideo) d()).getMultiTimerLength());
                report("multi");
            } else {
                if (this.type == 2) {
                    report("normal");
                }
                gVar = new g();
                bundle2.putBoolean("showCta", d().isShowCta());
                this.state = 1;
            }
            gVar.setArguments(bundle2);
            FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
            beginTransaction.add(R.id.ll, gVar, "fragment");
            try {
                beginTransaction.commit();
            } catch (Exception unused) {
                finish();
                return;
            }
        } else {
            this.finished = bundle.getBoolean("finished", true);
        }
        this.gl = (RelativeLayout) findViewById(R.id.ll);
        this.userAction = new q(this, new q.a() { // from class: com.appnext.ads.fullscreen.FullscreenActivity.1
            @Override // com.appnext.core.q.a
            public final void report(String str) {
                FullscreenActivity.this.report(str);
            }

            @Override // com.appnext.core.q.a
            public final Ad e() {
                return Video.currentAd;
            }

            @Override // com.appnext.core.q.a
            public final AppnextAd f() {
                return FullscreenActivity.this.aE;
            }

            @Override // com.appnext.core.q.a
            public final p g() {
                return FullscreenActivity.this.getConfig();
            }
        });
    }

    @Override // com.appnext.core.AppnextActivity
    protected final void onError(String str) {
        if (d() == null || d().getOnAdErrorCallback() == null) {
            return;
        }
        d().getOnAdErrorCallback().adError(str);
    }

    @Override // com.appnext.core.AppnextActivity
    protected final p getConfig() {
        if (this.aB == null) {
            if (this.type == 1) {
                this.aB = c.m();
            } else {
                this.aB = f.q();
            }
        }
        return this.aB;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextActivity
    public final void a(AppnextAd appnextAd, e.a aVar) {
        super.a(appnextAd, new e.a() { // from class: com.appnext.ads.fullscreen.FullscreenActivity.2
            @Override // com.appnext.core.e.a
            public final void error(String str) {
            }

            @Override // com.appnext.core.e.a
            public final void onMarket(String str) {
            }
        });
    }

    private Uri a() {
        String str;
        String videoUrl = b.getVideoUrl(this.aD, d().getVideoLength());
        String c2 = b.c(videoUrl);
        if (Video.getCacheVideo()) {
            str = getFilesDir().getAbsolutePath() + "/data/appnext/videos/";
        } else {
            str = getFilesDir().getAbsolutePath() + "/data/appnext/videos/tmp/vid" + d().rnd + "/";
        }
        File file = new File(str + c2);
        if (file.exists()) {
            Uri parse = Uri.parse(str + c2);
            parse.getPath();
            return parse;
        }
        Uri parse2 = Uri.parse(videoUrl);
        file.getAbsolutePath();
        return parse2;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("finished", this.finished);
        bundle.putInt(SessionDescription.ATTR_TYPE, this.type);
        bundle.putSerializable("templates", this.aG);
        bundle.putSerializable("ads", this.ads);
        bundle.putInt(AdOperationMetric.INIT_STATE, this.state);
        bundle.putSerializable("currentAd", this.aD);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.finished = bundle.getBoolean("finished", true);
        this.type = bundle.getInt(SessionDescription.ATTR_TYPE);
        this.aG = (HashMap) bundle.getSerializable("templates");
    }

    private boolean b() {
        return d().isBackButtonCanClose();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mHandler.removeCallbacks(this.aI);
        this.mHandler.removeCallbacks(this.aJ);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 4102);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            com.appnext.core.f.a(new File(getFilesDir().getAbsolutePath() + "/data/appnext/videos/tmp/vid" + d().rnd + "/"));
        } catch (Throwable unused) {
        }
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.mHandler = null;
            this.aE = null;
            this.aD = null;
        } catch (Throwable unused2) {
        }
        try {
            com.appnext.ads.b bVar = this.aF;
            if (bVar != null) {
                bVar.a(this);
            }
            this.aF = null;
        } catch (Throwable unused3) {
        }
    }

    private void a(AppnextAd appnextAd) {
        b(appnextAd, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextActivity
    public final void b(AppnextAd appnextAd, e.a aVar) {
        if (appnextAd == null) {
            return;
        }
        this.aE = appnextAd;
        if (d().getOnAdClickedCallback() != null) {
            d().getOnAdClickedCallback().adClicked();
        }
        if (this.finished || !(d() instanceof RewardedVideo)) {
            super.b(appnextAd, aVar);
        }
    }

    @Override // com.appnext.core.e.a
    public void onMarket(String str) {
        ba();
        this.finished = true;
        Collections.shuffle(this.ads, new Random(System.nanoTime()));
        this.ads.remove(this.aD);
        this.ads.add(0, this.aD);
        d dVar = new d();
        this.state = 2;
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.ll, dVar, "fragment");
        try {
            beginTransaction.commit();
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // com.appnext.core.e.a
    public void error(String str) {
        ba();
        report(com.appnext.ads.a.A);
    }

    private void onClose() {
        try {
            b.j().a(this.aD.getBannerID(), d());
            if (d() != null && d().getOnAdClosedCallback() != null) {
                d().getOnAdClosedCallback().onAdClosed();
            }
            Video.currentAd = null;
        } catch (Throwable unused) {
        }
    }

    @Override // com.appnext.ads.fullscreen.j
    public void videoStarted() {
        this.mHandler.postDelayed(this.aI, Long.parseLong(this.aB.get("postpone_impression_sec")) * 1000);
        if (Boolean.parseBoolean(this.aB.get("pview"))) {
            this.mHandler.postDelayed(this.aJ, Long.parseLong(this.aB.get("postpone_vta_sec")) * 1000);
        }
        if (d() == null || d().getOnAdOpenedCallback() == null) {
            return;
        }
        d().getOnAdOpenedCallback().adOpened();
    }

    @Override // com.appnext.ads.fullscreen.j
    public void videoEnded() {
        this.state = 2;
        this.finished = true;
        if (d() != null && d().getOnVideoEndedCallback() != null) {
            d().getOnVideoEndedCallback().videoEnded();
        }
        new Thread(new Runnable() { // from class: com.appnext.ads.fullscreen.FullscreenActivity.5
            @Override // java.lang.Runnable
            public final void run() {
                RewardedServerSidePostback rewardedServerSidePostback;
                if (!(FullscreenActivity.this.d() instanceof RewardedVideo) || (rewardedServerSidePostback = ((RewardedVideo) FullscreenActivity.this.d()).getRewardedServerSidePostback()) == null) {
                    return;
                }
                HashMap<String, String> p = rewardedServerSidePostback.p();
                p.put("placementId", FullscreenActivity.this.placementID);
                try {
                    com.appnext.core.f.a("https://admin.appnext.com/adminService.asmx/SetRewards", p);
                } catch (IOException unused) {
                }
            }
        }).start();
        Collections.shuffle(this.ads, new Random(System.nanoTime()));
        this.ads.remove(this.aD);
        this.ads.add(0, this.aD);
        d dVar = new d();
        this.state = 2;
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.ll, dVar, "fragment");
        try {
            beginTransaction.commit();
            AppnextAd appnextAd = this.aE;
            if (appnextAd != null) {
                super.b(appnextAd, this);
                report(com.appnext.ads.a.Q);
                return;
            }
            report(com.appnext.ads.a.P);
            if (Integer.parseInt(getConfig().get("clickType_b")) > new Random(System.nanoTime()).nextInt(100)) {
                installClicked(getSelectedAd());
            }
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // com.appnext.ads.fullscreen.i
    public void videoSelected(AppnextAd appnextAd) {
        this.aD = appnextAd;
        g gVar = new g();
        FragmentManager fragmentManager = getFragmentManager();
        Bundle bundle = new Bundle();
        bundle.putBoolean("showCta", d().isShowCta());
        gVar.setArguments(bundle);
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.replace(R.id.ll, gVar, "fragment");
        try {
            beginTransaction.commit();
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // com.appnext.ads.fullscreen.i
    public ArrayList<AppnextAd> getPreRollAds() {
        if (this.ads == null) {
            this.ads = b.j().f(d());
        }
        ArrayList<AppnextAd> arrayList = new ArrayList<>();
        AppnextAd a2 = a(this.ads, this.placementID, "");
        arrayList.add(a2);
        AppnextAd a3 = a(this.ads, this.placementID, a2.getBannerID());
        if (a3 != null && !a3.getBannerID().equals(arrayList.get(0).getBannerID())) {
            arrayList.add(a3);
        }
        return arrayList;
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.i, com.appnext.ads.fullscreen.j
    public void privacyClicked() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(com.appnext.core.f.g(this.aD)));
            intent.setFlags(268435456);
            startActivity(intent);
        } catch (Throwable unused) {
        }
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.j
    public void installClicked(AppnextAd appnextAd) {
        if (this.state == 1 && !isRewarded()) {
            a(this.gl, getResources().getDrawable(R.drawable.apnxt_loader));
        }
        b(appnextAd, this);
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.i, com.appnext.ads.fullscreen.j
    public void closeClicked() {
        if (this.state == 1 && !isRewarded() && Integer.parseInt(getConfig().get("clickType_a")) > new Random(System.nanoTime()).nextInt(100)) {
            installClicked(getSelectedAd());
            return;
        }
        onClose();
        finish();
    }

    @Override // com.appnext.ads.fullscreen.j
    public AppnextAd getSelectedAd() {
        return this.aD;
    }

    @Override // com.appnext.ads.fullscreen.j
    public boolean showClose() {
        return (d() instanceof FullScreenVideo) && ((FullScreenVideo) d()).isShowClose();
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.i, com.appnext.ads.fullscreen.j
    public p getConfigManager() {
        return getConfig();
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.i, com.appnext.ads.fullscreen.j
    public int getTemplate(String str) {
        if (this.aG == null) {
            this.aG = new HashMap<>();
        }
        if (!this.aG.containsKey(str)) {
            int identifier = getResources().getIdentifier("apnxt_" + com.appnext.ads.c.a(getConfig().get(str)), TtmlNode.TAG_LAYOUT, getPackageName());
            if (identifier == 0) {
                identifier = getResources().getIdentifier("apnxt_" + str.toLowerCase() + "t1", TtmlNode.TAG_LAYOUT, getPackageName());
            }
            this.aG.put(str, Integer.valueOf(identifier));
        }
        return this.aG.get(str).intValue();
    }

    @Override // com.appnext.ads.fullscreen.j
    public boolean getMute() {
        return d().getMute();
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.i, com.appnext.ads.fullscreen.j
    public void report(String str, String str2) {
        b(str, getResources().getResourceEntryName(getTemplate(str2)));
    }

    @Override // com.appnext.ads.fullscreen.h
    public ArrayList<AppnextAd> getPostRollAds() {
        return this.ads;
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.j
    public boolean isRewarded() {
        return d() instanceof RewardedVideo;
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.j
    public String getLanguage() {
        return this.aH.getLanguage();
    }

    @Override // com.appnext.ads.fullscreen.h, com.appnext.ads.fullscreen.j
    public String getCtaText() {
        String buttonText = new FullscreenAd(this.aD).getButtonText();
        AppnextAd appnextAd = this.aD;
        String str = com.appnext.core.a.b.hY;
        if (appnextAd != null && buttonText.equals("")) {
            if (isInstalled()) {
                return com.appnext.core.a.b.bp().b(this.aH.getLanguage(), com.appnext.core.a.b.hY, "Open");
            }
            return com.appnext.core.a.b.bp().b(this.aH.getLanguage(), com.appnext.core.a.b.hX, "Install");
        }
        com.appnext.core.a.b bp = com.appnext.core.a.b.bp();
        String language = this.aH.getLanguage();
        if (!isInstalled()) {
            str = com.appnext.core.a.b.hX;
        }
        return bp.b(language, str, buttonText);
    }

    @Override // com.appnext.ads.fullscreen.j
    public boolean isInstalled() {
        try {
            return com.appnext.core.f.c(this, this.aD.getAdPackage());
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.appnext.ads.fullscreen.j
    public int getCaptionTextTime() {
        return d().getRollCaptionTime();
    }

    @Override // com.appnext.ads.fullscreen.j
    public long closeDelay() {
        if (d() instanceof FullScreenVideo) {
            return ((FullScreenVideo) d()).getCloseDelay();
        }
        return 0L;
    }

    protected final AppnextAd a(ArrayList<AppnextAd> arrayList, String str, String str2) {
        Iterator<AppnextAd> it = arrayList.iterator();
        while (it.hasNext()) {
            AppnextAd next = it.next();
            if (b(next) && !a(next.getBannerID(), str) && !next.getBannerID().equals(str2)) {
                return next;
            }
        }
        com.appnext.core.j.bj().ab(str);
        Iterator<AppnextAd> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AppnextAd next2 = it2.next();
            if (b(next2) && !a(next2.getBannerID(), str)) {
                return next2;
            }
        }
        return null;
    }

    protected static boolean a(String str, String str2) {
        return com.appnext.core.j.bj().o(str, str2);
    }

    private static boolean b(AppnextAd appnextAd) {
        return (appnextAd.getVideoUrlHigh().equals("") && appnextAd.getVideoUrlHigh30Sec().equals("")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void report(String str) {
        b(str, getResources().getResourceEntryName(getTemplate(ExifInterface.LATITUDE_SOUTH + (this.state + 1))));
    }

    private void b(String str, String str2) {
        try {
            String tid = d().getTID();
            String vid = d().getVID();
            String auid = d().getAUID();
            String str3 = this.placementID;
            String sessionId = d().getSessionId();
            AppnextAd appnextAd = this.aD;
            String bannerID = appnextAd != null ? appnextAd.getBannerID() : "";
            AppnextAd appnextAd2 = this.aD;
            com.appnext.core.f.a(tid, vid, auid, str3, sessionId, str, str2, bannerID, appnextAd2 != null ? appnextAd2.getCampaignID() : "");
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Video d() {
        if (Video.currentAd != null) {
            return Video.currentAd;
        }
        return this.aH;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (d().isBackButtonCanClose()) {
            onClose();
            super.onBackPressed();
        }
    }

    @Override // com.appnext.ads.fullscreen.j
    public Uri getSelectedVideoUri() {
        String str;
        String videoUrl = b.getVideoUrl(this.aD, d().getVideoLength());
        String c2 = b.c(videoUrl);
        if (Video.getCacheVideo()) {
            str = getFilesDir().getAbsolutePath() + "/data/appnext/videos/";
        } else {
            str = getFilesDir().getAbsolutePath() + "/data/appnext/videos/tmp/vid" + d().rnd + "/";
        }
        File file = new File(str + c2);
        if (file.exists()) {
            Uri parse = Uri.parse(str + c2);
            parse.getPath();
            return parse;
        }
        Uri parse2 = Uri.parse(videoUrl);
        file.getAbsolutePath();
        return parse2;
    }
}
