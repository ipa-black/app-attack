package com.appsgeyser.multiTabApp.controllers;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes2.dex */
public class FirstLaunchController {
    private static final String FIRST_LAUNCH_CONTROLLER = "com.appsgeyser.multiTabApp.controllers.FirstLaunchController";
    private static final String IS_FIRST_LAUNCH = "com.appsgeyser.multiTabApp.controllers.FirstLaunchController.isFirstLaunch";
    private final SharedPreferences preferences;

    public FirstLaunchController(Context context) {
        this.preferences = context.getSharedPreferences(FIRST_LAUNCH_CONTROLLER, 0);
    }

    public boolean isFirstLaunch() {
        return this.preferences.getBoolean(IS_FIRST_LAUNCH, true);
    }

    public void wasTheFirstLaunch() {
        SharedPreferences.Editor edit = this.preferences.edit();
        edit.putBoolean(IS_FIRST_LAUNCH, false);
        edit.apply();
    }
}
