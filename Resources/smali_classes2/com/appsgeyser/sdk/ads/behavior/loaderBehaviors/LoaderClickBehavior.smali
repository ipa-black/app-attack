.class public Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderClickBehavior;
.super Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;
.source "LoaderClickBehavior.java"


# instance fields
.field private final clickBehavior:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderClickBehavior;->clickBehavior:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    return-void
.end method


# virtual methods
.method public visit(Lcom/appsgeyser/sdk/ads/AdsLoader;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderClickBehavior;->clickBehavior:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->changeClickBehavior(Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;)V

    return-void
.end method
