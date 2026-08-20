package com.appsgeyser.multiTabApp;

import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import com.appsgeyser.multiTabApp.configuration.WebWidgetConfiguration;
import com.appsgeyser.multiTabApp.controllers.ITabContentController;
import com.appsgeyser.multiTabApp.utils.AppCompatPreferenceActivity;
import com.appsgeyser.multiTabApp.utils.ThemeUtils;
import com.appsgeyser.sdk.AppsgeyserSDK;
/* loaded from: classes2.dex */
public class SettingsActivity extends AppCompatPreferenceActivity {
    public static final String KEY_HIDE_TAB_BAR = "hide_tab_bar";
    public static final String KEY_HIDE_URL_BAR = "hide_url_bar";
    public static final String KEY_QUICK_SEARCH = "show_quick_access_bar";
    public static final String TIME_FROM = "time_from";
    public static final String TIME_TO = "time_to";
    private SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener;
    private SharedPreferences settings;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appsgeyser.multiTabApp.utils.AppCompatPreferenceActivity, android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        ThemeUtils.setCurrentThemeWithNoActionBar(this);
        super.onCreate(bundle);
        addPreferencesFromResource(com.w_19998775.R.xml.preferences);
        this.settings = PreferenceManager.getDefaultSharedPreferences(this);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        Factory.getInstance().getMainNavigationActivity().getConfig();
        final Preference findPreference = findPreference(TIME_FROM);
        final Preference findPreference2 = findPreference(TIME_TO);
        Preference findPreference3 = findPreference("notifications_category");
        final PreferenceCategory preferenceCategory = (PreferenceCategory) findPreference("about_category");
        Preference findPreference4 = findPreference(KEY_QUICK_SEARCH);
        PreferenceCategory preferenceCategory2 = (PreferenceCategory) findPreference("general_category");
        preferenceScreen.removePreference(findPreference3);
        getLayoutInflater().inflate(com.w_19998775.R.layout.settings_toolbar, (ViewGroup) findViewById(16908290));
        setSupportActionBar((Toolbar) findViewById(com.w_19998775.R.id.toolbar_preference));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setHomeButtonEnabled(true);
            getSupportActionBar().setElevation(0.0f);
        }
        int applyDimension = (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics());
        int applyDimension2 = (int) TypedValue.applyDimension(1, ((int) getResources().getDimension(com.w_19998775.R.dimen.activity_vertical_margin)) + 30, getResources().getDisplayMetrics());
        getListView().setPadding(applyDimension, applyDimension2, applyDimension, (int) TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics()));
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.appsgeyser.multiTabApp.SettingsActivity.1
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                ITabContentController webContentController;
                if ((str2.equals(SettingsActivity.KEY_HIDE_URL_BAR) || str2.equals(SettingsActivity.KEY_HIDE_TAB_BAR)) && (webContentController = Factory.getInstance().getWebContentController()) != null) {
                    webContentController.showNavigationBars();
                }
                if (str2.equals(SettingsActivity.KEY_QUICK_SEARCH)) {
                    if (SettingsActivity.this.settings.getBoolean(str2, true)) {
                        Factory.getInstance().getMainNavigationActivity().createNotice();
                    } else {
                        Factory.getInstance().getMainNavigationActivity().deleteNotice();
                    }
                }
            }
        };
        this.onSharedPreferenceChangeListener = onSharedPreferenceChangeListener;
        this.settings.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        findPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.appsgeyser.multiTabApp.SettingsActivity.2
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                findPreference.setSummary(obj.toString());
                return false;
            }
        });
        findPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.appsgeyser.multiTabApp.SettingsActivity.3
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                findPreference2.setSummary(obj.toString());
                return false;
            }
        });
        final Preference findPreference5 = findPreference("about_preference");
        findPreference5.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.appsgeyser.multiTabApp.SettingsActivity.4
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                AppsgeyserSDK.showAboutDialog(SettingsActivity.this);
                return false;
            }
        });
        AppsgeyserSDK.isAboutDialogEnabled(this, new AppsgeyserSDK.OnAboutDialogEnableListener() { // from class: com.appsgeyser.multiTabApp.SettingsActivity.5
            @Override // com.appsgeyser.sdk.AppsgeyserSDK.OnAboutDialogEnableListener
            public void onDialogEnableReceived(boolean z) {
                if (z) {
                    preferenceCategory.addPreference(findPreference5);
                } else {
                    preferenceCategory.removePreference(findPreference5);
                }
            }
        });
        try {
            str = getString(com.w_19998775.R.string.app_version, new Object[]{getPackageManager().getPackageInfo(getPackageName(), 0).versionName, com.appsgeyser.sdk.configuration.Constants.PLATFORM_VERSION});
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            str = null;
        }
        findPreference("build_version_preference").setSummary(str);
        preferenceScreen.removePreference(findPreference3);
        if (Factory.getInstance().getNavigationWidget() != null) {
            boolean z = this.settings.getBoolean(KEY_QUICK_SEARCH, true);
            if (!findPreference4.isEnabled() && z) {
                preferenceCategory2.addPreference(findPreference4);
            }
            if (Factory.getInstance().getMainNavigationActivity().getConfig().getShowSearchNotice()) {
                return;
            }
            findPreference4.setDefaultValue(false);
        } else if (Factory.getInstance().getMainNavigationActivity().getConfig().getShowSearchNotice() && Factory.getInstance().getMainNavigationActivity().getConfig().getUrlOverlayState() == WebWidgetConfiguration.UrlBarStates.ENABLED) {
        } else {
            preferenceCategory2.removePreference(findPreference4);
            if (preferenceCategory2.getPreferenceCount() == 0) {
                preferenceScreen.removePreference(preferenceCategory2);
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        AppsgeyserSDK.onResume(this);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        AppsgeyserSDK.onPause(this);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        finish();
        return true;
    }
}
