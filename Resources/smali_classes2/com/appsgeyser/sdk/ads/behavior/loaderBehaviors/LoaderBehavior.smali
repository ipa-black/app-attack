.class public abstract Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;
.super Ljava/lang/Object;
.source "LoaderBehavior.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract visit(Lcom/appsgeyser/sdk/ads/AdsLoader;)V
.end method

.method public visit(Lcom/appsgeyser/sdk/ads/behavior/BehaviorAcceptor;)V
    .locals 1

    .line 11
    instance-of v0, p1, Lcom/appsgeyser/sdk/ads/AdsLoader;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;->visit(Lcom/appsgeyser/sdk/ads/AdsLoader;)V

    :cond_0
    return-void
.end method
