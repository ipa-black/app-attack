.class public Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"


# static fields
.field public static final JS_INTERFACE_NAME:Ljava/lang/String; = "AppsgeyserJSInterface"

.field public static final JS_PREFERENCE_NAME:Ljava/lang/String; = "JS-PREFERENCE"

.field public static final JS_PREFERENCE_PREFIX:Ljava/lang/String; = "JS-Preference-"


# instance fields
.field private _currentProgressDialog:Landroid/app/ProgressDialog;

.field private _mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field private _webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

.field private mFinalHeight:I

.field private mFinalWidth:I


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WebContentController;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 68
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    :cond_0
    return-void
.end method

.method private XmlHttpRequestDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 195
    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/inline/StringEscapeUtils;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "(\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\');"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$3;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$3;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private _scaleBitmapAndSetWallpaper(Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 315
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 316
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    .line 317
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 318
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/controllers/WebContentController;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->XmlHttpRequestDone(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->mFinalHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->mFinalWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_scaleBitmapAndSetWallpaper(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)Landroid/app/ProgressDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_currentProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$602(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_currentProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6

    .line 455
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_3

    .line 457
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 459
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 460
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 462
    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 463
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 464
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 467
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 465
    :cond_1
    :goto_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 470
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 475
    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 476
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 479
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addBookmark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 438
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/appsgeyser/multiTabApp/Factory;->getBookmarkManager(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object p3

    .line 439
    invoke-virtual {p3, p1, p2}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->addBookmark(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addToHomePage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 433
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getHomePageManager()Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->addBookmark(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearUpdateCheckers()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public downloadFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 263
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 264
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    const-string v0, ""

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p1, v0, v1}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 517
    :try_start_0
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getWidgetName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBase64FromImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 593
    new-instance v0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    const/4 v1, 0x0

    .line 595
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$14;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;)V

    return-void
.end method

.method public getBookmarks(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 491
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/Factory;->getBookmarkManager(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->getBookmarks()Landroid/database/Cursor;

    move-result-object p1

    .line 493
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBookmarks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 507
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 508
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 509
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    .line 510
    invoke-virtual {v0, p3}, Lcom/appsgeyser/multiTabApp/Factory;->getBookmarkManager(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->getBookmarks(Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p1

    .line 511
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p1, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHomePageItems()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 484
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getHomePageManager()Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->getBookmarks()Landroid/database/Cursor;

    move-result-object v0

    .line 486
    invoke-direct {p0, v0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomePageItems(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 499
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 500
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getHomePageManager()Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object v0

    .line 501
    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->getBookmarks(Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p1

    .line 502
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const-string v1, "JS-PREFERENCE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JS-Preference-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTabContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 366
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getWidgetByTabId(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 371
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getTabUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 376
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    .line 377
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getWidgetByTabId(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 381
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getWeeklyHistory(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$15;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$15;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$10;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$10;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$showRewardedVideo$0$com-appsgeyser-multiTabApp-javascriptinterface-JavascriptInterface(Ljava/lang/String;)V
    .locals 3

    .line 75
    new-instance v0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$1;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$1;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 115
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V

    return-void
.end method

.method public overrideRefreshAction(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->setPageRefreshJsCode(Ljava/lang/String;)V

    return-void
.end method

.method public playYouTubeVideo(Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/player/YouTubeStandalonePlayer;->createVideoIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/content/Intent;

    move-result-object p1

    .line 706
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public redirect(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$13;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$13;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 552
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerUpdateChecker(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public removeBookmark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 451
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appsgeyser/multiTabApp/Factory;->getBookmarkManager(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->removeBookmark(Ljava/lang/Integer;)V

    return-void
.end method

.method public removeFromHomepage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 444
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 445
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getHomePageManager()Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/storage/BookmarksManager;->removeBookmark(Ljava/lang/Integer;)V

    return-void
.end method

.method public removeHistoryAllItem()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$17;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$17;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeHistoryItem(J)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$16;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;J)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeUpdateChecker(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public saveImageFromBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p2, :cond_0

    .line 271
    const-string p2, "IMG"

    .line 273
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/utils/ImageReader;->createBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p2, p1, v0}, Lcom/appsgeyser/multiTabApp/utils/FileManager;->saveBitmapToGallery(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 277
    const-string p2, "Image saved to gallery..."

    invoke-virtual {p0, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->showInfo(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendXMLHTTPRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$2;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const-string v1, "JS-PREFERENCE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JS-Preference-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 428
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setMenuItemVisible(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    .line 410
    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setMenuItemVisible(IZ)V

    :cond_0
    return-void
.end method

.method public setScaleForPageWithSize(II)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 248
    iput p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->mFinalHeight:I

    .line 249
    iput p2, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->mFinalWidth:I

    .line 250
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    if-eqz p1, :cond_0

    .line 251
    new-instance p2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$6;

    invoke-direct {p2, p0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$6;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setUrlBarVisibility(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 696
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setUrlBarVisibility(I)V

    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_webController:Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    .line 288
    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$7;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$7;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sharePicture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 644
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 645
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 649
    const-string p1, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 650
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public shareText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object p1

    .line 579
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object p1

    const-string p2, "Share using"

    .line 581
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 580
    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showInfo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 243
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public showLoadingDialog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$9;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$9;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPdfView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$11;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPopup(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showTabs()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$12;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$12;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takeScreenShot()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 586
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 588
    invoke-static {v0}, Lcom/appsgeyser/multiTabApp/utils/WebViewScreenShooter;->takeScreenShotInBase64(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 229
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->getCustomIcons()Ljava/util/HashMap;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$5;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateIconBadge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 215
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getNavigationWidget()Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;->getCustomIcons()Ljava/util/HashMap;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    new-instance v2, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$4;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public zoomIn()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;->_mainActivity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 324
    new-instance v1, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$8;

    invoke-direct {v1, p0}, Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface$8;-><init>(Lcom/appsgeyser/multiTabApp/javascriptinterface/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
