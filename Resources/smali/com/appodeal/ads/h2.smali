.class public final Lcom/appodeal/ads/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/h2$d;,
        Lcom/appodeal/ads/h2$a;,
        Lcom/appodeal/ads/h2$b;,
        Lcom/appodeal/ads/h2$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/appodeal/ads/i2;

.field public static b:Lcom/appodeal/ads/h2$c;

.field public static c:Lcom/appodeal/ads/h2$b;

.field public static d:Lcom/appodeal/ads/h2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/i2;

    invoke-direct {v0}, Lcom/appodeal/ads/i2;-><init>()V

    sput-object v0, Lcom/appodeal/ads/h2;->a:Lcom/appodeal/ads/i2;

    return-void
.end method

.method public static a()Lcom/appodeal/ads/h2$b;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/h2;->c:Lcom/appodeal/ads/h2$b;

    if-nez v0, :cond_1

    const-class v1, Lcom/appodeal/ads/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/h2;->c:Lcom/appodeal/ads/h2$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/h2$b;

    invoke-static {}, Lcom/appodeal/ads/h2;->b()Lcom/appodeal/ads/h2$c;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/appodeal/ads/h2$b;-><init>(Lcom/appodeal/ads/h2$c;)V

    sput-object v0, Lcom/appodeal/ads/h2;->c:Lcom/appodeal/ads/h2$b;

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

    invoke-static {}, Lcom/appodeal/ads/h2;->c()Lcom/appodeal/ads/h2$a;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

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

    invoke-static {}, Lcom/appodeal/ads/h2;->c()Lcom/appodeal/ads/h2$a;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/appodeal/ads/x5;->a(Landroid/app/Activity;Lcom/appodeal/ads/y5;Lcom/appodeal/ads/u;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/appodeal/ads/h2$c;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/h2;->b:Lcom/appodeal/ads/h2$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/h2$c;

    invoke-direct {v0}, Lcom/appodeal/ads/h2$c;-><init>()V

    sput-object v0, Lcom/appodeal/ads/h2;->b:Lcom/appodeal/ads/h2$c;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/h2;->b:Lcom/appodeal/ads/h2$c;

    return-object v0
.end method

.method public static c()Lcom/appodeal/ads/h2$a;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/h2;->d:Lcom/appodeal/ads/h2$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/h2$a;

    invoke-direct {v0}, Lcom/appodeal/ads/h2$a;-><init>()V

    sput-object v0, Lcom/appodeal/ads/h2;->d:Lcom/appodeal/ads/h2$a;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/h2;->d:Lcom/appodeal/ads/h2$a;

    return-object v0
.end method
