.class public final Lcom/appodeal/ads/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/t0$d;,
        Lcom/appodeal/ads/t0$a;,
        Lcom/appodeal/ads/t0$b;,
        Lcom/appodeal/ads/t0$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/u0;

.field public static b:Z = true

.field public static c:Z = true

.field public static d:Lcom/appodeal/ads/t0$c;

.field public static e:Lcom/appodeal/ads/t0$b;

.field public static f:Lcom/appodeal/ads/t0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/u0;

    invoke-direct {v0}, Lcom/appodeal/ads/u0;-><init>()V

    sput-object v0, Lcom/appodeal/ads/t0;->a:Lcom/appodeal/ads/u0;

    return-void
.end method

.method public static a()Lcom/appodeal/ads/t0$b;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/t0;->e:Lcom/appodeal/ads/t0$b;

    if-nez v0, :cond_1

    const-class v1, Lcom/appodeal/ads/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/t0;->e:Lcom/appodeal/ads/t0$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/t0$b;

    invoke-static {}, Lcom/appodeal/ads/t0;->b()Lcom/appodeal/ads/t0$c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/appodeal/ads/t0$b;-><init>(Lcom/appodeal/ads/t0$c;)V

    sput-object v0, Lcom/appodeal/ads/t0;->e:Lcom/appodeal/ads/t0$b;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    .line 1
    invoke-virtual {v0, p0}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;)Lcom/appodeal/ads/x5$d;

    move-result-object p0

    const/4 v2, 0x0

    .line 2
    iput-object v2, p0, Lcom/appodeal/ads/x5$d;->a:Lcom/appodeal/ads/a;

    .line 3
    sget-object v2, Lcom/appodeal/ads/f0;->b:Lcom/appodeal/ads/f0;

    .line 4
    iput-object v2, p0, Lcom/appodeal/ads/x5$d;->b:Lcom/appodeal/ads/f0;

    .line 5
    iget-object p0, v0, Lcom/appodeal/ads/x5;->c:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/appodeal/ads/v5;

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/v5;-><init>(Lcom/appodeal/ads/x5;Lcom/appodeal/ads/a6;)V

    .line 6
    sget-object v0, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/appodeal/ads/y5;)Z
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/t0;->c()Lcom/appodeal/ads/t0$a;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/appodeal/ads/t0;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/appodeal/ads/f1;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/appodeal/ads/f1;->p(Landroid/content/Context;)F

    move-result p0

    const/high16 v0, 0x44360000    # 728.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b()Lcom/appodeal/ads/t0$c;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/t0;->d:Lcom/appodeal/ads/t0$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/t0$c;

    invoke-direct {v0}, Lcom/appodeal/ads/t0$c;-><init>()V

    sput-object v0, Lcom/appodeal/ads/t0;->d:Lcom/appodeal/ads/t0$c;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/t0;->d:Lcom/appodeal/ads/t0$c;

    return-object v0
.end method

.method public static c()Lcom/appodeal/ads/t0$a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/t0;->f:Lcom/appodeal/ads/t0$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/t0$a;

    invoke-direct {v0}, Lcom/appodeal/ads/t0$a;-><init>()V

    sput-object v0, Lcom/appodeal/ads/t0;->f:Lcom/appodeal/ads/t0$a;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/t0;->f:Lcom/appodeal/ads/t0$a;

    return-object v0
.end method
