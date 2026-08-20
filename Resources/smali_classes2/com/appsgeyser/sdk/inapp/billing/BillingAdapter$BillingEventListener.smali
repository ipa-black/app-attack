.class public interface abstract Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;
.super Ljava/lang/Object;
.source "BillingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingEventListener"
.end annotation


# virtual methods
.method public abstract onConnectionError()V
.end method

.method public abstract onProductReceiveError(Ljava/lang/String;)V
.end method

.method public abstract onProductReceiveSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appsgeyser/sdk/inapp/models/BillingProduct;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPurchaseError(ILjava/lang/String;)V
.end method

.method public abstract onPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
