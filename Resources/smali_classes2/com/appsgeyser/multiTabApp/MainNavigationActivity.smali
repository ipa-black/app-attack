.class public Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;,
        Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;,
        Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;
    }
.end annotation


# static fields
.field private static final ACTION_TAKE_PHOTO:I = 0x2

.field public static final ADS_SLEEP_PARAM:Ljava/lang/String; = "adsSleep"

.field public static final APPMODE_PARAM:Ljava/lang/String; = "applicationMode"

.field public static final BANNER_JS_PARAM:Ljava/lang/String; = "bannerJs"

.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field public static final DOWNLOAD_START:I = 0x64

.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field public static final PERMISSIONS_REQUEST_ACCESS_FINE_LOCATION:I = 0x24

.field public static final PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x23

.field public static final REQUEST_CODE:I = 0x1

.field public static final REQUEST_SELECT_FILE:I = 0x64

.field private static final SEARCH_BAR_NOTIFICATION_ID:I = 0x732f0c9

.field private static _active:Z

.field private static volatile applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;


# instance fields
.field private _config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

.field private _menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

.field private _tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

.field activityReceiver:Landroid/content/BroadcastReceiver;

.field private adsKeyboardShow:Z

.field private albumStorageController:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

.field private bannerviewPlacementBlocked:Z

.field private currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field private isNotificationDialogShow:Z

.field private isOptionDownloadsList:Z

.field public isThemeChangingInProgress:Z

.field private final loadUrlFromIntentHandler:Landroid/os/Handler;

.field private final loadUrlFromIntentRunnable:Ljava/lang/Runnable;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private mFullScreenBannerView:Landroid/widget/FrameLayout;

.field private mSplashScreenView:Landroid/view/ViewGroup;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessages:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideo:Landroid/widget/VideoView;

.field private mVideoProgressView:Landroid/view/View;

.field private navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

.field onComplete:Landroid/content/BroadcastReceiver;

.field private onCreateBeforeAds:Z

.field onNotificationClick:Landroid/content/BroadcastReceiver;

.field private permissionCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public startCuebiqSdkPermission:Z

.field public startOneAudienceSdkPermission:Z

.field public timeStart:Ljava/lang/Long;

.field public uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private urlFromIntentToLoad:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 120
    sput-boolean v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_active:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isThemeChangingInProgress:Z

    .line 122
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startOneAudienceSdkPermission:Z

    .line 123
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startCuebiqSdkPermission:Z

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->timeStart:Ljava/lang/Long;

    .line 128
    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$1;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onNotificationClick:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$2;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onComplete:Landroid/content/BroadcastReceiver;

    .line 199
    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    .line 200
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isOptionDownloadsList:Z

    .line 201
    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isNotificationDialogShow:Z

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentHandler:Landroid/os/Handler;

    .line 251
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$4;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private _initAppContent()V
    .locals 2

    .line 549
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    .line 551
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->initWithTabs(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V

    .line 553
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 554
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method private _isMenuItemId(I)Z
    .locals 1

    const v0, 0x7f0a0316

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0319

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0314

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0311

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a031c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0313

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0317

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a031a

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0312

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0318

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0315

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a031b

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a031d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private _postApplyAppTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V
    .locals 1

    .line 541
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 542
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-eq p1, v0, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->removeNavigationDrawerWidget()V

    .line 544
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->freezeAllDrawers()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isOptionDownloadsList:Z

    return p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->urlFromIntentToLoad:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/controllers/INavigationController;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Landroid/os/Handler;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->closeNavigationDrawerWidget()V

    return-void
.end method

.method static synthetic access$502(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;
    .locals 0

    .line 103
    sput-object p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    return-object p0
.end method

.method private checkReceivedIntentForDeepLinkAndHandleIt(Landroid/content/Intent;)V
    .locals 2

    .line 901
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 903
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->findTabIdToOpenFromDeepLink(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->swipeOnPageByTabId(Ljava/lang/String;)V

    .line 907
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->urlFromIntentToLoad:Ljava/lang/String;

    .line 908
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadUrlFromIntentRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private closeNavigationDrawerWidget()V
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    if-eqz v0, :cond_0

    .line 1394
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->close()V

    :cond_0
    return-void
.end method

.method private dispatchTakePictureIntent(I)V
    .locals 4

    .line 781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->albumStorageController:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->setUpPhotoFile()Ljava/io/File;

    move-result-object v1

    .line 789
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->albumStorageController:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->setCurrentPhotoPath(Ljava/lang/String;)V

    .line 790
    const-string v2, "output"

    .line 791
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 790
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 793
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 794
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->albumStorageController:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;->setCurrentPhotoPath(Ljava/lang/String;)V

    .line 802
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private freezeAllDrawers()V
    .locals 3

    const v0, 0x7f0a0145

    .line 1399
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    .line 1400
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    const v2, 0x800003

    .line 1401
    invoke-virtual {v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    const v2, 0x800005

    .line 1402
    invoke-virtual {v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public static getApplicationState()Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;
    .locals 1

    .line 271
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    return-object v0
.end method

.method private handleUploadMessage(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private handleUploadMessages(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private initAppsgeyserSDK()V
    .locals 3

    .line 428
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-static {v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->setAfterConsentRequestCompletedListener(Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;)V

    .line 432
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12006e

    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1201a9

    invoke-virtual {p0, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->takeOff(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$5;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->setFullscreenListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V

    .line 479
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getUpdateManager()Lcom/appsgeyser/sdk/utils/UpdateManager;

    move-result-object v0

    const v1, 0x7f0a0196

    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/appsgeyser/sdk/utils/UpdateManager;->checkForUpdate(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private initDrawer()V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 484
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne v0, v1, :cond_0

    .line 485
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-direct {v0, p0, v2, v3, v2}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    .line 486
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showNavigationDrawerWidget()V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 488
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne v0, v1, :cond_1

    .line 489
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-direct {v0, p0, v2, v3, v3}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    .line 490
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showNavigationDrawerWidget()V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne v0, v1, :cond_2

    .line 492
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-direct {v0, p0, v3, v2, v3}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;ZZZ)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    .line 493
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showNavigationDrawerWidget()V

    :cond_2
    :goto_0
    return-void
.end method

.method private initToolBar()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 499
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a01db

    .line 500
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 501
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 502
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method public static isActive()Z
    .locals 1

    .line 287
    sget-boolean v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_active:Z

    return v0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 281
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 283
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeNavigationDrawerWidget()V
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->remove()V

    :cond_0
    return-void
.end method

.method private showNavigationDrawerWidget()V
    .locals 3

    .line 1407
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->show()V

    .line 1409
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;-><init>(Landroid/content/Context;)V

    .line 1411
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;->isFirstLaunch()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 1412
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v1

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 1413
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object v1

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-eq v1, v2, :cond_0

    .line 1414
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->open()V

    .line 1415
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/FirstLaunchController;->wasTheFirstLaunch()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blockBannerviewAdsPlacement()V
    .locals 1

    const/4 v0, 0x1

    .line 884
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->bannerviewPlacementBlocked:Z

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->toggleBannerviewAdsPlacement(Z)V

    return-void
.end method

.method public checkDrawOverlayPermission()V
    .locals 6

    .line 655
    const-string v0, "AppsgeyserPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 658
    const-string v2, "never_show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isNotificationDialogShow:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 659
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isNotificationDialogShow:Z

    .line 660
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 662
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 663
    new-instance v3, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$8;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/content/SharedPreferences;)V

    .line 702
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->timeStart:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2710

    sub-long/2addr v4, v0

    .line 663
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public createNotice()V
    .locals 5

    .line 507
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00c3

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 508
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801d9

    .line 510
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 511
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 513
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    const-string v4, "focus"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    .line 516
    invoke-virtual {v1, v3}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    .line 517
    invoke-virtual {v1, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 518
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v3, v3

    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 520
    const-string v1, "notification"

    .line 521
    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x732f0c9

    .line 522
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public deleteNotice()V
    .locals 2

    .line 535
    const-string v0, "notification"

    .line 536
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x732f0c9

    .line 537
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public getAdsKeyboardShow()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->adsKeyboardShow:Z

    return v0
.end method

.method public getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    return-object v0
.end method

.method public getStartCuebiqSdkPermission()Z
    .locals 1

    .line 1500
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startCuebiqSdkPermission:Z

    return v0
.end method

.method public getStartOneAudienceSdkPermission()Z
    .locals 1

    .line 1492
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startOneAudienceSdkPermission:Z

    return v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .line 1170
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1171
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00e4

    const/4 v2, 0x0

    .line 1172
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideoProgressView:Landroid/view/View;

    return-object v0
.end method

.method public getWeeklyHistory()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    .line 1462
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1464
    instance-of v2, v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    if-eqz v2, :cond_0

    .line 1466
    check-cast v1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->getWeeklyHistory()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isCurrentStartupAdView()Z
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$initAppsgeyserSDK$0$com-appsgeyser-multiTabApp-MainNavigationActivity()V
    .locals 1

    .line 0
    const v0, 0x7f0801dc

    .line 429
    invoke-static {p0, v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->launchAccessActivity(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic lambda$onPostCreate$1$com-appsgeyser-multiTabApp-MainNavigationActivity(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 2

    .line 1356
    instance-of v0, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    if-eqz v0, :cond_2

    .line 1357
    check-cast p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    .line 1358
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeatureActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;->isFeaturePurchased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1361
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {p1, p0}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->showDisableAdsMenuItem(Landroid/content/Context;)V

    goto :goto_1

    .line 1359
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    const-wide/32 v0, 0x7f0a0314

    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hideMenuItem(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic lambda$onPostCreate$2$com-appsgeyser-multiTabApp-MainNavigationActivity(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V
    .locals 1

    .line 1355
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadPreviousApplicationMode()V
    .locals 3

    .line 605
    const-string v0, "AppsgeyserPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 606
    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v1

    const-string v2, "applicationMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 607
    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 608
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    goto :goto_0

    .line 609
    :cond_0
    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 610
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_5

    .line 711
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_4

    .line 718
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 721
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    new-array p3, p3, [Landroid/net/Uri;

    move v0, v1

    .line 722
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 723
    invoke-virtual {p2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 724
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p3, v2

    :cond_2
    if-eqz p1, :cond_3

    .line 728
    new-array p3, v3, [Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p3, v1

    .line 730
    :cond_3
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 731
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    :cond_4
    return-void

    :cond_5
    if-ne p1, v3, :cond_c

    .line 737
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_8

    if-eqz p3, :cond_7

    const/4 p1, -0x1

    if-eq p2, p1, :cond_6

    goto :goto_1

    .line 739
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_7
    :goto_1
    move-object p1, v2

    .line 740
    :goto_2
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 741
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_4

    .line 742
    :cond_8
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_e

    if-eqz p3, :cond_e

    .line 745
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 746
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 748
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    new-array p3, p3, [Landroid/net/Uri;

    move v0, v1

    .line 749
    :goto_3
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 750
    invoke-virtual {p2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 751
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move-object p3, v2

    :cond_a
    if-eqz p1, :cond_b

    .line 755
    new-array p3, v3, [Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p3, v1

    .line 757
    :cond_b
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 758
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    goto :goto_4

    :cond_c
    const/16 p2, 0x8

    if-ne p1, p2, :cond_d

    goto :goto_4

    .line 767
    :cond_d
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120103

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_e
    :goto_4
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1253
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1254
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onHideCustomView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 p1, 0x0

    .line 304
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 306
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    const/4 p1, 0x1

    .line 308
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 310
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->setCurrentThemeWithActionBar(Landroid/app/Activity;)V

    .line 312
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p0}, Lcom/appsgeyser/multiTabApp/Factory;->Init(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 315
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->STARTED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    .line 317
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    move-result-object v0

    .line 320
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->loadConfiguration(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->loadPreviousApplicationMode()V

    const v0, 0x7f0d007a

    .line 327
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setContentView(I)V

    .line 328
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->initAppsgeyserSDK()V

    .line 330
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-static {p0, v0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->initializeAppTheme(Landroid/app/Activity;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V

    .line 332
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->initToolBar()V

    const v0, 0x7f0a0101

    .line 334
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a004c

    .line 335
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 337
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 338
    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 340
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v4

    new-instance v5, Lcom/appsgeyser/multiTabApp/controllers/TabsController;

    invoke-direct {v5}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;-><init>()V

    invoke-virtual {v4, v5}, Lcom/appsgeyser/multiTabApp/Factory;->setNavigationController(Lcom/appsgeyser/multiTabApp/controllers/INavigationController;)V

    .line 343
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v4

    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v4, v5, :cond_0

    .line 345
    invoke-virtual {v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 346
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0d00cc

    goto :goto_1

    .line 347
    :cond_0
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v4

    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const/16 v8, 0xe

    const/16 v9, 0xf

    const/16 v10, 0xc

    if-ne v4, v5, :cond_1

    .line 349
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 350
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 351
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    invoke-virtual {v3, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 355
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0d00cd

    goto :goto_1

    .line 356
    :cond_1
    iget-object v4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v4

    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-ne v4, v5, :cond_2

    .line 358
    invoke-virtual {v3, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 359
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;

    invoke-direct {v1}, Lcom/appsgeyser/multiTabApp/controllers/BottomMenuController;-><init>()V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/Factory;->setNavigationController(Lcom/appsgeyser/multiTabApp/controllers/INavigationController;)V

    const v0, 0x7f0d004d

    goto :goto_1

    .line 363
    :cond_2
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 364
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 365
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    invoke-virtual {v3, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0d00cb

    .line 372
    :goto_1
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 374
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_postApplyAppTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V

    .line 376
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->initDrawer()V

    .line 378
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getPreventFromSleep()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    const v0, 0x7f0a010b

    .line 380
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0198

    .line 381
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a029f

    .line 382
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    .line 384
    new-instance v0, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p0}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;-><init>(Landroid/view/ViewGroup;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 386
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->isSplashScreenEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getSplashScreenImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/SplashScreenController;->showSplashScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 389
    :cond_3
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showContentView()V

    .line 392
    :goto_2
    new-instance v0, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->albumStorageController:Lcom/appsgeyser/multiTabApp/media/camera/AlbumStorageController;

    .line 395
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 396
    const-string v1, "show_quick_access_bar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 397
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowSearchNotice()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    if-ne v0, v1, :cond_4

    .line 398
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->createNotice()V

    :cond_4
    if-eqz p1, :cond_5

    .line 401
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "focus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 403
    iput-boolean v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->adsKeyboardShow:Z

    .line 408
    :cond_5
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_initAppContent()V

    .line 410
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->timeStart:Ljava/lang/Long;

    if-nez p1, :cond_6

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->timeStart:Ljava/lang/Long;

    .line 414
    :cond_6
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    if-lt v0, v1, :cond_7

    .line 416
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onComplete:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v7}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 417
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1, v7}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 418
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onNotificationClick:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v7}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_3

    .line 420
    :cond_7
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onComplete:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onNotificationClick:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 987
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;-><init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    .line 992
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-eq p1, v0, :cond_1

    .line 994
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->getAllItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 995
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->setOptions(Ljava/util/ArrayList;)V

    .line 999
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShowDownloadList()Z

    move-result p1

    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isOptionDownloadsList:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "isOptionDownloadsList"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 923
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 924
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getUpdateManager()Lcom/appsgeyser/sdk/utils/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/UpdateManager;->unregisterUpdateStatusListener()V

    .line 925
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onComplete:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 926
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 927
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onNotificationClick:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 928
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isThemeChangingInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 929
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHideCustomView()V
    .locals 3

    .line 1205
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1213
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    .line 1215
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1218
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 947
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 948
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->closeNavigationDrawerWidget()V

    return p2

    .line 952
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 953
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onHideCustomView()V

    return p2

    .line 957
    :cond_1
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    .line 958
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 960
    instance-of v0, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    if-eqz v0, :cond_2

    .line 962
    check-cast p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    .line 963
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->isSuggestionsVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 965
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->hideSuggestionsView()V

    return p2

    .line 971
    :cond_2
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->onBackKeyDown()Z

    move-result p1

    if-nez p1, :cond_3

    .line 974
    invoke-static {}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationState()Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->EXITING:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 975
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showCloseAppDialog()V

    :cond_3
    return p2

    .line 980
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 939
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 915
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setIntent(Landroid/content/Intent;)V

    .line 916
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->checkReceivedIntentForDeepLinkAndHandleIt(Landroid/content/Intent;)V

    :cond_0
    const p1, 0x7f0801dc

    .line 918
    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->launchAccessActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public onOptionsItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .line 1041
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    const v1, 0x7f0a0316

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    .line 1044
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getWebContentController()Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    if-eqz v1, :cond_0

    .line 1046
    sget-object v3, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-virtual {v1, v3, v2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->showBanner(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;Z)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1161
    :pswitch_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/ThemingActivity;->newThemingIntent(Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 1162
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 1083
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    const-string p2, "text/plain"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1088
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShareExtraLink()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f120196

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 1089
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShareExtraLink()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1090
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getShareExtraLink()Ljava/lang/String;

    move-result-object p2

    .line 1091
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1093
    :cond_1
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getUrlOverlayState()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    move-result-object p2

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    if-ne p2, v1, :cond_2

    .line 1094
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object p2

    .line 1095
    invoke-interface {p2}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 1096
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120197

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1099
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12010d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 1100
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 1101
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getAffiliateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1102
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1105
    :goto_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string p2, "Share using"

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 1155
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/appsgeyser/multiTabApp/SettingsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1156
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    :pswitch_3
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 1128
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->reloadWithChangedUserAgent(Z)V

    .line 1129
    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_3
    return v2

    .line 1057
    :pswitch_4
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1058
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {p1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_4
    return v2

    :pswitch_5
    if-eqz v0, :cond_5

    .line 1143
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onHomeButtonClick()V

    :cond_5
    return v2

    :pswitch_6
    if-eqz v0, :cond_6

    .line 1121
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onClickForwardButton()V

    :cond_6
    return v2

    .line 1053
    :pswitch_7
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showCloseAppDialog()V

    return v2

    .line 1149
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1150
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    :pswitch_9
    const p1, 0x7f060061

    .line 1062
    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->launchDisableAdsDialog(Landroidx/appcompat/app/AppCompatActivity;I)V

    return v2

    :pswitch_a
    if-eqz v0, :cond_7

    .line 1114
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onClickBackButton()V

    :cond_7
    return v2

    :pswitch_b
    if-eqz v0, :cond_8

    .line 1136
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->onAddToStartPageClick()V

    :cond_8
    return v2

    .line 1065
    :pswitch_c
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->showAboutDialog(Landroid/app/Activity;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0311
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1013
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_isMenuItemId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->onOptionsItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1017
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 807
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 808
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->onPause(Landroid/content/Context;)V

    .line 810
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$9;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$9;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-interface {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V

    const/4 v0, 0x0

    .line 819
    sput-boolean v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_active:Z

    .line 821
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 822
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 823
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->pauseBrowser()V

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1334
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1335
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationTheme()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    move-result-object p1

    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    if-ne p1, v0, :cond_1

    .line 1336
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    if-nez p1, :cond_0

    .line 1337
    new-instance p1, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-direct {p1, v0, p0}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;-><init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    .line 1340
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    if-eqz p1, :cond_1

    .line 1341
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->getAllItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 1342
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->setOptions(Ljava/util/ArrayList;)V

    .line 1344
    new-instance p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$14;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$14;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-static {p0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    .line 1353
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->navigationDrawerWidget:Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;

    const-wide/32 v0, 0x7f0a0314

    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/multiTabApp/ui/navigationdrawerwidget/NavigationDrawerWidget;->hideMenuItem(J)V

    .line 1354
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getPurchaseController()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object p1

    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->subscribeDisableAdsStatus(Lrx/functions/Action1;)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1008
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x23

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1445
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->permissionCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1

    .line 1446
    aget p2, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1447
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->permissionCallback:Landroid/webkit/ValueCallback;

    :cond_1
    return-void

    .line 1452
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-eqz p1, :cond_3

    const p1, 0x7f12019d

    .line 1453
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 840
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 841
    invoke-static {p0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->onResume(Landroid/content/Context;)V

    .line 842
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getUpdateManager()Lcom/appsgeyser/sdk/utils/UpdateManager;

    move-result-object v0

    const v1, 0x59193091

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/utils/UpdateManager;->registerOnSuccessListener(I)V

    const/4 v0, 0x1

    .line 843
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->toggleBannerviewAdsPlacement(Z)V

    .line 844
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 846
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    new-instance v3, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$10;

    invoke-direct {v3, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$10;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    invoke-interface {v2, v3}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->isTabsControllerReady(Lcom/appsgeyser/multiTabApp/controllers/INavigationController$OnTabsControllerReady;)V

    .line 855
    sput-boolean v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_active:Z

    .line 857
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 858
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->checkReceivedIntentForDeepLinkAndHandleIt(Landroid/content/Intent;)V

    .line 861
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getPreventFromSleep()Z

    move-result v2

    if-nez v2, :cond_0

    .line 862
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 865
    :cond_0
    const-string v2, "show_quick_access_bar"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "focus"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 869
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->getNawigationWidgetView()Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 870
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 875
    :cond_1
    const-string v2, "AppThemeName"

    const-string v3, "AppThemeDefault"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->getActivityThemeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 877
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->finish()V

    .line 878
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    .line 879
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->isThemeChangingInProgress:Z

    :cond_2
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1180
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1181
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 1184
    :cond_0
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1185
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1186
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/VideoView;

    if-eqz v1, :cond_1

    .line 1187
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    .line 1188
    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1189
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mVideo:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomView:Landroid/view/View;

    .line 1195
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1197
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1200
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1201
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 618
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 619
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 622
    const-string p2, "*/*"

    .line 623
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string p2, "File Chooser"

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 630
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 631
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 632
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    .line 635
    :cond_0
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    .line 637
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 638
    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 639
    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x64

    .line 642
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    .line 644
    :catch_0
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mUploadMessages:Landroid/webkit/ValueCallback;

    .line 645
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Cannot Open File Chooser"

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1
.end method

.method public pauseBrowser()V
    .locals 1

    .line 835
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method public removeHistoryAllItem()I
    .locals 2

    .line 1482
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1484
    instance-of v1, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    if-eqz v1, :cond_0

    .line 1486
    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->removeHistoryAllItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public removeHistoryItem(J)I
    .locals 2

    .line 1472
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 1473
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1475
    instance-of v1, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    if-eqz v1, :cond_0

    .line 1476
    check-cast v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->removeHistoryItem(J)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setAdsKeyboardShow(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->adsKeyboardShow:Z

    return-void
.end method

.method public setApplicationMode(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V
    .locals 3

    .line 594
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    if-eq v0, p1, :cond_0

    .line 595
    const-string v0, "AppsgeyserPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 596
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->ordinal()I

    move-result v1

    const-string v2, "applicationMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 597
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->currentMode:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    :cond_0
    return-void
.end method

.method public setApplicationState(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;)V
    .locals 0

    .line 275
    sput-object p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->applicationState:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    return-void
.end method

.method public setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1328
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMStartupScreenViewContainer(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setMenuItemVisible(IZ)V
    .locals 1

    .line 1376
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_menuItemsHolder:Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;

    if-eqz v0, :cond_0

    .line 1377
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$15;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;IZ)V

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setPermissionCallback(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->permissionCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public setStartCuebiqSdkPermission(Z)V
    .locals 0

    .line 1504
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startCuebiqSdkPermission:Z

    return-void
.end method

.method public setStartOneAudienceSdkPermission(Z)V
    .locals 0

    .line 1496
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startOneAudienceSdkPermission:Z

    return-void
.end method

.method public setUrlBarVisibility(I)V
    .locals 1

    .line 1426
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$16;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;I)V

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showCloseAppDialog()V
    .locals 3

    .line 558
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$6;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$6;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    const/4 v2, 0x0

    invoke-static {v2, v0, p0, v1, v2}, Lcom/appsgeyser/multiTabApp/ui/dialog/SimpleDialogs;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showContentView()V
    .locals 3

    .line 1222
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    return-void
.end method

.method public showFullscreenBannerView()V
    .locals 3

    .line 1230
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1233
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v9, p8

    .line 1266
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1267
    iget-object v0, v7, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getHttpAccessLogin()Ljava/lang/String;

    move-result-object v6

    .line 1268
    iget-object v0, v7, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getHttpAccessPassword()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v6

    move-object v5, v9

    .line 1269
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v8, v6, v9}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1273
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0077

    const/4 v4, 0x0

    .line 1274
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0a0303

    if-eqz v0, :cond_1

    .line 1276
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7f0a023c

    .line 1279
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-nez p5, :cond_3

    const v0, 0x7f12019b

    .line 1284
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s2"

    move-object/from16 v5, p4

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    .line 1287
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1289
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/view/View;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    const-string v0, "Sign in"

    invoke-virtual {v12, v0, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$12;

    invoke-direct {v1, p0, v8}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$12;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V

    .line 1296
    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$11;

    invoke-direct {v1, p0, v8}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$11;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V

    .line 1300
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1308
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    if-eqz v9, :cond_4

    .line 1310
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 1312
    :cond_4
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_1
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2

    .line 573
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 575
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 576
    new-instance p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$7;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$7;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    const-string v1, "ok"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 580
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 581
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showPausedContentInfo()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    if-nez v0, :cond_0

    .line 586
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    .line 587
    :cond_0
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->removeAll()V

    .line 589
    sget-object v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;->PAUSED:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;

    invoke-static {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->createDefaultWidget(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$DefaultWidgetType;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->addWidget(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V

    .line 590
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->_tabsController:Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    invoke-interface {v1, v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->initWithTabs(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V

    return-void
.end method

.method public showSplashScreen()V
    .locals 2

    .line 1237
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1240
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    return-void
.end method

.method public showVideoView()V
    .locals 2

    .line 1244
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mContentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mFullScreenBannerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public toggleBannerviewAdsPlacement(Z)V
    .locals 2

    const v0, 0x7f0a004c

    .line 889
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 891
    iget-boolean p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->bannerviewPlacementBlocked:Z

    if-nez p1, :cond_1

    .line 892
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    const-string v1, "SM_main"

    invoke-virtual {p1, v0, p0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->setBannerViewContainer(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 896
    :cond_0
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->onPause()V

    :cond_1
    :goto_0
    return-void
.end method
