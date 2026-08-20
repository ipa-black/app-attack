.class public Lcom/explorestack/iab/mraid/MraidActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/explorestack/iab/mraid/MraidInterstitial;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lcom/explorestack/iab/mraid/MraidInterstitial;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/explorestack/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidType;I)Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/explorestack/iab/mraid/MraidActivity;

    invoke-static {p0, v0, p1, p2}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/explorestack/iab/mraid/MraidType;I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x800000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Lcom/explorestack/iab/mraid/MraidType;I)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/iab/mraid/MraidType;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "InterstitialId"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "InterstitialType"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 2

    sget-object v0, Lcom/explorestack/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    iget v1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/explorestack/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidInterstitial;Lcom/explorestack/iab/mraid/MraidType;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "Mraid interstitial object not provided for display"

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Context not provided for display mraid interstitial"

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->d()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p0, "Mraid type not provided for display"

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->d()V

    return-void

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    iget v0, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    invoke-static {p0, p2, v0}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidType;I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->d()V

    iget p0, p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidActivity;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->dispatchClose()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBeforeCreate(Landroid/view/Window;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBeforeShowContent()V
    .locals 0

    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->applyFullscreenActivityFlags(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidActivity;->onBeforeCreate(Landroid/view/Window;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "InterstitialId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Mraid display cache id not provided"

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    sget-object v1, Lcom/explorestack/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/mraid/MraidInterstitial;

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Mraid interstitial not found in display cache, id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "InterstitialType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/explorestack/iab/mraid/MraidType;

    if-nez p1, :cond_2

    const-string p1, "Mraid type not provided"

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->d()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->onBeforeShowContent()V

    sget-object v1, Lcom/explorestack/iab/mraid/MraidActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Z

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->c:Z

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {p1, p0, v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->a(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Error showing Mraid interstitial"

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->d()V

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->a()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidActivity;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->c()V

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidActivity;->a()V

    :cond_0
    return-void
.end method
