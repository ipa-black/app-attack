.class public Lcom/explorestack/iab/utils/e;
.super Lcom/explorestack/iab/utils/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/iab/utils/g<",
        "Landroid/view/View;",
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
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    instance-of v1, v0, Lcom/explorestack/iab/vast/view/TextCountdownView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/explorestack/iab/vast/view/TextCountdownView;

    if-nez p2, :cond_0

    const-string p1, ""

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/explorestack/iab/vast/view/TextCountdownView;->setRemaining(I)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    int-to-float p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->changePercentage(FI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p2

    const-string v0, "text"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/explorestack/iab/vast/view/TextCountdownView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/TextCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public c(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "text"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defTextCountDownStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object p1

    :cond_0
    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defCountDownStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object p1
.end method
