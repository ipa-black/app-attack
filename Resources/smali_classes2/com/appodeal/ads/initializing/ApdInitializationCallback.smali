.class public interface abstract Lcom/appodeal/ads/initializing/ApdInitializationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\'\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/appodeal/ads/initializing/ApdInitializationCallback;",
        "",
        "onInitializationFinished",
        "",
        "errors",
        "",
        "Lcom/appodeal/ads/initializing/ApdInitializationError;",
        "apd_public"
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
.method public abstract onInitializationFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appodeal/ads/initializing/ApdInitializationError;",
            ">;)V"
        }
    .end annotation
.end method
