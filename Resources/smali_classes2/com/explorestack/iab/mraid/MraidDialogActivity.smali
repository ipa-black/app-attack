.class public Lcom/explorestack/iab/mraid/MraidDialogActivity;
.super Lcom/explorestack/iab/mraid/MraidActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/explorestack/iab/mraid/MraidActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, Landroid/app/Activity;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "param_is_no_status_bar"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getStatusBarColor()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-string v0, "param_status_bar_color"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidType;Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p0, "Mraid interstitial object not provided for display"

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Context not provided for display mraid interstitial"

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/explorestack/iab/mraid/MraidInterstitial;->d()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "Mraid type not provided for display"

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/explorestack/iab/mraid/MraidInterstitial;->d()V

    return-void

    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    const-class v0, Lcom/explorestack/iab/mraid/MraidDialogActivity;

    iget v1, p2, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    invoke-static {p0, v0, p1, v1}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/explorestack/iab/mraid/MraidType;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/explorestack/iab/mraid/MraidDialogActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p2}, Lcom/explorestack/iab/mraid/MraidInterstitial;->d()V

    iget p0, p2, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBeforeCreate(Landroid/view/Window;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBeforeShowContent()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "param_status_bar_color"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    const-string v0, "param_is_no_status_bar"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/explorestack/iab/utils/Utils;->applyFullscreenActivityFlags(Landroid/app/Activity;Z)V

    return-void
.end method
