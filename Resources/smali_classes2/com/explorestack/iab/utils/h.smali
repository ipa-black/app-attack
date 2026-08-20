.class public Lcom/explorestack/iab/utils/h;
.super Lcom/explorestack/iab/utils/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/iab/utils/g<",
        "Lcom/explorestack/iab/utils/CircularProgressBar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/g;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/utils/h;->d(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/CircularProgressBar;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 0

    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defLoadingStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object p1
.end method

.method public d(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/CircularProgressBar;
    .locals 0

    new-instance p2, Lcom/explorestack/iab/utils/CircularProgressBar;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
