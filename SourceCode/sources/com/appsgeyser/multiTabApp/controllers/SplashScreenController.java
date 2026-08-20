package com.appsgeyser.multiTabApp.controllers;

import android.os.Handler;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.utils.ImageReader;
import com.google.android.exoplayer2.ExoPlayer;
import com.w_19998775.R;
import java.io.IOException;
/* loaded from: classes2.dex */
public class SplashScreenController {
    private static final int SPLASH_SCREEN_TIMEOUT = 2000;
    private MainNavigationActivity _activity;
    private ViewGroup _splashScreenView;
    private Handler _handler = new Handler();
    private Runnable showSplashScreenViewRunnable = new Runnable() { // from class: com.appsgeyser.multiTabApp.controllers.SplashScreenController.1
        @Override // java.lang.Runnable
        public void run() {
            SplashScreenController.this._activity.showSplashScreen();
        }
    };
    private Runnable hideSplashScreenViewRunnable = new Runnable() { // from class: com.appsgeyser.multiTabApp.controllers.SplashScreenController.2
        @Override // java.lang.Runnable
        public void run() {
            SplashScreenController.this._activity.showContentView();
        }
    };

    public SplashScreenController(ViewGroup viewGroup, MainNavigationActivity mainNavigationActivity) {
        this._splashScreenView = viewGroup;
        this._activity = mainNavigationActivity;
    }

    public void showSplashScreen(String str) {
        try {
            ((ImageView) this._splashScreenView.findViewById(R.id.splashScreenImage)).setImageBitmap(ImageReader.decodeFile(this._activity.getAssets().open(str), this._activity.getWindowManager().getDefaultDisplay().getWidth()));
            this._activity.runOnUiThread(this.showSplashScreenViewRunnable);
            this._handler.postDelayed(new Runnable() { // from class: com.appsgeyser.multiTabApp.controllers.SplashScreenController.3
                @Override // java.lang.Runnable
                public void run() {
                    SplashScreenController.this._activity.runOnUiThread(SplashScreenController.this.hideSplashScreenViewRunnable);
                }
            }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        } catch (IOException e2) {
            e2.printStackTrace();
            this._activity.showContentView();
        }
    }
}
