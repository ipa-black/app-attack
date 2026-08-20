.class public final Lcom/appodeal/ads/utils/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a()Lcom/appodeal/ads/utils/x;
    .locals 2

    .line 1
    sget-object v0, Lcom/appodeal/ads/utils/x;->m:Lcom/appodeal/ads/utils/x;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appodeal/ads/utils/x;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appodeal/ads/utils/x;->m:Lcom/appodeal/ads/utils/x;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appodeal/ads/utils/x;

    .line 5
    invoke-direct {v1}, Lcom/appodeal/ads/utils/x;-><init>()V

    .line 6
    sput-object v1, Lcom/appodeal/ads/utils/x;->m:Lcom/appodeal/ads/utils/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method
