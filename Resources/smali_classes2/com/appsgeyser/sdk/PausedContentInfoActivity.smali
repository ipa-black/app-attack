.class public Lcom/appsgeyser/sdk/PausedContentInfoActivity;
.super Landroid/app/Activity;
.source "PausedContentInfoActivity.java"


# static fields
.field private static final CUSTOM_HTML_ABOUT_KEY:Ljava/lang/String; = "CustomHtmlAboutKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static startPausedContentInfoActivity(Landroid/content/Context;Z)V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appsgeyser/sdk/PausedContentInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v1, "CustomHtmlAboutKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 36
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 37
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-appsgeyser-sdk-PausedContentInfoActivity(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CustomHtmlAboutKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/appsgeyser/sdk/R$layout;->appsgeysersdk_paused_content_activity:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->setContentView(I)V

    .line 47
    const-string p1, "PausedContentInfo"

    const-string v0, "created pausedActivity"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget p1, Lcom/appsgeyser/sdk/R$id;->webView:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 50
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CustomHtmlAboutKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://www.appsgeyser.com/branding/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://www.appsgeyser.com/paused/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v0, :cond_1

    .line 56
    sget v4, Lcom/appsgeyser/sdk/R$id;->close_screen:I

    invoke-virtual {p0, v4}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    new-instance v5, Lcom/appsgeyser/sdk/PausedContentInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/appsgeyser/sdk/PausedContentInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/PausedContentInfoActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    new-instance v2, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/appsgeyser/sdk/PausedContentInfoActivity$1;-><init>(Lcom/appsgeyser/sdk/PausedContentInfoActivity;ZLjava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const/16 v0, 0x8

    .line 105
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 106
    sget p1, Lcom/appsgeyser/sdk/R$id;->ban_view:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 107
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
