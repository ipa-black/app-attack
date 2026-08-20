.class public Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;
.super Ljava/lang/Object;
.source "CorrectClickStateHolder.java"


# static fields
.field private static instance:Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;


# instance fields
.field private state:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->state:I

    return-void
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;
    .locals 2

    .line 8
    sget-object v0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->instance:Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;

    if-nez v0, :cond_1

    .line 10
    const-class v1, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;

    monitor-enter v1

    .line 11
    :try_start_0
    sget-object v0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->instance:Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->instance:Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;

    .line 15
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


# virtual methods
.method allowClick()V
    .locals 1

    .line 31
    iget v0, p0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->state:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->state:I

    return-void
.end method

.method isClickAllowed()Z
    .locals 1

    .line 35
    iget v0, p0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->state:I

    return-void
.end method
