.class public interface abstract Lcom/criteo/publisher/CriteoInterstitialAdListener;
.super Ljava/lang/Object;
.source "CriteoInterstitialAdListener.java"

# interfaces
.implements Lcom/criteo/publisher/k;


# virtual methods
.method public bridge synthetic onAdClicked()V
    .locals 0

    invoke-super {p0}, Lcom/criteo/publisher/k;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/criteo/publisher/k;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    return-void
.end method

.method public bridge synthetic onAdLeftApplication()V
    .locals 0

    invoke-super {p0}, Lcom/criteo/publisher/k;->onAdLeftApplication()V

    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method

.method public abstract onAdReceived(Lcom/criteo/publisher/CriteoInterstitial;)V
.end method
