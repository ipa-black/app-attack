package com.appsgeyser.multiTabApp.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.TypedValue;
import com.appsgeyser.multiTabApp.configuration.WebWidgetConfiguration;
import com.w_19998775.R;
/* loaded from: classes2.dex */
public class ThemeUtils {
    public static final String THEME_PARAM = "AppThemeName";

    private ThemeUtils() {
    }

    public static String getActivityThemeName(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.themeName, typedValue, true);
        return typedValue.string.toString();
    }

    public static void setCurrentThemeWithActionBar(Activity activity) {
        String string = PreferenceManager.getDefaultSharedPreferences(activity).getString(THEME_PARAM, "AppThemeDefault");
        if (string.contains("NoActionBar")) {
            string = string.replace("NoActionBar", "");
        }
        activity.setTheme(ThemePreset.findByName(string).themeId);
    }

    public static void setCurrentThemeWithNoActionBar(Activity activity) {
        String string = PreferenceManager.getDefaultSharedPreferences(activity).getString(THEME_PARAM, "AppThemeDefaultNoActionBar");
        if (!string.contains("NoActionBar")) {
            string = string + "NoActionBar";
        }
        activity.setTheme(ThemePreset.findByNoActionBarName(string).themeNoActionBarId);
    }

    public static void initializeAppTheme(Activity activity, WebWidgetConfiguration webWidgetConfiguration) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(activity);
        if (webWidgetConfiguration.getApplicationTheme() == WebWidgetConfiguration.ApplicationThemes.ACTION_BAR) {
            String string = defaultSharedPreferences.getString(THEME_PARAM, "AppThemeDefaultNoActionBar");
            if (string.equals("AppThemeDefaultNoActionBar")) {
                SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                edit.putString(THEME_PARAM, "AppThemeDefaultNoActionBar");
                edit.apply();
            }
            if (getActivityThemeName(activity).equals(string)) {
                return;
            }
            activity.setTheme(ThemePreset.findByNoActionBarName(string).themeNoActionBarId);
        }
    }
}
