.class Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;
.super Ljava/lang/Object;
.source "FastTrackAdsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeViewReadyListenerWrapper"
.end annotation


# instance fields
.field private listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;

.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$NativeViewReadyListenerWrapper;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$NativeViewReadyListener;

    return-object v0
.end method
