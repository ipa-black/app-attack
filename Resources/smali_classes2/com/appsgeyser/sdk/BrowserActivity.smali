.class public Lcom/appsgeyser/sdk/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;
    }
.end annotation


# static fields
.field public static final BANNER_TYPE_FULLSCREEN:Ljava/lang/String; = "banner_type_fullscreen"

.field public static final BANNER_TYPE_SMALL:Ljava/lang/String; = "banner_type_small"

.field private static final HTML_SUBSTRING_LENGTH:I = 0x3e8

.field public static final KEY_BANNER_TYPE:Ljava/lang/String; = "banner_type"

.field public static final KEY_BROWSER_URL:Ljava/lang/String; = "browser_url"

.field public static final KEY_TIMER_DURATION:Ljava/lang/String; = "timer_duration"

.field public static final KEY_UNIQ_ID:Ljava/lang/String; = "uniqid"

.field private static final MIN_HTML_ALLOWED_LENGTH:I = 0x28

.field private static final REDIRECT_FINISH_TIMEOUT:I = 0x3e8

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isFullScreenBanner:Z

.field private mBackButton:Landroid/widget/ImageButton;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mForwardButton:Landroid/widget/ImageButton;

.field private final mHtmlCheckRunnable:Ljava/lang/Runnable;

.field private mRefreshButton:Landroid/widget/ImageButton;

.field private mTimer:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private marketOpen:Z

.field private timerDuration:J

.field private final timerStep:J

.field private uniqid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 418
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x7530

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/appsgeyser/sdk/BrowserActivity;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 56
    iput-wide v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->timerStep:J

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->timerDuration:J

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->isFullScreenBanner:Z

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->handler:Landroid/os/Handler;

    .line 270
    new-instance v0, Lcom/appsgeyser/sdk/BrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/BrowserActivity$4;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mHtmlCheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private _getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 5

    .line 517
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 519
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const/4 v1, 0x5

    .line 520
    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 521
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 523
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x11

    .line 524
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 526
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    sget-object v1, Lcom/appsgeyser/sdk/utils/Drawables;->CLOSE:Lcom/appsgeyser/sdk/utils/Drawables;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 530
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private _initBrowserView()Landroid/view/View;
    .locals 14

    .line 440
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 442
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v1, 0x1

    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 446
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 447
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x28

    invoke-direct {p0, v5}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v6

    invoke-direct {v4, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    .line 448
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 449
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v7, -0xcccccd

    .line 453
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v8, 0x0

    .line 454
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 456
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v5}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v5

    invoke-direct {v9, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    .line 457
    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 458
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x9

    .line 459
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v10, 0xb

    .line 460
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 461
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    sget-object v9, Lcom/appsgeyser/sdk/utils/Drawables;->LEFT_ARROW:Lcom/appsgeyser/sdk/utils/Drawables;

    invoke-virtual {v9, p0}, Lcom/appsgeyser/sdk/utils/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/appsgeyser/sdk/BrowserActivity;->_getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 464
    sget-object v9, Lcom/appsgeyser/sdk/utils/Drawables;->RIGHT_ARROW:Lcom/appsgeyser/sdk/utils/Drawables;

    invoke-virtual {v9, p0}, Lcom/appsgeyser/sdk/utils/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/appsgeyser/sdk/BrowserActivity;->_getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mForwardButton:Landroid/widget/ImageButton;

    .line 465
    sget-object v9, Lcom/appsgeyser/sdk/utils/Drawables;->REFRESH:Lcom/appsgeyser/sdk/utils/Drawables;

    invoke-virtual {v9, p0}, Lcom/appsgeyser/sdk/utils/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/appsgeyser/sdk/BrowserActivity;->_getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mRefreshButton:Landroid/widget/ImageButton;

    .line 466
    sget-object v9, Lcom/appsgeyser/sdk/utils/Drawables;->CLOSE:Lcom/appsgeyser/sdk/utils/Drawables;

    invoke-virtual {v9, p0}, Lcom/appsgeyser/sdk/utils/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/appsgeyser/sdk/BrowserActivity;->_getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mCloseButton:Landroid/widget/ImageButton;

    .line 468
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 470
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    .line 475
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 476
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    const/4 v10, 0x5

    invoke-direct {p0, v10}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v11

    invoke-direct {p0, v10}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v12

    invoke-direct {p0, v10}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v13

    invoke-direct {p0, v10}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v10

    invoke-virtual {v9, v11, v12, v13, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 478
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 479
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 482
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x1e

    invoke-direct {p0, v11}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v12

    invoke-direct {p0, v11}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v11

    invoke-direct {v9, v12, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 483
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 484
    iget-object v10, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 489
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    .line 490
    invoke-static {}, Lcom/appsgeyser/sdk/BrowserActivity;->generateViewId()I

    move-result v4

    .line 491
    iget-object v9, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebView;->setId(I)V

    .line 493
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 495
    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 501
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 504
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 505
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 506
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v4, -0x555556

    .line 507
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x3

    .line 508
    invoke-direct {p0, v4}, Lcom/appsgeyser/sdk/BrowserActivity;->pixelsByDp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 509
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    iget-object v3, p0, Lcom/appsgeyser/sdk/BrowserActivity;->uniqid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static _isHttpUrl(Ljava/lang/String;)Z
    .locals 1

    .line 378
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 381
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static _isMarketUrl(Ljava/lang/String;)Z
    .locals 2

    .line 369
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 373
    const-string v1, "market"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    const-string p0, "play.google.com"

    .line 374
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static _replaceHttpWithMarketUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 358
    invoke-static {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->_isMarketUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 362
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private _trimSubstring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/BrowserActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->isFullScreenBanner:Z

    return p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/BrowserActivity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/BrowserActivity;->_trimSubstring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/appsgeyser/sdk/BrowserActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->showClose()V

    return-void
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->_isHttpUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->_isMarketUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->_replaceHttpWithMarketUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/BrowserActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->marketOpen:Z

    return p0
.end method

.method static synthetic access$702(Lcom/appsgeyser/sdk/BrowserActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->marketOpen:Z

    return p1
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/BrowserActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mHtmlCheckRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private enableCookies()V
    .locals 1

    .line 329
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 330
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method public static generateViewId()I
    .locals 4

    .line 428
    :cond_0
    sget-object v0, Lcom/appsgeyser/sdk/BrowserActivity;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    .line 432
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method private initButtons()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/appsgeyser/sdk/BrowserActivity$5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/BrowserActivity$5;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/appsgeyser/sdk/BrowserActivity$6;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/BrowserActivity$6;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mForwardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/appsgeyser/sdk/BrowserActivity$7;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/BrowserActivity$7;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mRefreshButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/appsgeyser/sdk/BrowserActivity$8;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/BrowserActivity$8;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private pixelsByDp(I)I
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private showClose()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private showTimer()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mTimer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private startTimer()V
    .locals 7

    .line 400
    new-instance v6, Lcom/appsgeyser/sdk/BrowserActivity$9;

    iget-wide v2, p0, Lcom/appsgeyser/sdk/BrowserActivity;->timerDuration:J

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/appsgeyser/sdk/BrowserActivity$9;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;JJ)V

    .line 409
    invoke-virtual {v6}, Lcom/appsgeyser/sdk/BrowserActivity$9;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->enableCookies()V

    .line 99
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 100
    const-string v0, "browser_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "banner_type"

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v2, "uniqid"

    .line 105
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/sdk/BrowserActivity;->uniqid:Ljava/lang/String;

    .line 107
    const-string v2, "banner_type_fullscreen"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->isFullScreenBanner:Z

    .line 110
    const-string v1, "timer_duration"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->timerDuration:J

    const/4 p1, 0x2

    .line 113
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/BrowserActivity;->requestWindowFeature(I)Z

    .line 114
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 117
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 120
    invoke-direct {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->_initBrowserView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/BrowserActivity;->setContentView(Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 123
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/appsgeyser/sdk/BrowserActivity$DetectJSInterface;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;Lcom/appsgeyser/sdk/BrowserActivity$1;)V

    const-string v2, "HtmlViewer"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/appsgeyser/sdk/BrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/BrowserActivity$1;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 220
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/appsgeyser/sdk/BrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/BrowserActivity$2;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 230
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/appsgeyser/sdk/BrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/BrowserActivity$3;-><init>(Lcom/appsgeyser/sdk/BrowserActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 258
    invoke-direct {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->initButtons()V

    .line 259
    iget-wide v1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->timerDuration:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->showTimer()V

    .line 261
    invoke-direct {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->startTimer()V

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/appsgeyser/sdk/BrowserActivity;->showClose()V

    .line 266
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 349
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 336
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 342
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 343
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method
