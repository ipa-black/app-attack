.class public Lcom/appnext/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/e$b;,
        Lcom/appnext/core/e$a;
    }
.end annotation


# static fields
.field private static gA:Lcom/appnext/core/e; = null

.field private static final go:J = 0x1f40L

.field private static final gp:J = 0x3a98L

.field private static final gq:Ljava/lang/String; = "com.android.vending"

.field private static final gr:Ljava/lang/String; = "market://"

.field private static final gs:Ljava/lang/String; = "https://play.google.com/store"


# instance fields
.field private context:Landroid/content/Context;

.field private gt:Landroid/webkit/WebView;

.field private gu:Landroid/webkit/WebView;

.field private gv:Lcom/appnext/core/e$a;

.field private gw:Ljava/lang/Runnable;

.field private gx:Ljava/util/List;

.field private final gy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private gz:I

.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    .line 107
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/appnext/core/e;->handler:Landroid/os/Handler;

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1234
    iput p1, p0, Lcom/appnext/core/e;->gz:I

    .line 112
    new-instance p1, Lcom/appnext/core/e$1;

    invoke-direct {p1, p0}, Lcom/appnext/core/e$1;-><init>(Lcom/appnext/core/e;)V

    iput-object p1, p0, Lcom/appnext/core/e;->gv:Lcom/appnext/core/e$a;

    .line 168
    new-instance p1, Lcom/appnext/core/e$2;

    invoke-direct {p1, p0}, Lcom/appnext/core/e$2;-><init>(Lcom/appnext/core/e;)V

    iput-object p1, p0, Lcom/appnext/core/e;->gw:Ljava/lang/Runnable;

    return-void
.end method

.method private R(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private S(Ljava/lang/String;)V
    .locals 4

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 256
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    iget-object p1, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 261
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.vending"

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 265
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 269
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x200000

    .line 270
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 271
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 273
    iget-object p1, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private T(Ljava/lang/String;)V
    .locals 2

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 282
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    iget-object p1, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static U(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/appnext/core/e;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/appnext/core/e;->gu:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/appnext/core/e;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 3

    .line 507
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 508
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 509
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 510
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private a(Lcom/appnext/core/e$b;)V
    .locals 4

    .line 309
    :try_start_0
    iget-object v0, p1, Lcom/appnext/core/e$b;->gK:Ljava/lang/String;

    .line 310
    iget-object v0, p1, Lcom/appnext/core/e$b;->gK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p1, Lcom/appnext/core/e$b;->gK:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/appnext/core/e;->openMarket(Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/core/e$3;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/e$3;-><init>(Lcom/appnext/core/e;Lcom/appnext/core/e$b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/appnext/core/e;->bc()V

    .line 327
    iget-object v0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    .line 329
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 334
    iget-object v0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    new-instance v1, Lcom/appnext/core/e$4;

    invoke-direct {v1, p0}, Lcom/appnext/core/e$4;-><init>(Lcom/appnext/core/e;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 439
    iget-object v0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    invoke-static {v1}, Lcom/appnext/core/e;->U(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appnext/core/e;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/e;->gx:Ljava/util/List;

    .line 449
    iget-object v0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 450
    iget-object v0, p1, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/appnext/core/e;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appnext/core/e;->gw:Ljava/lang/Runnable;

    iget-object v2, p1, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    const-string v3, "&ox=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x3a98

    goto :goto_0

    :cond_2
    iget-wide v2, p1, Lcom/appnext/core/e$b;->gN:J

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 456
    :catchall_0
    iget-object v0, p0, Lcom/appnext/core/e;->gv:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_3

    .line 457
    iget-object p1, p1, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->error(Ljava/lang/String;)V

    .line 459
    :cond_3
    invoke-direct {p0}, Lcom/appnext/core/e;->bb()V

    return-void
.end method

.method static synthetic a(Lcom/appnext/core/e;I)V
    .locals 0

    const/4 p1, 0x0

    .line 5234
    iput p1, p0, Lcom/appnext/core/e;->gz:I

    return-void
.end method

.method static synthetic a(Lcom/appnext/core/e;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/appnext/core/e;->openMarket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/appnext/core/e;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/appnext/core/e;->U(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/appnext/core/e;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/appnext/core/e;->bb()V

    return-void
.end method

.method private bb()V
    .locals 7

    const/4 v0, 0x0

    .line 4234
    iput v0, p0, Lcom/appnext/core/e;->gz:I

    .line 223
    iget-object v1, p0, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/core/e$b;

    iget-object v1, v1, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/core/e$b;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/appnext/core/e$b;->gL:Lcom/appnext/core/e$a;

    .line 227
    iget-object v1, p0, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 229
    invoke-virtual/range {v1 .. v6}, Lcom/appnext/core/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;)V

    return-void
.end method

.method private bc()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/appnext/core/e;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/appnext/core/e;)Landroid/webkit/WebView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appnext/core/e;->gu:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic d(Lcom/appnext/core/e;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/appnext/core/e;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/appnext/core/e;->bc()V

    return-void
.end method

.method static synthetic f(Lcom/appnext/core/e;)Lcom/appnext/core/e$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appnext/core/e;->gv:Lcom/appnext/core/e$a;

    return-object p0
.end method

.method static synthetic g(Lcom/appnext/core/e;)Landroid/webkit/WebView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appnext/core/e;->gt:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Lcom/appnext/core/e;
    .locals 2

    .line 93
    sget-object v0, Lcom/appnext/core/e;->gA:Lcom/appnext/core/e;

    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/appnext/core/e;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/appnext/core/e;->gA:Lcom/appnext/core/e;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/appnext/core/e;

    invoke-direct {v1, p0}, Lcom/appnext/core/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/core/e;->gA:Lcom/appnext/core/e;

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 101
    :cond_1
    :goto_0
    sget-object p0, Lcom/appnext/core/e;->gA:Lcom/appnext/core/e;

    return-object p0
.end method

.method private openMarket(Ljava/lang/String;)V
    .locals 6

    .line 288
    const-string v0, "com.android.vending"

    :try_start_0
    const-string v1, "market://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x10000000

    const-string v3, "android.intent.action.VIEW"

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "https://play.google.com/store"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/appnext/core/e;->R(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4255
    new-instance v1, Landroid/content/Intent;

    .line 4256
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4258
    iget-object v3, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 4259
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4260
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 4261
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4262
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4264
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4265
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x200000

    .line 4270
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 4271
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4272
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4273
    iget-object v0, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4281
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4282
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4283
    iget-object v1, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 294
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/appnext/core/e;->gv:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_4

    .line 295
    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->onMarket(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-void

    .line 300
    :catchall_0
    iget-object v0, p0, Lcom/appnext/core/e;->gv:Lcom/appnext/core/e$a;

    if-eqz v0, :cond_5

    .line 301
    invoke-interface {v0, p1}, Lcom/appnext/core/e$a;->error(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private setState(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/appnext/core/e;->gz:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;)V
    .locals 8

    const-wide/16 v6, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 181
    invoke-virtual/range {v0 .. v7}, Lcom/appnext/core/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;J)V
    .locals 13

    move-object v9, p0

    move-object/from16 v4, p3

    .line 187
    iget-object v0, v9, Lcom/appnext/core/e;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    if-eqz v4, :cond_5

    .line 190
    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/core/e$b;

    .line 191
    iget-object v1, v1, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 195
    :cond_2
    const-string v0, "&ox=0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v11, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    new-instance v12, Lcom/appnext/core/e$b;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/appnext/core/e$b;-><init>(Lcom/appnext/core/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;J)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2234
    :cond_3
    iput v10, v9, Lcom/appnext/core/e;->gz:I

    .line 201
    iget-object v1, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/core/e$b;

    iget-object v1, v1, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 202
    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/e$b;

    iget-object v0, v0, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    .line 203
    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/e$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appnext/core/e$b;->gL:Lcom/appnext/core/e$a;

    .line 204
    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 207
    :cond_4
    iget-object v11, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    new-instance v12, Lcom/appnext/core/e$b;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/appnext/core/e$b;-><init>(Lcom/appnext/core/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/e$a;J)V

    invoke-virtual {v11, v10, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 211
    :cond_5
    :goto_0
    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, v9, Lcom/appnext/core/e;->gz:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 3234
    iput v1, v9, Lcom/appnext/core/e;->gz:I

    .line 213
    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/e$b;

    iget-object v0, v0, Lcom/appnext/core/e$b;->gM:Ljava/lang/String;

    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/e$b;

    iget-object v0, v0, Lcom/appnext/core/e$b;->aQ:Ljava/lang/String;

    .line 214
    iget-object v0, v9, Lcom/appnext/core/e;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/e$b;

    invoke-direct {p0, v0}, Lcom/appnext/core/e;->a(Lcom/appnext/core/e$b;)V

    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 488
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/appnext/core/e$7;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/appnext/core/e$7;-><init>(Lcom/appnext/core/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 503
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final b(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/appnext/core/e;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/appnext/core/e;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 524
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 526
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 527
    iget-object v1, p0, Lcom/appnext/core/e;->gx:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 529
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lcom/appnext/core/AppnextAd;)V
    .locals 2

    .line 464
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/core/e$5;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/e$5;-><init>(Lcom/appnext/core/e;Lcom/appnext/core/AppnextAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final f(Lcom/appnext/core/AppnextAd;)V
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/core/e$6;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/e$6;-><init>(Lcom/appnext/core/e;Lcom/appnext/core/AppnextAd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 484
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
