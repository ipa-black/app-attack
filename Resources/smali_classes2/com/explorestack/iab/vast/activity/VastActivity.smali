.class public Lcom/explorestack/iab/vast/activity/VastActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/activity/VastActivity$Builder;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/explorestack/iab/vast/VastActivityListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public static h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/explorestack/iab/vast/VastPlaybackListener;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/explorestack/iab/measurer/VastAdMeasurer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/lang/String;


# instance fields
.field public a:Lcom/explorestack/iab/vast/VastRequest;

.field public b:Lcom/explorestack/iab/vast/activity/VastView;

.field public c:Lcom/explorestack/iab/vast/VastActivityListener;

.field public d:Z

.field public e:Z

.field public final f:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->g:Ljava/util/Map;

    const-string v0, "VastActivity"

    sput-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastActivity$a;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastActivity$a;-><init>(Lcom/explorestack/iab/vast/activity/VastActivity;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->f:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/VastActivityListener;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/explorestack/iab/vast/activity/VastActivity;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    invoke-static {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->d(Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastActivityListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastActivityListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;I)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;Z)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/explorestack/iab/vast/activity/VastActivity;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static b(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastActivityListener;)V
    .locals 2

    sget-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/VastActivityListener;
    .locals 3

    sget-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/vast/VastActivityListener;

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 1

    sget-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/VastActivityListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/explorestack/iab/vast/VastErrorListener;->onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/VastActivityListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->e:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastDismiss(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->e:Z

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getRequestedOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->applyFullscreenActivityFlags(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final b(Lcom/explorestack/iab/vast/VastRequest;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getForceOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getPreferredVideoOrientation()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/activity/VastView;->handleBackPress()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "vast_request_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/iab/vast/c;->a(Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz p1, :cond_0

    const-string v1, "isFinishedPerformed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Lcom/explorestack/iab/vast/VastRequest;

    if-nez v1, :cond_1

    const/16 p1, 0x195

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;I)V

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(Lcom/explorestack/iab/vast/VastRequest;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    return-void

    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->c(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/VastActivityListener;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->f:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/vast/activity/VastView;->setListener(Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;)V

    sget-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/vast/VastPlaybackListener;

    invoke-virtual {v2, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setPlaybackListener(Lcom/explorestack/iab/vast/VastPlaybackListener;)V

    :cond_3
    sget-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/measurer/VastAdMeasurer;

    invoke-virtual {v2, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setAdMeasurer(Lcom/explorestack/iab/measurer/VastAdMeasurer;)V

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "isLoadPerformed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->d:Z

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Lcom/explorestack/iab/vast/VastRequest;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->display(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/activity/VastView;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/activity/VastView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/activity/VastView;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->d(Lcom/explorestack/iab/vast/VastRequest;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->h:Ljava/lang/ref/WeakReference;

    sput-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->i:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->d:Z

    const-string v1, "isLoadPerformed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->e:Z

    const-string v1, "isFinishedPerformed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
