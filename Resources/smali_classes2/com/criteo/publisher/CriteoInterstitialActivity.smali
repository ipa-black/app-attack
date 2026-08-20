.class public Lcom/criteo/publisher/CriteoInterstitialActivity;
.super Landroid/app/Activity;
.source "CriteoInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/CriteoInterstitialActivity$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/os/ResultReceiver;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->a:Lcom/criteo/publisher/logging/g;

    return-void
.end method

.method private a()V
    .locals 3

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    const-string v1, "Action"

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/CriteoInterstitialActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    const-string v4, "UTF-8"

    const-string v5, "about:blank"

    const-string v1, "https://criteo.com"

    const-string v3, "text/html"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string v1, "Action"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/criteo/publisher/CriteoInterstitialActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->a()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 65
    sget v0, Lcom/criteo/publisher/R$layout;->activity_criteo_interstitial:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 66
    sget v0, Lcom/criteo/publisher/R$id;->AdLayout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    .line 74
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    .line 75
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 77
    sget v0, Lcom/criteo/publisher/R$id;->closeButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    const-string v2, "webviewdata"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v3, "resultreceiver"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    .line 83
    const-string v3, "callingactivity"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->e:Landroid/content/ComponentName;

    .line 85
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->d()V

    .line 86
    invoke-direct {p0, v2}, Lcom/criteo/publisher/CriteoInterstitialActivity;->a(Ljava/lang/String;)V

    .line 89
    :cond_0
    new-instance v1, Lcom/criteo/publisher/CriteoInterstitialActivity$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/CriteoInterstitialActivity$a;-><init>(Lcom/criteo/publisher/CriteoInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 127
    new-instance v0, Lcom/criteo/publisher/CriteoInterstitialActivity$b;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/CriteoInterstitialActivity$b;-><init>(Ljava/lang/ref/WeakReference;Lcom/criteo/publisher/CriteoInterstitialActivity$a;)V

    .line 131
    new-instance v1, Lcom/criteo/publisher/b0/a;

    iget-object v2, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->e:Landroid/content/ComponentName;

    invoke-direct {v1, v0, v2}, Lcom/criteo/publisher/b0/a;-><init>(Lcom/criteo/publisher/b0/c;Landroid/content/ComponentName;)V

    .line 136
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 59
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/v;->b(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 115
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    return-void
.end method
