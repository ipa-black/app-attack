.class public final Lcom/appodeal/ads/Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/Native$c;,
        Lcom/appodeal/ads/Native$a;,
        Lcom/appodeal/ads/Native$b;,
        Lcom/appodeal/ads/Native$MediaAssetType;,
        Lcom/appodeal/ads/Native$NativeAdType;
    }
.end annotation


# static fields
.field public static a:I = 0x1

.field public static b:Lcom/appodeal/ads/Native$NativeAdType;

.field public static c:Lcom/appodeal/ads/Native$MediaAssetType;

.field public static d:Ljava/lang/String;

.field public static e:Z

.field public static f:Lcom/appodeal/ads/n2;

.field public static g:Lcom/appodeal/ads/Native$b;

.field public static h:Lcom/appodeal/ads/Native$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/Native$NativeAdType;->Auto:Lcom/appodeal/ads/Native$NativeAdType;

    sput-object v0, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    sget-object v0, Lcom/appodeal/ads/Native$MediaAssetType;->ALL:Lcom/appodeal/ads/Native$MediaAssetType;

    sput-object v0, Lcom/appodeal/ads/Native;->c:Lcom/appodeal/ads/Native$MediaAssetType;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/appodeal/ads/Native;->e:Z

    return-void
.end method

.method public static a()Lcom/appodeal/ads/Native$a;
    .locals 3

    sget-object v0, Lcom/appodeal/ads/Native;->h:Lcom/appodeal/ads/Native$a;

    if-nez v0, :cond_1

    const-class v1, Lcom/appodeal/ads/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/appodeal/ads/Native;->h:Lcom/appodeal/ads/Native$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/Native$a;

    invoke-static {}, Lcom/appodeal/ads/Native;->b()Lcom/appodeal/ads/Native$b;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/appodeal/ads/Native$a;-><init>(Lcom/appodeal/ads/Native$b;)V

    sput-object v0, Lcom/appodeal/ads/Native;->h:Lcom/appodeal/ads/Native$a;

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

.method public static b()Lcom/appodeal/ads/Native$b;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/Native;->g:Lcom/appodeal/ads/Native$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/Native$b;

    invoke-direct {v0}, Lcom/appodeal/ads/Native$b;-><init>()V

    sput-object v0, Lcom/appodeal/ads/Native;->g:Lcom/appodeal/ads/Native$b;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Native;->g:Lcom/appodeal/ads/Native$b;

    return-object v0
.end method

.method public static c()Lcom/appodeal/ads/n2;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/Native;->f:Lcom/appodeal/ads/n2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appodeal/ads/n2;

    invoke-direct {v0}, Lcom/appodeal/ads/n2;-><init>()V

    sput-object v0, Lcom/appodeal/ads/Native;->f:Lcom/appodeal/ads/n2;

    :cond_0
    sget-object v0, Lcom/appodeal/ads/Native;->f:Lcom/appodeal/ads/n2;

    return-object v0
.end method
