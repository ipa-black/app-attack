.class public Lcom/explorestack/iab/vast/activity/VastActivity$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/explorestack/iab/vast/VastRequest;

.field public b:Lcom/explorestack/iab/vast/VastActivityListener;

.field public c:Lcom/explorestack/iab/vast/VastPlaybackListener;

.field public d:Lcom/explorestack/iab/measurer/VastAdMeasurer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public display(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    if-nez v0, :cond_0

    const-string p1, "VastRequest not provided"

    invoke-static {p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/explorestack/iab/vast/c;->b(Lcom/explorestack/iab/vast/VastRequest;)V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "vast_request_id"

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->b:Lcom/explorestack/iab/vast/VastActivityListener;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v3, v2}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastActivityListener;)V

    :cond_1
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->c:Lcom/explorestack/iab/vast/VastPlaybackListener;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->c:Lcom/explorestack/iab/vast/VastPlaybackListener;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :goto_0
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->d:Lcom/explorestack/iab/measurer/VastAdMeasurer;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->d:Lcom/explorestack/iab/measurer/VastAdMeasurer;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/explorestack/iab/vast/activity/VastActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;)V

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public setAdMeasurer(Lcom/explorestack/iab/measurer/VastAdMeasurer;)Lcom/explorestack/iab/vast/activity/VastActivity$Builder;
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->d:Lcom/explorestack/iab/measurer/VastAdMeasurer;

    return-object p0
.end method

.method public setListener(Lcom/explorestack/iab/vast/VastActivityListener;)Lcom/explorestack/iab/vast/activity/VastActivity$Builder;
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->b:Lcom/explorestack/iab/vast/VastActivityListener;

    return-object p0
.end method

.method public setPlaybackListener(Lcom/explorestack/iab/vast/VastPlaybackListener;)Lcom/explorestack/iab/vast/activity/VastActivity$Builder;
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->c:Lcom/explorestack/iab/vast/VastPlaybackListener;

    return-object p0
.end method

.method public setRequest(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/activity/VastActivity$Builder;
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->a:Lcom/explorestack/iab/vast/VastRequest;

    return-object p0
.end method
