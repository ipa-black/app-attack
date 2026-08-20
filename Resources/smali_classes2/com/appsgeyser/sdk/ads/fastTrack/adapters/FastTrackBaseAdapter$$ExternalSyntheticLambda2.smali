.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

.field public final synthetic f$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/DialogInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;->f$3:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$$ExternalSyntheticLambda2;->f$3:Landroid/content/DialogInterface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->lambda$showRewardedVideoWithDialog$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackBaseAdapter(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method
