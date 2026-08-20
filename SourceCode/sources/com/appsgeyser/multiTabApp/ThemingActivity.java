package com.appsgeyser.multiTabApp;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindString;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.appsgeyser.multiTabApp.configuration.WebWidgetConfiguration;
import com.appsgeyser.multiTabApp.ui.adapters.ThemingAdapter;
import com.appsgeyser.multiTabApp.utils.ThemePreset;
import com.appsgeyser.multiTabApp.utils.ThemeUtils;
import com.appsgeyser.sdk.AppsgeyserSDK;
/* loaded from: classes2.dex */
public class ThemingActivity extends AppCompatActivity {
    private static final String TAG_CONFIG = "configuration";
    private static final String TAG_LAYOUT_MANAGER_STATE = "layout_manager_state";
    @BindString(17039360)
    String cancelString;
    @BindString(com.w_19998775.R.string.noAvailableVideo)
    String noAvailableVideoString;
    @BindString(com.w_19998775.R.string.noInternetConnectionMessage)
    String noInternetConnectionString;
    @BindString(17039370)
    String okString;
    @BindView(com.w_19998775.R.id.theming_recycler)
    RecyclerView presetsRecycler;
    @BindString(com.w_19998775.R.string.rewardedVideoTheming)
    String rewardedVideoThemingString;
    private ThemingAdapter themingAdapter;
    private LinearLayoutManager themingLinearLayoutManager;
    @BindView(com.w_19998775.R.id.theming_toolbar)
    Toolbar toolbar;

    public static Intent newThemingIntent(Context context, WebWidgetConfiguration webWidgetConfiguration, Parcelable parcelable) {
        Intent intent = new Intent(context, ThemingActivity.class);
        intent.putExtra(TAG_CONFIG, webWidgetConfiguration);
        intent.putExtra(TAG_LAYOUT_MANAGER_STATE, parcelable);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ThemeUtils.setCurrentThemeWithNoActionBar(this);
        setContentView(com.w_19998775.R.layout.theming);
        ButterKnife.bind(this);
        this.toolbar.setTitle(com.w_19998775.R.string.theming);
        setSupportActionBar(this.toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setHomeButtonEnabled(true);
            getSupportActionBar().setElevation(0.0f);
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.themingLinearLayoutManager = linearLayoutManager;
        this.presetsRecycler.setLayoutManager(linearLayoutManager);
        ThemingAdapter themingAdapter = new ThemingAdapter(ThemePreset.values(), this, new ThemingAdapter.ViewHolder.ViewHolderRadioButtonClicks() { // from class: com.appsgeyser.multiTabApp.ThemingActivity.1
            @Override // com.appsgeyser.multiTabApp.ui.adapters.ThemingAdapter.ViewHolder.ViewHolderRadioButtonClicks
            public void onRadioButtonClicked(int i) {
                if (ThemePreset.values()[i].equals(ThemePreset.findByNoActionBarName(ThemeUtils.getActivityThemeName(ThemingActivity.this)))) {
                    return;
                }
                ThemingActivity.this.changeThemeInPrefsByAdapterPosition(i, true);
            }
        });
        this.themingAdapter = themingAdapter;
        this.presetsRecycler.setAdapter(themingAdapter);
        Parcelable parcelableExtra = getIntent().getParcelableExtra(TAG_LAYOUT_MANAGER_STATE);
        if (parcelableExtra != null) {
            this.themingLinearLayoutManager.onRestoreInstanceState(parcelableExtra);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AppsgeyserSDK.onResume(this);
        String string = PreferenceManager.getDefaultSharedPreferences(this).getString(ThemeUtils.THEME_PARAM, "AppThemeDefaultNoActionBar");
        if (!string.contains("NoActionBar")) {
            string = string + "NoActionBar";
        }
        if (ThemeUtils.getActivityThemeName(this).equals(string)) {
            return;
        }
        Intent newThemingIntent = newThemingIntent(this, (WebWidgetConfiguration) getIntent().getSerializableExtra(TAG_CONFIG), this.themingLinearLayoutManager.onSaveInstanceState());
        finish();
        startActivity(newThemingIntent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        AppsgeyserSDK.onPause(this);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        finish();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeThemeInPrefsByAdapterPosition(int i, boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this).edit();
        if (((WebWidgetConfiguration) getIntent().getSerializableExtra(TAG_CONFIG)).getApplicationTheme() == WebWidgetConfiguration.ApplicationThemes.ACTION_BAR) {
            edit.putString(ThemeUtils.THEME_PARAM, ThemePreset.values()[i].themeNoActionBarName);
        } else {
            edit.putString(ThemeUtils.THEME_PARAM, ThemePreset.values()[i].themeName);
        }
        edit.apply();
        if (z) {
            recreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        recreate();
    }
}
