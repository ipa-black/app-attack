.class public final Lcom/criteo/publisher/o;
.super Ljava/lang/Object;
.source "CriteoInterstitialExt.kt"


# direct methods
.method public static final a(Lcom/criteo/publisher/CriteoInterstitial;)Lcom/criteo/publisher/model/InterstitialAdUnit;
    .locals 1

    const-string v0, "$this$adUnit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p0, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    return-object p0
.end method
