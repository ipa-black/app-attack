package com.appsgeyser.multiTabApp;

import android.app.AlertDialog;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieSyncManager;
import android.webkit.HttpAuthHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RemoteViews;
import android.widget.Toast;
import android.widget.VideoView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.NotificationCompat;
import androidx.core.app.TaskStackBuilder;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import com.appsgeyser.multiTabApp.browser.DownloadsItem;
import com.appsgeyser.multiTabApp.configuration.WebWidgetConfiguration;
import com.appsgeyser.multiTabApp.configuration.WebWidgetConfigurationManager;
import com.appsgeyser.multiTabApp.controllers.BottomMenuController;
import com.appsgeyser.multiTabApp.controllers.FirstLaunchController;
import com.appsgeyser.multiTabApp.controllers.INavigationController;
import com.appsgeyser.multiTabApp.controllers.SplashScreenController;
import com.appsgeyser.multiTabApp.controllers.TabsController;
import com.appsgeyser.multiTabApp.controllers.WebContentController;
import com.appsgeyser.multiTabApp.controllers.WidgetsController;
import com.appsgeyser.multiTabApp.media.camera.AlbumStorageController;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.appsgeyser.multiTabApp.storage.BrowsingHistoryItem;
import com.appsgeyser.multiTabApp.storage.DatabaseOpenHelper;
import com.appsgeyser.multiTabApp.ui.dialog.SimpleDialogs;
import com.appsgeyser.multiTabApp.ui.menu.MenuItemsHolder;
import com.appsgeyser.multiTabApp.ui.navigationdrawerwidget.NavigationDrawerWidget;
import com.appsgeyser.multiTabApp.ui.navigationwidget.INavigationWidget;
import com.appsgeyser.multiTabApp.ui.navigationwidget.NavigationWidget;
import com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget;
import com.appsgeyser.multiTabApp.ui.views.TabContent;
import com.appsgeyser.multiTabApp.utils.ThemeUtils;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter;
import com.appsgeyser.sdk.inapp.models.statuses.Status;
import com.appsgeyser.sdk.inapp.models.statuses.SuccessStatus;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.onesignal.OneSignalDbContract;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import rx.functions.Action1;
/* loaded from: classes2.dex */
public class MainNavigationActivity extends AppCompatActivity implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {
    private static final int ACTION_TAKE_PHOTO = 2;
    public static final String ADS_SLEEP_PARAM = "adsSleep";
    public static final String APPMODE_PARAM = "applicationMode";
    public static final String BANNER_JS_PARAM = "bannerJs";
    public static final int DOWNLOAD_START = 100;
    private static final int FILECHOOSER_RESULTCODE = 1;
    public static final int PERMISSIONS_REQUEST_ACCESS_FINE_LOCATION = 36;
    public static final int PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE = 35;
    public static final int REQUEST_CODE = 1;
    public static final int REQUEST_SELECT_FILE = 100;
    private static final int SEARCH_BAR_NOTIFICATION_ID = 120778953;
    private static volatile ApplicationState applicationState;
    private WebWidgetConfiguration _config;
    private MenuItemsHolder _menuItemsHolder;
    private INavigationController _tabsController;
    private boolean adsKeyboardShow;
    private AlbumStorageController albumStorageController;
    private boolean bannerviewPlacementBlocked;
    private LinearLayout mContentView;
    private View mCustomView;
    private WebChromeClient.CustomViewCallback mCustomViewCallback;
    private FrameLayout mCustomViewContainer;
    private FirebaseAnalytics mFirebaseAnalytics;
    private FrameLayout mFullScreenBannerView;
    private ViewGroup mSplashScreenView;
    private ValueCallback<Uri> mUploadMessage;
    private ValueCallback<Uri[]> mUploadMessages;
    private VideoView mVideo;
    private View mVideoProgressView;
    private NavigationDrawerWidget navigationDrawerWidget;
    private boolean onCreateBeforeAds;
    private ValueCallback<Integer> permissionCallback;
    public ValueCallback<Uri[]> uploadMessage;
    private String urlFromIntentToLoad;
    static final FrameLayout.LayoutParams COVER_SCREEN_GRAVITY_CENTER = new FrameLayout.LayoutParams(-1, -1, 17);
    private static boolean _active = false;
    public boolean isThemeChangingInProgress = false;
    public boolean startOneAudienceSdkPermission = false;
    public boolean startCuebiqSdkPermission = false;
    public Long timeStart = null;
    BroadcastReceiver onNotificationClick = new BroadcastReceiver() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MainNavigationActivity.this.startActivity(new Intent(context, DownloadsListActivity.class));
        }
    };
    BroadcastReceiver onComplete = new BroadcastReceiver() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long longExtra = intent.getLongExtra("extra_download_id", -1L);
            SQLiteDatabase writableDatabase = new DatabaseOpenHelper(MainNavigationActivity.this).getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            DownloadManager.Query query = new DownloadManager.Query();
            query.setFilterById(longExtra);
            Cursor query2 = ((DownloadManager) MainNavigationActivity.this.getSystemService("download")).query(query);
            if (query2.moveToFirst()) {
                int i = query2.getInt(query2.getColumnIndex("status"));
                String string = query2.getString(query2.getColumnIndex("local_uri"));
                String absolutePath = string != null ? new File(Uri.parse(string).getPath()).getAbsolutePath() : null;
                int i2 = query2.getInt(query2.getColumnIndex(IronSourceConstants.EVENTS_ERROR_REASON));
                if (i == 8) {
                    contentValues.put("status", DownloadsItem.Status.Ok.toString());
                    contentValues.put("file_path", absolutePath);
                    contentValues.put("date", Long.valueOf(System.currentTimeMillis()));
                    writableDatabase.update("downloadsList", contentValues, "id_d = " + longExtra, null);
                } else if (i == 16) {
                    contentValues.put("status", DownloadsItem.Status.Fail.toString());
                    contentValues.put("description", Integer.valueOf(i2));
                    contentValues.put("date", Long.valueOf(System.currentTimeMillis()));
                    writableDatabase.update("downloadsList", contentValues, "id_d = " + longExtra, null);
                }
            }
            query2.close();
            Intent intent2 = new Intent();
            intent2.putExtra(SessionDescription.ATTR_TYPE, 101);
            intent2.setAction(DownloadsListActivity.DOWNLOAD_LIST_MSG);
            MainNavigationActivity.this.sendBroadcast(intent2);
            writableDatabase.close();
        }
    };
    private ApplicationMode currentMode = ApplicationMode.COMMON;
    private boolean isOptionDownloadsList = false;
    BroadcastReceiver activityReceiver = new BroadcastReceiver() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            try {
                if (intent.getIntExtra(SessionDescription.ATTR_TYPE, 0) == 100) {
                    if (MainNavigationActivity.this.isOptionDownloadsList) {
                        Snackbar.make(MainNavigationActivity.this.findViewById(com.w_19998775.R.id.frame_layout), (int) com.w_19998775.R.string.snackbar_downloads, 0).setAction(com.w_19998775.R.string.view, new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.3.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                MainNavigationActivity.this.startActivity(new Intent(context, DownloadsListActivity.class));
                            }
                        }).show();
                    } else {
                        Toast.makeText(context, (int) com.w_19998775.R.string.snackbar_downloads, 0).show();
                    }
                }
            } catch (Exception e2) {
                Log.e("activityReceiver", "" + e2);
            }
        }
    };
    private boolean isNotificationDialogShow = false;
    private final Handler loadUrlFromIntentHandler = new Handler();
    private final Runnable loadUrlFromIntentRunnable = new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.4
        @Override // java.lang.Runnable
        public void run() {
            if (MainNavigationActivity.this.urlFromIntentToLoad == null || MainNavigationActivity.this.urlFromIntentToLoad.length() <= 0) {
                return;
            }
            WebContentController selectedTab = MainNavigationActivity.this._tabsController.getSelectedTab();
            if (selectedTab == null) {
                MainNavigationActivity.this.loadUrlFromIntentHandler.postDelayed(this, 500L);
                return;
            }
            WebView webView = selectedTab.getWebView();
            if (webView != null) {
                webView.stopLoading();
                webView.loadUrl(MainNavigationActivity.this.urlFromIntentToLoad);
            }
        }
    };

    /* loaded from: classes2.dex */
    public enum ApplicationMode {
        UNKNOWN,
        COMMON,
        CUSTOM
    }

    /* loaded from: classes2.dex */
    public enum ApplicationState {
        STARTED,
        EXITING
    }

    private boolean _isMenuItemId(int i) {
        return i == com.w_19998775.R.id.webapp_exit || i == com.w_19998775.R.id.webapp_refresh || i == com.w_19998775.R.id.webapp_disable_ads || i == com.w_19998775.R.id.webapp_about || i == com.w_19998775.R.id.webapp_share || i == com.w_19998775.R.id.webapp_back || i == com.w_19998775.R.id.webapp_forward || i == com.w_19998775.R.id.webapp_request_desktop || i == com.w_19998775.R.id.webapp_add_to_home || i == com.w_19998775.R.id.webapp_home || i == com.w_19998775.R.id.webapp_downloads_list || i == com.w_19998775.R.id.webapp_settings || i == com.w_19998775.R.id.webapp_theming;
    }

    private void handleUploadMessage(int i, int i2, Intent intent) {
    }

    private void handleUploadMessages(int i, int i2, Intent intent) {
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return false;
    }

    public static ApplicationState getApplicationState() {
        return applicationState;
    }

    public void setApplicationState(ApplicationState applicationState2) {
        applicationState = applicationState2;
    }

    public static boolean isIntentAvailable(Context context, String str) {
        return context.getPackageManager().queryIntentActivities(new Intent(str), 65536).size() > 0;
    }

    public static boolean isActive() {
        return _active;
    }

    public void setPermissionCallback(ValueCallback<Integer> valueCallback) {
        this.permissionCallback = valueCallback;
    }

    public void setMStartupScreenViewContainer(FrameLayout frameLayout) {
        this.mFullScreenBannerView = frameLayout;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i;
        super.onCreate(null);
        this.mFirebaseAnalytics = FirebaseAnalytics.getInstance(this);
        FirebaseApp.initializeApp(this);
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
        ThemeUtils.setCurrentThemeWithActionBar(this);
        Factory.getInstance().Init(this);
        applicationState = ApplicationState.STARTED;
        try {
            this._config = WebWidgetConfigurationManager.getInstance(this).loadConfiguration(this);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        loadPreviousApplicationMode();
        setContentView(com.w_19998775.R.layout.main);
        initAppsgeyserSDK();
        ThemeUtils.initializeAppTheme(this, this._config);
        initToolBar();
        this.mContentView = (LinearLayout) findViewById(com.w_19998775.R.id.contentFrame);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(com.w_19998775.R.id.adView);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mContentView.getLayoutParams();
        Factory.getInstance().setNavigationController(new TabsController());
        if (this._config.getTabsPosition() == WebWidgetConfiguration.TabsPositions.BOTTOM) {
            layoutParams2.addRule(3, com.w_19998775.R.id.adView);
            this.mContentView.setLayoutParams(layoutParams2);
            i = com.w_19998775.R.layout.tabs_panel_bottom;
        } else if (this._config.getTabsPosition() == WebWidgetConfiguration.TabsPositions.DRAWER) {
            layoutParams.addRule(12);
            layoutParams.addRule(15);
            layoutParams.addRule(14);
            relativeLayout.setLayoutParams(layoutParams);
            layoutParams2.addRule(2, com.w_19998775.R.id.adView);
            this.mContentView.setLayoutParams(layoutParams2);
            i = com.w_19998775.R.layout.tabs_panel_drawer;
        } else if (this._config.getTabsPosition() == WebWidgetConfiguration.TabsPositions.BOTTOM_MENU) {
            layoutParams2.addRule(3, com.w_19998775.R.id.adView);
            this.mContentView.setLayoutParams(layoutParams2);
            Factory.getInstance().setNavigationController(new BottomMenuController());
            i = com.w_19998775.R.layout.bottom_menu;
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(15);
            layoutParams.addRule(14);
            relativeLayout.setLayoutParams(layoutParams);
            layoutParams2.addRule(2, com.w_19998775.R.id.adView);
            this.mContentView.setLayoutParams(layoutParams2);
            i = com.w_19998775.R.layout.tabs_panel;
        }
        getLayoutInflater().inflate(i, (ViewGroup) this.mContentView, true);
        _postApplyAppTheme(this._config);
        initDrawer();
        this.mContentView.setKeepScreenOn(this._config.getPreventFromSleep());
        this.mCustomViewContainer = (FrameLayout) findViewById(com.w_19998775.R.id.customFrame);
        this.mFullScreenBannerView = (FrameLayout) findViewById(com.w_19998775.R.id.fullScreenBannerContainer);
        this.mSplashScreenView = (ViewGroup) findViewById(com.w_19998775.R.id.splashScreenView);
        SplashScreenController splashScreenController = new SplashScreenController(this.mSplashScreenView, this);
        if (this._config.isSplashScreenEnabled()) {
            splashScreenController.showSplashScreen(this._config.getSplashScreenImage());
        } else {
            showContentView();
        }
        this.albumStorageController = new AlbumStorageController(this._config.getWidgetName());
        boolean z = PreferenceManager.getDefaultSharedPreferences(this).getBoolean(SettingsActivity.KEY_QUICK_SEARCH, true);
        if (z && getConfig().getShowSearchNotice() && getConfig().getUrlOverlayState() == WebWidgetConfiguration.UrlBarStates.ENABLED) {
            createNotice();
        }
        if (z && getIntent().getBooleanExtra("focus", false)) {
            this.adsKeyboardShow = false;
        }
        _initAppContent();
        if (this.timeStart == null) {
            this.timeStart = Long.valueOf(System.currentTimeMillis());
        }
        IntentFilter intentFilter = new IntentFilter(DownloadsListActivity.DOWNLOAD_LIST_MSG);
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.onComplete, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), 2);
            registerReceiver(this.activityReceiver, intentFilter, 2);
            registerReceiver(this.onNotificationClick, new IntentFilter("android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"), 2);
            return;
        }
        registerReceiver(this.onComplete, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
        registerReceiver(this.activityReceiver, intentFilter);
        registerReceiver(this.onNotificationClick, new IntentFilter("android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"));
    }

    private void initAppsgeyserSDK() {
        AppsgeyserSDK.setAfterConsentRequestCompletedListener(new InternalEntryPoint.AfterConsentRequestListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity$$ExternalSyntheticLambda2
            @Override // com.appsgeyser.sdk.InternalEntryPoint.AfterConsentRequestListener
            public final void onConsentRequestCompleted() {
                MainNavigationActivity.this.m153x9978ebcc();
            }
        });
        AppsgeyserSDK.takeOff(this, getResources().getString(com.w_19998775.R.string.wid), getString(com.w_19998775.R.string.app_metrica_on_start_event), getString(com.w_19998775.R.string.template_version));
        AppsgeyserSDK.getFastTrackAdsController().setFullscreenListener(new AnonymousClass5());
        AppsgeyserSDK.getUpdateManager().checkForUpdate(this, findViewById(com.w_19998775.R.id.frame_layout));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initAppsgeyserSDK$0$com-appsgeyser-multiTabApp-MainNavigationActivity  reason: not valid java name */
    public /* synthetic */ void m153x9978ebcc() {
        AppsgeyserSDK.launchAccessActivity(this, com.w_19998775.R.drawable.icon);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.multiTabApp.MainNavigationActivity$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass5 implements FastTrackBaseAdapter.FullscreenListener {
        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter.FullscreenListener
        public void onRequest() {
        }

        AnonymousClass5() {
        }

        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter.FullscreenListener
        public void onShow() {
            MainNavigationActivity.this._tabsController.isTabsControllerReady(new INavigationController.OnTabsControllerReady() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.5.1
                @Override // com.appsgeyser.multiTabApp.controllers.INavigationController.OnTabsControllerReady
                public void tabsControllerReady(boolean z) {
                    MainNavigationActivity.this.runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.5.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MainNavigationActivity.this._tabsController.onPause();
                        }
                    });
                }
            });
            MainNavigationActivity.this.runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.5.2
                @Override // java.lang.Runnable
                public void run() {
                    MainNavigationActivity.this._tabsController.firstBannerWasShown();
                }
            });
        }

        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter.FullscreenListener
        public void onClose() {
            MainNavigationActivity.this.runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.5.3
                @Override // java.lang.Runnable
                public void run() {
                    MainNavigationActivity.this._tabsController.onResume();
                }
            });
        }

        @Override // com.appsgeyser.sdk.ads.fastTrack.adapters.FastTrackBaseAdapter.FullscreenListener
        public void onFailedToShow() {
            MainNavigationActivity.this.runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.5.4
                @Override // java.lang.Runnable
                public void run() {
                    MainNavigationActivity.this._tabsController.onResume();
                }
            });
        }
    }

    private void initDrawer() {
        if (this._config.getTabsPosition() == WebWidgetConfiguration.TabsPositions.DRAWER && this._config.getApplicationTheme() == WebWidgetConfiguration.ApplicationThemes.ACTION_BAR) {
            this.navigationDrawerWidget = new NavigationDrawerWidget(this, true, false, true);
            showNavigationDrawerWidget();
        } else if (this._config.getTabsPosition() == WebWidgetConfiguration.TabsPositions.DRAWER && this._config.getApplicationTheme() == WebWidgetConfiguration.ApplicationThemes.SLIDER) {
            this.navigationDrawerWidget = new NavigationDrawerWidget(this, true, false, false);
            showNavigationDrawerWidget();
        } else if (this._config.getApplicationTheme() == WebWidgetConfiguration.ApplicationThemes.SLIDER) {
            this.navigationDrawerWidget = new NavigationDrawerWidget(this, false, true, false);
            showNavigationDrawerWidget();
        }
    }

    private void initToolBar() {
        if (this._config.getTabsPosition() == WebWidgetConfiguration.TabsPositions.DRAWER || this._config.getApplicationTheme() != WebWidgetConfiguration.ApplicationThemes.ACTION_BAR) {
            return;
        }
        findViewById(com.w_19998775.R.id.main_toolbar).setVisibility(0);
        setSupportActionBar((Toolbar) findViewById(com.w_19998775.R.id.main_toolbar));
    }

    public void createNotice() {
        NotificationCompat.Builder ongoing = new NotificationCompat.Builder(this).setSmallIcon(com.w_19998775.R.drawable.ic_search_white_24dp).setContent(new RemoteViews(getPackageName(), (int) com.w_19998775.R.layout.search_notice)).setOngoing(true);
        Intent intent = new Intent(this, MainNavigationActivity.class);
        intent.putExtra("focus", true);
        TaskStackBuilder create = TaskStackBuilder.create(this);
        create.addParentStack(MainNavigationActivity.class);
        create.addNextIntent(intent);
        ongoing.setContentIntent(PendingIntent.getActivity(getApplicationContext(), (int) System.currentTimeMillis(), intent, 67108864));
        ((NotificationManager) getSystemService(OneSignalDbContract.NotificationTable.TABLE_NAME)).notify(SEARCH_BAR_NOTIFICATION_ID, ongoing.build());
    }

    public boolean getAdsKeyboardShow() {
        return this.adsKeyboardShow;
    }

    public void setAdsKeyboardShow(boolean z) {
        this.adsKeyboardShow = z;
    }

    public void deleteNotice() {
        ((NotificationManager) getSystemService(OneSignalDbContract.NotificationTable.TABLE_NAME)).cancel(SEARCH_BAR_NOTIFICATION_ID);
    }

    private void _postApplyAppTheme(WebWidgetConfiguration webWidgetConfiguration) {
        if (webWidgetConfiguration.getApplicationTheme() == WebWidgetConfiguration.ApplicationThemes.SLIDER || this._config.getTabsPosition() == WebWidgetConfiguration.TabsPositions.DRAWER) {
            return;
        }
        removeNavigationDrawerWidget();
        freezeAllDrawers();
    }

    private void _initAppContent() {
        INavigationController tabsController = Factory.getInstance().getTabsController();
        this._tabsController = tabsController;
        tabsController.initWithTabs(Factory.getInstance().getWidgetsController());
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    public void showCloseAppDialog() {
        SimpleDialogs.createConfirmDialog(null, getResources().getString(com.w_19998775.R.string.appExitCaption), this, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainNavigationActivity.this.closeNavigationDrawerWidget();
                ApplicationState unused = MainNavigationActivity.applicationState = ApplicationState.EXITING;
                MainNavigationActivity.this.finish();
            }
        }, null).show();
    }

    public void showMessage(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage(str);
        builder.setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.create().show();
    }

    public void showPausedContentInfo() {
        if (this._tabsController == null) {
            this._tabsController = Factory.getInstance().getTabsController();
        }
        WidgetsController widgetsController = Factory.getInstance().getWidgetsController();
        widgetsController.removeAll();
        widgetsController.addWidget(WidgetEntity.createDefaultWidget(WidgetEntity.DefaultWidgetType.PAUSED));
        this._tabsController.initWithTabs(widgetsController);
    }

    public void setApplicationMode(ApplicationMode applicationMode) {
        if (applicationMode == ApplicationMode.UNKNOWN || this.currentMode == applicationMode) {
            return;
        }
        getSharedPreferences(Constants.PREFS_NAME, 0).edit().putInt(APPMODE_PARAM, this.currentMode.ordinal()).apply();
        this.currentMode = applicationMode;
    }

    public void loadPreviousApplicationMode() {
        int i = getSharedPreferences(Constants.PREFS_NAME, 0).getInt(APPMODE_PARAM, ApplicationMode.COMMON.ordinal());
        if (ApplicationMode.COMMON.ordinal() == i) {
            this.currentMode = ApplicationMode.COMMON;
        } else if (ApplicationMode.CUSTOM.ordinal() == i) {
            this.currentMode = ApplicationMode.CUSTOM;
        }
    }

    public void openFileChooser(ValueCallback<Uri> valueCallback, String str) {
        this.mUploadMessage = valueCallback;
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.addCategory("android.intent.category.OPENABLE");
        if (str.length() == 0) {
            str = "*/*";
        }
        intent.setType(str);
        startActivityForResult(Intent.createChooser(intent, "File Chooser"), 1);
    }

    public boolean openFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        ValueCallback<Uri[]> valueCallback2 = this.mUploadMessages;
        if (valueCallback2 != null) {
            valueCallback2.onReceiveValue(null);
            this.mUploadMessages = null;
        }
        this.mUploadMessages = valueCallback;
        Intent createIntent = fileChooserParams.createIntent();
        createIntent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        createIntent.addCategory("android.intent.category.OPENABLE");
        createIntent.setType("*/*");
        try {
            startActivityForResult(createIntent, 100);
            return true;
        } catch (ActivityNotFoundException unused) {
            this.mUploadMessages = null;
            Toast.makeText(getApplicationContext(), "Cannot Open File Chooser", 1).show();
            return false;
        }
    }

    public void checkDrawOverlayPermission() {
        final SharedPreferences sharedPreferences = getSharedPreferences(Constants.PREFS_NAME, 0);
        if (sharedPreferences.getBoolean("never_show", false) || this.isNotificationDialogShow) {
            return;
        }
        this.isNotificationDialogShow = true;
        if (Settings.canDrawOverlays(getApplicationContext())) {
            return;
        }
        new Handler().postDelayed(new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AlertDialog showNoticeDialog = SimpleDialogs.showNoticeDialog(MainNavigationActivity.this.getString(com.w_19998775.R.string.permission), MainNavigationActivity.this.getString(com.w_19998775.R.string.allow_show_permission), MainNavigationActivity.this, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.8.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            SharedPreferences.Editor edit = sharedPreferences.edit();
                            edit.putBoolean("never_show", true);
                            edit.apply();
                            dialogInterface.cancel();
                        }
                    }, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.8.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.cancel();
                        }
                    }, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.8.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            MainNavigationActivity.this.startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + MainNavigationActivity.this.getPackageName())), 1);
                            dialogInterface.cancel();
                        }
                    });
                    showNoticeDialog.setCancelable(false);
                    showNoticeDialog.show();
                } catch (Exception e2) {
                    Log.e("Exception", e2.toString());
                }
            }
        }, 10000 - (Long.valueOf(System.currentTimeMillis()).longValue() - this.timeStart.longValue()));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        Uri[] uriArr;
        Uri[] uriArr2;
        if (i == 100) {
            if (this.mUploadMessages == null || intent == null) {
                return;
            }
            String dataString = intent.getDataString();
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                uriArr2 = new Uri[clipData.getItemCount()];
                for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                    uriArr2[i3] = clipData.getItemAt(i3).getUri();
                }
            } else {
                uriArr2 = null;
            }
            if (dataString != null) {
                uriArr2 = new Uri[]{Uri.parse(dataString)};
            }
            this.mUploadMessages.onReceiveValue(uriArr2);
            this.mUploadMessages = null;
        } else if (i == 1) {
            if (this.mUploadMessage != null) {
                this.mUploadMessage.onReceiveValue((intent == null || i2 != -1) ? null : intent.getData());
                this.mUploadMessage = null;
            } else if (this.mUploadMessages != null && intent != null) {
                String dataString2 = intent.getDataString();
                ClipData clipData2 = intent.getClipData();
                if (clipData2 != null) {
                    uriArr = new Uri[clipData2.getItemCount()];
                    for (int i4 = 0; i4 < clipData2.getItemCount(); i4++) {
                        uriArr[i4] = clipData2.getItemAt(i4).getUri();
                    }
                } else {
                    uriArr = null;
                }
                if (dataString2 != null) {
                    uriArr = new Uri[]{Uri.parse(dataString2)};
                }
                this.mUploadMessages.onReceiveValue(uriArr);
                this.mUploadMessages = null;
            }
        } else {
            if (i == 8) {
                return;
            }
            Toast.makeText(getApplicationContext(), (int) com.w_19998775.R.string.failed_upload_file, 1).show();
        }
    }

    private void dispatchTakePictureIntent(int i) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (i == 2) {
            try {
                File upPhotoFile = this.albumStorageController.setUpPhotoFile();
                this.albumStorageController.setCurrentPhotoPath(upPhotoFile.getAbsolutePath());
                intent.putExtra("output", Uri.fromFile(upPhotoFile));
            } catch (IOException e2) {
                e2.printStackTrace();
                this.albumStorageController.setCurrentPhotoPath(null);
            }
        }
        startActivityForResult(intent, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        AppsgeyserSDK.onPause(this);
        this._tabsController.isTabsControllerReady(new INavigationController.OnTabsControllerReady() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.9
            @Override // com.appsgeyser.multiTabApp.controllers.INavigationController.OnTabsControllerReady
            public void tabsControllerReady(boolean z) {
                if (z) {
                    MainNavigationActivity.this._tabsController.onPause();
                }
            }
        });
        _active = false;
        boolean inKeyguardRestrictedInputMode = ((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        if (inKeyguardRestrictedInputMode) {
            return;
        }
        pauseBrowser();
    }

    public void pauseBrowser() {
        CookieSyncManager.getInstance().stopSync();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        AppsgeyserSDK.onResume(this);
        AppsgeyserSDK.getUpdateManager().registerOnSuccessListener(BuildConfig.VERSION_CODE);
        toggleBannerviewAdsPlacement(true);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this._tabsController.isTabsControllerReady(new INavigationController.OnTabsControllerReady() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.10
            @Override // com.appsgeyser.multiTabApp.controllers.INavigationController.OnTabsControllerReady
            public void tabsControllerReady(boolean z) {
                if (z) {
                    MainNavigationActivity.this._tabsController.onResume();
                }
            }
        });
        _active = true;
        if (getIntent() != null) {
            checkReceivedIntentForDeepLinkAndHandleIt(getIntent());
            if (!this._config.getPreventFromSleep()) {
                CookieSyncManager.getInstance().startSync();
            }
            if (defaultSharedPreferences.getBoolean(SettingsActivity.KEY_QUICK_SEARCH, true) && Factory.getInstance().getNavigationWidget() != null && getIntent().getBooleanExtra("focus", false)) {
                Factory.getInstance().getTabsController().getSelectedTab().getNavigationWidget().getNawigationWidgetView().findViewById(com.w_19998775.R.id.urlTextbox).requestFocus();
                getIntent().removeExtra("focus");
            }
        }
        if (ThemeUtils.getActivityThemeName(this).equals(defaultSharedPreferences.getString(ThemeUtils.THEME_PARAM, "AppThemeDefault"))) {
            return;
        }
        finish();
        startActivity(getIntent());
        this.isThemeChangingInProgress = true;
    }

    public void blockBannerviewAdsPlacement() {
        this.bannerviewPlacementBlocked = true;
        toggleBannerviewAdsPlacement(false);
    }

    public void toggleBannerviewAdsPlacement(boolean z) {
        ViewGroup viewGroup = (ViewGroup) findViewById(com.w_19998775.R.id.adView);
        if (z) {
            if (this.bannerviewPlacementBlocked) {
                return;
            }
            AppsgeyserSDK.getFastTrackAdsController().setBannerViewContainer(viewGroup, this, "SM_main");
            return;
        }
        AppsgeyserSDK.getFastTrackAdsController().onPause();
    }

    private void checkReceivedIntentForDeepLinkAndHandleIt(Intent intent) {
        Uri data = intent.getData();
        if (data != null) {
            String findTabIdToOpenFromDeepLink = Factory.getInstance().getTabsController().findTabIdToOpenFromDeepLink(data);
            if (!TextUtils.isEmpty(findTabIdToOpenFromDeepLink)) {
                Factory.getInstance().getTabsController().swipeOnPageByTabId(findTabIdToOpenFromDeepLink);
            }
            this.urlFromIntentToLoad = data.toString();
            this.loadUrlFromIntentHandler.post(this.loadUrlFromIntentRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        if (intent != null) {
            setIntent(intent);
            checkReceivedIntentForDeepLinkAndHandleIt(intent);
        }
        AppsgeyserSDK.launchAccessActivity(this, com.w_19998775.R.drawable.icon);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AppsgeyserSDK.getUpdateManager().unregisterUpdateStatusListener();
        unregisterReceiver(this.onComplete);
        unregisterReceiver(this.activityReceiver);
        unregisterReceiver(this.onNotificationClick);
        if (this.isThemeChangingInProgress) {
            return;
        }
        System.exit(0);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (i == 4) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            NavigationDrawerWidget navigationDrawerWidget = this.navigationDrawerWidget;
            if (navigationDrawerWidget != null && navigationDrawerWidget.isOpened()) {
                closeNavigationDrawerWidget();
                return true;
            } else if (this.mCustomView != null) {
                onHideCustomView();
                return true;
            } else {
                INavigationWidget navigationWidget = Factory.getInstance().getNavigationWidget();
                if (navigationWidget != null && (navigationWidget instanceof TopNavigationWidget)) {
                    TopNavigationWidget topNavigationWidget = (TopNavigationWidget) navigationWidget;
                    if (topNavigationWidget.isSuggestionsVisible()) {
                        topNavigationWidget.hideSuggestionsView();
                        return true;
                    }
                }
                if (!this._tabsController.onBackKeyDown() && !getApplicationState().equals(ApplicationState.EXITING)) {
                    showCloseAppDialog();
                }
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (this._menuItemsHolder == null) {
            this._menuItemsHolder = new MenuItemsHolder(this._config, this.currentMode, this, menu);
        }
        if (this.navigationDrawerWidget != null && this._config.getApplicationTheme() != WebWidgetConfiguration.ApplicationThemes.ACTION_BAR) {
            this.navigationDrawerWidget.setOptions(this._menuItemsHolder.getAllItems());
        }
        try {
            this.isOptionDownloadsList = this._config.getShowDownloadList();
        } catch (Exception e2) {
            Log.e("isOptionDownloadsList", "" + e2);
        }
        return super.onCreateOptionsMenu(this._menuItemsHolder.getMenu());
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (_isMenuItemId(menuItem.getItemId())) {
            return onOptionsItemSelected(menuItem.getItemId(), menuItem);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public boolean onOptionsItemSelected(int i, MenuItem menuItem) {
        String str;
        String string;
        WebContentController webContentController;
        NavigationWidget navigationWidget = (NavigationWidget) Factory.getInstance().getNavigationWidget();
        if (i != com.w_19998775.R.id.webapp_exit && (webContentController = (WebContentController) Factory.getInstance().getWebContentController()) != null) {
            webContentController.showBanner(UserEvent.MENU_ITEM_CLICK, true);
        }
        switch (i) {
            case com.w_19998775.R.id.webapp_about /* 2131362577 */:
                AppsgeyserSDK.showAboutDialog(this);
                return true;
            case com.w_19998775.R.id.webapp_add_to_home /* 2131362578 */:
                if (navigationWidget != null) {
                    navigationWidget.onAddToStartPageClick();
                }
                return true;
            case com.w_19998775.R.id.webapp_back /* 2131362579 */:
                if (navigationWidget != null) {
                    navigationWidget.onClickBackButton();
                }
                return true;
            case com.w_19998775.R.id.webapp_disable_ads /* 2131362580 */:
                AppsgeyserSDK.launchDisableAdsDialog(this, com.w_19998775.R.color.colorPrimaryDark);
                return true;
            case com.w_19998775.R.id.webapp_downloads_list /* 2131362581 */:
                startActivity(new Intent(this, DownloadsListActivity.class));
                return true;
            case com.w_19998775.R.id.webapp_exit /* 2131362582 */:
                showCloseAppDialog();
                return true;
            case com.w_19998775.R.id.webapp_forward /* 2131362583 */:
                if (navigationWidget != null) {
                    navigationWidget.onClickForwardButton();
                }
                return true;
            case com.w_19998775.R.id.webapp_home /* 2131362584 */:
                if (navigationWidget != null) {
                    navigationWidget.onHomeButtonClick();
                }
                return true;
            case com.w_19998775.R.id.webapp_refresh /* 2131362585 */:
                if (this._tabsController.getSelectedTab().getWidgetInfo().getTabType().equals(TabContent.TabType.WEB.toString())) {
                    this._tabsController.getSelectedTab().getWebView().reload();
                }
                return true;
            case com.w_19998775.R.id.webapp_request_desktop /* 2131362586 */:
                if (navigationWidget != null && menuItem != null) {
                    navigationWidget.reloadWithChangedUserAgent(!menuItem.isChecked());
                    menuItem.setChecked(!menuItem.isChecked());
                }
                return true;
            case com.w_19998775.R.id.webapp_settings /* 2131362587 */:
                startActivity(new Intent(this, SettingsActivity.class));
                return true;
            case com.w_19998775.R.id.webapp_share /* 2131362588 */:
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                if (this._config.getShareExtraLink() != null && !this._config.getShareExtraLink().equals("")) {
                    str = this._config.getShareExtraLink();
                    string = getResources().getString(com.w_19998775.R.string.shareContentSubject);
                } else if (this._config.getUrlOverlayState() == WebWidgetConfiguration.UrlBarStates.ENABLED) {
                    str = Factory.getInstance().getTabsController().getSelectedTab().getWebView().getUrl();
                    string = getResources().getString(com.w_19998775.R.string.shareSiteSubject);
                } else {
                    str = getResources().getString(com.w_19998775.R.string.getWidgetUrl) + this._config.getApplicationId() + "?" + this._config.getAffiliateString();
                    string = getResources().getString(com.w_19998775.R.string.shareContentSubject);
                }
                intent.putExtra("android.intent.extra.TEXT", str);
                intent.putExtra("android.intent.extra.SUBJECT", string);
                startActivity(Intent.createChooser(intent, "Share using"));
                return true;
            case com.w_19998775.R.id.webapp_theming /* 2131362589 */:
                startActivity(ThemingActivity.newThemingIntent(this, this._config, null));
                return true;
            default:
                return false;
        }
    }

    public View getVideoLoadingProgressView() {
        if (this.mVideoProgressView == null) {
            this.mVideoProgressView = LayoutInflater.from(this).inflate(com.w_19998775.R.layout.video_loading_progress, (ViewGroup) null);
        }
        return this.mVideoProgressView;
    }

    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        if (this.mCustomView != null) {
            customViewCallback.onCustomViewHidden();
            return;
        }
        if (view instanceof FrameLayout) {
            FrameLayout frameLayout = (FrameLayout) view;
            if (frameLayout.getFocusedChild() instanceof VideoView) {
                VideoView videoView = (VideoView) frameLayout.getFocusedChild();
                this.mVideo = videoView;
                videoView.setOnCompletionListener(this);
                this.mVideo.setOnErrorListener(this);
            }
        }
        this.mCustomViewContainer.addView(view, COVER_SCREEN_GRAVITY_CENTER);
        this.mCustomView = view;
        this.mCustomViewCallback = customViewCallback;
        this.mContentView.setVisibility(8);
        this.mCustomViewContainer.setVisibility(0);
        this.mCustomViewContainer.bringToFront();
    }

    public void onHideCustomView() {
        if (this.mCustomView == null) {
            return;
        }
        VideoView videoView = this.mVideo;
        if (videoView != null) {
            videoView.stopPlayback();
        }
        this.mCustomView.setVisibility(8);
        this.mCustomViewContainer.removeView(this.mCustomView);
        this.mCustomView = null;
        this.mCustomViewContainer.setVisibility(8);
        this.mCustomViewCallback.onCustomViewHidden();
        this.mContentView.setVisibility(0);
    }

    public void showContentView() {
        this.mFullScreenBannerView.setVisibility(8);
        this.mContentView.setVisibility(0);
        this.mSplashScreenView.setVisibility(8);
        this.mContentView.bringToFront();
    }

    public void showFullscreenBannerView() {
        this.mContentView.setVisibility(8);
        this.mFullScreenBannerView.setVisibility(0);
        this.mSplashScreenView.setVisibility(8);
        this.mFullScreenBannerView.bringToFront();
    }

    public void showSplashScreen() {
        this.mContentView.setVisibility(8);
        this.mFullScreenBannerView.setVisibility(8);
        this.mSplashScreenView.setVisibility(0);
        this.mSplashScreenView.bringToFront();
    }

    public void showVideoView() {
        this.mContentView.setVisibility(8);
        this.mFullScreenBannerView.setVisibility(8);
        this.mSplashScreenView.setVisibility(8);
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        mediaPlayer.stop();
        onHideCustomView();
    }

    public WebWidgetConfiguration getConfig() {
        return this._config;
    }

    public void showHttpAuthentication(final WebView webView, final HttpAuthHandler httpAuthHandler, final String str, final String str2, String str3, String str4, String str5, int i) {
        if (getResources().getBoolean(com.w_19998775.R.bool.autoHttpAuthorization)) {
            String httpAccessLogin = this._config.getHttpAccessLogin();
            String httpAccessPassword = this._config.getHttpAccessPassword();
            setHttpAuthUsernamePassword(webView, str, str2, httpAccessLogin, httpAccessPassword);
            httpAuthHandler.proceed(httpAccessLogin, httpAccessPassword);
            return;
        }
        final View inflate = LayoutInflater.from(this).inflate(com.w_19998775.R.layout.http_authentication, (ViewGroup) null);
        if (str4 != null) {
            ((EditText) inflate.findViewById(com.w_19998775.R.id.username_edit)).setText(str4);
        }
        if (str5 != null) {
            ((EditText) inflate.findViewById(com.w_19998775.R.id.password_edit)).setText(str5);
        }
        AlertDialog create = new AlertDialog.Builder(this).setTitle(str3 == null ? getText(com.w_19998775.R.string.sign_in_to).toString().replace("%s", str).replace("%s2", str2) : str3).setView(inflate).setPositiveButton("Sign in", new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                String obj = ((EditText) inflate.findViewById(com.w_19998775.R.id.username_edit)).getText().toString();
                String obj2 = ((EditText) inflate.findViewById(com.w_19998775.R.id.password_edit)).getText().toString();
                MainNavigationActivity.this.setHttpAuthUsernamePassword(webView, str, str2, obj, obj2);
                httpAuthHandler.proceed(obj, obj2);
            }
        }).setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                httpAuthHandler.cancel();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.11
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                httpAuthHandler.cancel();
            }
        }).create();
        create.getWindow().setSoftInputMode(4);
        create.show();
        if (i != 0) {
            create.findViewById(i).requestFocus();
        } else {
            inflate.findViewById(com.w_19998775.R.id.username_edit).requestFocus();
        }
    }

    public void setHttpAuthUsernamePassword(WebView webView, String str, String str2, String str3, String str4) {
        if (webView != null) {
            webView.setHttpAuthUsernamePassword(str, str2, str3, str4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this._config.getApplicationTheme() == WebWidgetConfiguration.ApplicationThemes.SLIDER) {
            if (this._menuItemsHolder == null) {
                this._menuItemsHolder = new MenuItemsHolder(this._config, this);
            }
            if (this.navigationDrawerWidget != null) {
                this.navigationDrawerWidget.setOptions(this._menuItemsHolder.getAllItems());
                AppsgeyserSDK.isAboutDialogEnabled(this, new AppsgeyserSDK.OnAboutDialogEnableListener() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.14
                    @Override // com.appsgeyser.sdk.AppsgeyserSDK.OnAboutDialogEnableListener
                    public void onDialogEnableReceived(boolean z) {
                        if (z) {
                            return;
                        }
                        MainNavigationActivity.this.navigationDrawerWidget.hideMenuItem(2131362577L);
                    }
                });
                this.navigationDrawerWidget.hideMenuItem(2131362580L);
                AppsgeyserSDK.getPurchaseController().subscribeDisableAdsStatus(new Action1() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity$$ExternalSyntheticLambda0
                    @Override // rx.functions.Action1
                    public final void call(Object obj) {
                        MainNavigationActivity.this.m155x2bbddb30((Status) obj);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPostCreate$2$com-appsgeyser-multiTabApp-MainNavigationActivity  reason: not valid java name */
    public /* synthetic */ void m155x2bbddb30(final Status status) {
        runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MainNavigationActivity.this.m154xe832bd6f(status);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onPostCreate$1$com-appsgeyser-multiTabApp-MainNavigationActivity  reason: not valid java name */
    public /* synthetic */ void m154xe832bd6f(Status status) {
        if (status instanceof SuccessStatus) {
            SuccessStatus successStatus = (SuccessStatus) status;
            if (!successStatus.isFeatureActive() || successStatus.isFeaturePurchased()) {
                this.navigationDrawerWidget.hideMenuItem(2131362580L);
            } else {
                this.navigationDrawerWidget.showDisableAdsMenuItem(this);
            }
        }
    }

    public boolean isCurrentStartupAdView() {
        return this.mFullScreenBannerView.getVisibility() == 0;
    }

    public void setMenuItemVisible(final int i, final boolean z) {
        if (this._menuItemsHolder != null) {
            runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.15
                @Override // java.lang.Runnable
                public void run() {
                    MainNavigationActivity.this._menuItemsHolder.setItemVisible(i, z);
                    if (MainNavigationActivity.this.navigationDrawerWidget != null) {
                        MainNavigationActivity.this.navigationDrawerWidget.setOptions(MainNavigationActivity.this._menuItemsHolder.getAllItems());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeNavigationDrawerWidget() {
        NavigationDrawerWidget navigationDrawerWidget = this.navigationDrawerWidget;
        if (navigationDrawerWidget != null) {
            navigationDrawerWidget.close();
        }
    }

    private void freezeAllDrawers() {
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(com.w_19998775.R.id.drawer_layout);
        drawerLayout.setDrawerLockMode(1);
        drawerLayout.setDrawerLockMode(1, GravityCompat.START);
        drawerLayout.setDrawerLockMode(1, GravityCompat.END);
    }

    private void showNavigationDrawerWidget() {
        this.navigationDrawerWidget.show();
        FirstLaunchController firstLaunchController = new FirstLaunchController(this);
        if (firstLaunchController.isFirstLaunch() && this._config.getTabsPosition() == WebWidgetConfiguration.TabsPositions.DRAWER && this._config.getApplicationTheme() != WebWidgetConfiguration.ApplicationThemes.ACTION_BAR) {
            this.navigationDrawerWidget.open();
            firstLaunchController.wasTheFirstLaunch();
        }
    }

    private void removeNavigationDrawerWidget() {
        NavigationDrawerWidget navigationDrawerWidget = this.navigationDrawerWidget;
        if (navigationDrawerWidget != null) {
            navigationDrawerWidget.remove();
        }
    }

    public void setUrlBarVisibility(final int i) {
        runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.MainNavigationActivity.16
            @Override // java.lang.Runnable
            public void run() {
                INavigationWidget navigationWidget = Factory.getInstance().getNavigationWidget();
                if (navigationWidget != null) {
                    if (i == 0) {
                        ((NavigationWidget) navigationWidget).showAnimated();
                    } else {
                        ((NavigationWidget) navigationWidget).hideAnimated();
                    }
                }
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        ValueCallback<Integer> valueCallback;
        if (i == 4) {
            if (iArr.length <= 0 || iArr[0] == 0) {
                return;
            }
            Toast.makeText(this, getString(com.w_19998775.R.string.something_went_wrong), 0).show();
        } else if (i == 35 && (valueCallback = this.permissionCallback) != null) {
            valueCallback.onReceiveValue(Integer.valueOf(iArr[0]));
            this.permissionCallback = null;
        }
    }

    public ArrayList<BrowsingHistoryItem> getWeeklyHistory() {
        ArrayList<BrowsingHistoryItem> arrayList = new ArrayList<>();
        INavigationWidget navigationWidget = Factory.getInstance().getNavigationWidget();
        return (navigationWidget == null || !(navigationWidget instanceof NavigationWidget)) ? arrayList : ((NavigationWidget) navigationWidget).getWeeklyHistory();
    }

    public int removeHistoryItem(long j) {
        INavigationWidget navigationWidget = Factory.getInstance().getNavigationWidget();
        if (navigationWidget == null || !(navigationWidget instanceof NavigationWidget)) {
            return -1;
        }
        return ((NavigationWidget) navigationWidget).removeHistoryItem(j);
    }

    public int removeHistoryAllItem() {
        INavigationWidget navigationWidget = Factory.getInstance().getNavigationWidget();
        if (navigationWidget == null || !(navigationWidget instanceof NavigationWidget)) {
            return -1;
        }
        return ((NavigationWidget) navigationWidget).removeHistoryAllItem();
    }

    public boolean getStartOneAudienceSdkPermission() {
        return this.startOneAudienceSdkPermission;
    }

    public void setStartOneAudienceSdkPermission(boolean z) {
        this.startOneAudienceSdkPermission = z;
    }

    public boolean getStartCuebiqSdkPermission() {
        return this.startCuebiqSdkPermission;
    }

    public void setStartCuebiqSdkPermission(boolean z) {
        this.startCuebiqSdkPermission = z;
    }

    /* loaded from: classes2.dex */
    public enum UserEvent {
        TOUCH("onTouch"),
        MENU_ITEM_CLICK("onMenuItemClick"),
        TAB_CHANGED("onTabChanged"),
        WEB_PAGES_CHANGED("onWebPageChanged"),
        PDF_EVENT("onPdfEvent");
        
        private String placementTag;

        UserEvent(String str) {
            this.placementTag = str;
        }

        public String getPlacementTag() {
            return this.placementTag;
        }
    }
}
