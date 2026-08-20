.class public interface abstract Lcom/appodeal/ads/NativeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H&J\u0008\u0010\u001d\u001a\u00020\rH&J\u0008\u0010\u001e\u001a\u00020\u001fH&J\u0014\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0005R\u0014\u0010\n\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005R\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0005\u00a8\u0006\""
    }
    d2 = {
        "Lcom/appodeal/ads/NativeAd;",
        "",
        "adProvider",
        "",
        "getAdProvider",
        "()Ljava/lang/String;",
        "ageRestrictions",
        "getAgeRestrictions",
        "callToAction",
        "getCallToAction",
        "description",
        "getDescription",
        "isPrecache",
        "",
        "()Z",
        "predictedEcpm",
        "",
        "getPredictedEcpm",
        "()D",
        "rating",
        "",
        "getRating",
        "()F",
        "title",
        "getTitle",
        "canShow",
        "context",
        "Landroid/content/Context;",
        "placementName",
        "containsVideo",
        "destroy",
        "",
        "getProviderView",
        "Landroid/view/View;",
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
.method public abstract canShow(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract containsVideo()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getAdProvider()Ljava/lang/String;
.end method

.method public abstract getAgeRestrictions()Ljava/lang/String;
.end method

.method public abstract getCallToAction()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getPredictedEcpm()D
.end method

.method public abstract getProviderView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getRating()F
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isPrecache()Z
.end method
