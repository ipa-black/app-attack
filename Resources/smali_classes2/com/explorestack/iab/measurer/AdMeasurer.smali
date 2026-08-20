.class public interface abstract Lcom/explorestack/iab/measurer/AdMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdView:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract onAdViewReady(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdView;)V"
        }
    .end annotation
.end method

.method public abstract registerAdContainer(Landroid/view/ViewGroup;)V
.end method

.method public abstract registerAdView(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdView;)V"
        }
    .end annotation
.end method
