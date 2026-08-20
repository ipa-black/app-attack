.class public final Lcom/appodeal/ads/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/q1$c;
    }
.end annotation


# static fields
.field public static volatile f:Lcom/appodeal/ads/q1;


# instance fields
.field public a:Lcom/appodeal/ads/InterstitialCallbacks;

.field public b:Z

.field public c:Z

.field public final d:Lcom/appodeal/ads/q1$a;

.field public final e:Lcom/appodeal/ads/q1$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/q1;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/q1;->c:Z

    new-instance v0, Lcom/appodeal/ads/q1$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/q1$a;-><init>(Lcom/appodeal/ads/q1;)V

    iput-object v0, p0, Lcom/appodeal/ads/q1;->d:Lcom/appodeal/ads/q1$a;

    new-instance v1, Lcom/appodeal/ads/q1$b;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/q1$b;-><init>(Lcom/appodeal/ads/q1;)V

    iput-object v1, p0, Lcom/appodeal/ads/q1;->e:Lcom/appodeal/ads/q1$b;

    invoke-static {v0, v1}, Lcom/appodeal/ads/q1$c;->a(Lcom/appodeal/ads/q1$c;Lcom/appodeal/ads/q1$c;)V

    invoke-static {v1, v0}, Lcom/appodeal/ads/q1$c;->a(Lcom/appodeal/ads/q1$c;Lcom/appodeal/ads/q1$c;)V

    return-void
.end method

.method public static a()Lcom/appodeal/ads/q1;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/q1;->f:Lcom/appodeal/ads/q1;

    if-nez v0, :cond_1

    const-class v0, Lcom/appodeal/ads/q1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appodeal/ads/q1;->f:Lcom/appodeal/ads/q1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appodeal/ads/q1;

    invoke-direct {v1}, Lcom/appodeal/ads/q1;-><init>()V

    sput-object v1, Lcom/appodeal/ads/q1;->f:Lcom/appodeal/ads/q1;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/appodeal/ads/q1;->f:Lcom/appodeal/ads/q1;

    return-object v0
.end method

.method public static synthetic a(Lcom/appodeal/ads/q1;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/q1;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/q1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appodeal/ads/q1;->b:Z

    return p0
.end method

.method public static synthetic b(Lcom/appodeal/ads/q1;)Lcom/appodeal/ads/InterstitialCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/q1;->a:Lcom/appodeal/ads/InterstitialCallbacks;

    return-object p0
.end method

.method public static synthetic c(Lcom/appodeal/ads/q1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appodeal/ads/q1;->c:Z

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/q1;->c:Z

    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/q1;->b:Z

    iget-object v0, p0, Lcom/appodeal/ads/q1;->d:Lcom/appodeal/ads/q1$a;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/appodeal/ads/q1$c;->c:Z

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/q1;->e:Lcom/appodeal/ads/q1$b;

    .line 3
    iput-boolean v1, v0, Lcom/appodeal/ads/q1$c;->c:Z

    return-void
.end method
