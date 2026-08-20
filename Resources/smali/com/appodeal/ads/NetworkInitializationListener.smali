.class public interface abstract Lcom/appodeal/ads/NetworkInitializationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/appodeal/ads/NetworkInitializationListener;",
        "NetworkRequestParams",
        "",
        "onInitializationFailed",
        "",
        "error",
        "Lcom/appodeal/ads/networking/LoadingError;",
        "onInitializationFinished",
        "requestParams",
        "(Ljava/lang/Object;)V",
        "apd_core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V
.end method

.method public abstract onInitializationFinished(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNetworkRequestParams;)V"
        }
    .end annotation
.end method
