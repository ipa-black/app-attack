.class public Lcom/explorestack/iab/utils/f;
.super Lcom/explorestack/iab/utils/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/iab/utils/g<",
        "Lcom/explorestack/iab/vast/view/IabTextView;",
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
.method public bridge synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 0

    check-cast p2, Lcom/explorestack/iab/vast/view/IabTextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/utils/f;->a(Landroid/content/Context;Lcom/explorestack/iab/vast/view/IabTextView;Lcom/explorestack/iab/utils/IabElementStyle;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/explorestack/iab/vast/view/IabTextView;Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;)V

    invoke-virtual {p3}, Lcom/explorestack/iab/utils/IabElementStyle;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/explorestack/iab/utils/IabElementStyle;->getContent()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Learn more"

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic b(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/utils/f;->d(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/vast/view/IabTextView;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 0

    sget-object p1, Lcom/explorestack/iab/utils/Assets;->defCtaStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object p1
.end method

.method public d(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/vast/view/IabTextView;
    .locals 0

    new-instance p2, Lcom/explorestack/iab/vast/view/IabTextView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/IabTextView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
