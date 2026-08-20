.class public final Lcom/appodeal/ads/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/o1$c;,
        Lcom/appodeal/ads/o1$a;,
        Lcom/appodeal/ads/o1$b;
    }
.end annotation


# static fields
.field public static a:Lcom/appodeal/ads/o1$b;

.field public static b:Lcom/appodeal/ads/o1$a;

.field public static c:Lcom/appodeal/ads/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/k1<",
            "Lcom/appodeal/ads/r1;",
            "Lcom/appodeal/ads/p1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Lcom/appodeal/ads/o1$a;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/o1;->b:Lcom/appodeal/ads/o1$a;

    if-nez v0, :cond_1

    const-class v1, Lcom/appodeal/ads/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/o1;->b:Lcom/appodeal/ads/o1$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/o1$a;

    invoke-static {}, Lcom/appodeal/ads/o1;->b()Lcom/appodeal/ads/o1$b;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/appodeal/ads/o1$a;-><init>(Lcom/appodeal/ads/o1$b;)V

    sput-object v0, Lcom/appodeal/ads/o1;->b:Lcom/appodeal/ads/o1$a;

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

.method public static a(Landroid/app/Activity;Lcom/appodeal/ads/q;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/appodeal/ads/o1;->c:Lcom/appodeal/ads/k1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/k1;

    invoke-direct {v0}, Lcom/appodeal/ads/k1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/o1;->c:Lcom/appodeal/ads/k1;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/o1;->c:Lcom/appodeal/ads/k1;

    .line 2
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/appodeal/ads/k1;->b(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/appodeal/ads/o1$b;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/o1;->a:Lcom/appodeal/ads/o1$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/o1$b;

    invoke-direct {v0}, Lcom/appodeal/ads/o1$b;-><init>()V

    sput-object v0, Lcom/appodeal/ads/o1;->a:Lcom/appodeal/ads/o1$b;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/o1;->a:Lcom/appodeal/ads/o1$b;

    return-object v0
.end method
