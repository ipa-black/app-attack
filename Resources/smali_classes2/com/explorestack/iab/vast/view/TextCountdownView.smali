.class public Lcom/explorestack/iab/vast/view/TextCountdownView;
.super Lcom/explorestack/iab/vast/view/IabTextView;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/view/IabTextView;-><init>(Landroid/content/Context;)V

    const-string p1, "%1.0fs"

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/explorestack/iab/vast/view/IabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "%1.0fs"

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, v0, p1}, Lcom/explorestack/iab/vast/view/IabTextView;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/explorestack/iab/vast/view/IabTextView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%1.0f"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(II)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/view/TextCountdownView;->setProgress(I)V

    return-void
.end method

.method public setRemaining(I)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%1.0f"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/explorestack/iab/vast/view/IabTextView;->setStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/TextCountdownView;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method
